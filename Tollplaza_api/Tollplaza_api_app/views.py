from django.http import HttpResponse,JsonResponse
from rest_framework.views import APIView
from Tollplaza_api_app.models import *
import os
from rest_framework import permissions,authentication
from rest_framework.permissions import IsAuthenticated
from django.conf import settings
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from django.shortcuts import render_to_response,redirect
from rest_framework.decorators import detail_route, list_route
from utils.response_builders import get_error_json,get_response_json
from rest_framework.authtoken.models import Token
from rest_framework.permissions import IsAuthenticated,IsAuthenticatedOrReadOnly
from rest_framework.authentication import SessionAuthentication, BasicAuthentication,TokenAuthentication
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from utils.permissions import IsOwnerReadOnly
from re import sub
from utils.middlewares import curl_data
#from Tollplaza_api.settings import LOGGING
#import logging

#logging.config.dictConfig(LOGGING)
#logger = logging.getLogger('django')
from rest_framework.response import Response
from rest_framework import status

from .serializers import SignupSerializer,MainSerializer,Edit_LaneSerializer




class UserRegister(APIView):
	#authentication_classes=(SessionAuthentication, BasicAuthentication)
	#permission_classes = (IsAuthenticated,)

	""" for the use login """ 
	def get(self,request):
		return render_to_response('login.html',{})
class DisplayView(APIView):
	#@detail_route(methods=['POST','GET'])
	serializer_class=Edit_LaneSerializer
	def post(self,request):
		
			user=request.data.get('User_Name')
			password=request.data.get('Password')
			token=request.data.get('Transaction_Id')
			signup=Main.objects.filter(Transaction_Id=token)
			
			serializer=MainSerializer(signup,many=True)
			serializer1=Edit_LaneSerializer(data=request.data)
			
			if serializer1.is_valid():
			
				return Response(serializer.data,status=status.HTTP_200_OK)
			return Response(serializer1.errors,status=status.HTTP_400_BAD_REQUEST) 


class UserLogin(APIView):

	authentication_classes = (TokenAuthentication,SessionAuthentication,BasicAuthentication)
	
	serializer_class=SignupSerializer
	
	#permission_classes = ()
	permission_classes = (IsAuthenticated,)
	def post(self,request):
		'''defines post method in User login view '''
		#user=models.ForeignKey(settings.AUTH_USER_MODEL,default=1)
		#logger.info("Entered Login View")
		
		if request.method=="POST":

			access_key=request.POST.get("access_key",None)
			username=request.data.get('User_Name')
			password=request.data.get('Password')

			auth_data=curl_data(username,password,request)
			author=request.META.get('Authorization')
			host=request.data.get('Authorization')

			
			#token1 = sub('Token ', '', request.META.get('HTTP_AUTHORIZATION', None))
			#tok=request.data.get(token)
			if 'error' not in auth_data:
				serializer=SignupSerializer(data=request.data)
				if serializer.is_valid():
					new_data=serializer.data
					user=authenticate(username=username,password=password)
					if user is not None:
						if user.is_active:
							token=Token.objects.get(user=user)
							request.session['auth']=token.key
							serializer=SignupSerializer(data=request.data)
							for obj in Token.objects.all():
								print obj.key
							user1=Signup.objects.filter(User_Name=username,Password=password).exists()
							if user1:
								response_data = get_response_json(
									username=unicode(user),
									created=False,
									responsecode=200,
									uri=request._request.path,
									data="Valid credential!",)
								
								content={
										'user':unicode(self.request.user),
										'auth':unicode(self.request.auth),
								}
								headers={'Authorization':'Token '.format(unicode(token.key))}
								headers={'content-type' : 'application/json','Authorization': 'Token {}'.format(unicode(request.auth))}
								return Response(data=response_data, status=status.HTTP_200_OK,headers=headers)
								
							content={
									'user':unicode(request.user),
									'auth':unicode(request.auth),
								}
							response_data=get_error_json(username=unicode(request.user),
														description='Invalid credentials',
														detail='Please check credentials',
														uri=request._request.path,
														responsecode=400,
													)
							return Response(response_data,status=status.HTTP_400_BAD_REQUEST)
					#content={'user':unicode(request.user),
					#		'auth':unicode(request.auth),}		
					#return Response(content)
				return Response(serializer.errors,status=status.HTTP_400_BAD_REQUEST)
			content={'user':unicode(request.user)}
			return  Response(content)
		return redirect("/",request)
		
class  Display(APIView):
	def post(self,request):
		username=request.POST['User_Name']
		password=request.POST['Password']
		return render_to_response('vehicledetails1.html',{'User_Name':username,'Password':password})		

class VehicleCount(APIView):
	
	#serializer_class=SignupSerializer
	#authentication_classes = (SessionAuthentication, BasicAuthentication)
	#print "haiiiiiiiiiiiiiiiiiiiiiiiiiiiiii",authentication_classes
	permission_classes = (IsAuthenticated,)

	def get(self,request,vehiclenumber):
			data=Main.objects.filter(Vehicle_Number=vehiclenumber).exists()
			if data:
				data1=Main.objects.filter(Vehicle_Number=vehiclenumber).order_by('Vehicle_Number')
				
				Direction=[]
				Timestamp=[]
				username=[]
				Vehicle_Number=[]
				response_data=[]
				for i in data1:
					
					response={}
					
					response['Tollbooth_username']=i.User_Name
					response['Vehicle_Number']=i.Vehicle_Number
					response['date']=i.Timestamp
					response['Transaction_Id']=i.Transaction_Id
					response['Vehicle_Number']=i.Vehicle_Number
					response['Dimension_Height']=i.Dimension_Height
					response['Dimension_length']=i.Dimension_Length
					response['Dimension_Breadth']=i.Dimension_Breadth
					response['Sensor_Height']=i.Sensor_Height
					response['Sensor_Length']=i.Sensor_Length
					response['Sensor_Breadth']=i.Sensor_Breadth
					response['Sensor_Axle']=i.Sensor_Axle
					response['Vehicle_Class']=i.Vehicle_Class
					response['Fine_Amount']=i.Fine_Amount
					response['Unladen_Weight']=i.Unladen_Weight
					response['Laden_Weight']=i.Laden_Weight
					response['Authorization']=i.Authorization
					response['National_Permit']=i.National_Permit
					response['Insurance']=i.Insurance
					response['Tax']=i.Tax
					response['Engine_Cubic_Capacity']=i.Engine_Cubic_Capacity
					response['Vehicle_Fuel_Type']=i.Vehicle_Fuel_Type
					response['Engine_Number']=i.Engine_Number
					response['Chassis_Number']=i.Chassis_Number
					response['Registration_date']=i.Registration_Date
					response['Vehicle_status']=i.Vehicle_Status
					response['Comment']=i.Comment
					response['Axle']=i.Axle
					response['Permit']=i.Permit
					response['Fitness']=i.Fitness
					response['Pollution']=i.Pollution
					response['Weight']=i.Weight
					response['Direction']=i.Direction
					response['Vehicle_Number']=i.Vehicle_Number


					response['Direction']=i.Direction
					response_data.append(response)

				print "redddyyyyyyyyyyyyyyyyyyyyyy",request.auth

				content={
						'user':unicode(request.user),
						'auth':unicode(request.auth)
				}
				return Response(response_data,status=status.HTTP_200_OK,headers={'Authorization': 'Token {}'.format(request.auth)})
			response_data=get_error_json(Username=request.query_params.get('Username'),
										description='Invalid Vehicle Number',
										detail='Please check credential',
										responsecode=400,)
			headers={'Authorization':'Token {}'.format(request.auth)}
			return Response(data=response_data,status=status.HTTP_400_BAD_REQUEST)
	#content={
	#		'user':unicode(request.user),
	#		'auth':unicode(request.auth),
	#		'status':"Invalid Credentials!",
	#}
	#return redirect("/")



class obtain_auth_token(APIView):
	authentication_classes = (SessionAuthentication,BasicAuthentication,TokenAuthentication)
	
	serializer_class=SignupSerializer
	
	def post(self,request):
		signup=Main.objects.all()
		serializer=SignupSerializer(signup,many=True)
		return Response(serializer.data)
		

class UserValidation(APIView):
	authentication_classes = (SessionAuthentication,BasicAuthentication,TokenAuthentication)
	serializer_class=SignupSerializer
	def post(self,request):
		username=request.data.get('User_Name')
		password=request.data.get('Password')
		serializer=SignupSerializer(data=request.data)
		auth_data=curl_data(username,password,request)
		if serializer.is_valid():

			new_data=serializer.data
			user=authenticate(username=username,password=password)
			if user is not None:
				if user.is_active:
					data = "&grant_type=password&username=" + username + ""				
					if request.is_secure():
						token=Token.objects.get(user=user)
						request.session['HTTP_AUTHORIZATION']="Token "+token.key
						headers={'Authorization':'Token '+token.key}
					return redirect("/login/",)
			return redirect("/")



def get_auth_token(request):
    username = request.POST.get('username')
    password = request.POST.get('password')
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            token, created = Token.objects.get_or_create(user=user)
            request.session['auth'] = token.key
            return redirect('/login/', request)
    return redirect(settings.LOGIN_URL, request)
