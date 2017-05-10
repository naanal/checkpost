
from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect,Http404
from django.contrib import messages
from Tollapp.models import *
from django.shortcuts import render
from time import time,strftime,gmtime

from django.contrib.sessions.models import Session
import os
from django.views.decorators.csrf import csrf_exempt, csrf_protect
from django.shortcuts import render_to_response
from django.contrib.auth import authenticate,login
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
from django.contrib.auth.models import Permission, User
import unicodedata
import MySQLdb
import barcode
import PIL
from PIL import Image, ImageWin
from barcode.writer import ImageWriter
import random
import md5
from django.contrib.auth.hashers import MD5PasswordHasher
from django.shortcuts import redirect
from datetime import datetime as Datetime
import datetime
from .forms import  SearchForm
import threading
from time import sleep
from datetime import date
from dateutil.rrule import rrule, DAILY
from django.db.models import Sum


def mainpage(request):
	return render_to_response('login.html',{})

def display_homepage(request):
		
		if request.method=="POST":
			username_new=request.POST['Username']
			password=request.POST["Password"]
			User_Name=str(username_new).lower()
			request.session.modified= True
			request.session['User_Name']=User_Name
			#import pdb;pdb.set_trace();
			form =SearchForm(request.POST)
			if form.is_valid():
				User_Name=form.cleaned_data['Username']
				
				print form.cleaned_data
				
			if Signup.objects.filter(User_Name=User_Name).exists():

				
				data=Signup.objects.get(User_Name=User_Name).User_Type

				if "user"==data:
				
						data=Signup.objects.get(User_Name=User_Name).Lane_Number												
						instance=Signup.objects.get(User_Name=User_Name).Password
						if  password==instance :
							my_data=Edit_Lane.objects.filter(Lane_Number=data)
							
							for i in my_data:
								
								toll_number=i.Lane_Number
								toll_dir=i.Direction
								toll_loc=i.Location					
								cam=i.Anpr_Ip
								cam1=i.Camera_Ip
								

								lan = Signup.objects.filter(User_Name = User_Name)
								for u in lan:
									lanee = u.Lane_Number
		
									d = Edit_Lane.objects.filter(Lane_Number = lanee).update(User_Name = User_Name)
								
								
								
								print "============login============",User_Name,password,toll_number,toll_dir
								my_data1 = Main(User_Name=User_Name,Lane_Number=toll_number,Direction=toll_dir,Location=toll_loc,Pollution=Datetime.now(),Fitness=Datetime.now(),Permit=Datetime.now(),Timestamp=Datetime.now(),Registration_Date=Datetime.now(),Tax=Datetime.now(),Insurance=Datetime.now(),National_Permit=Datetime.now(),Authorization=Datetime.now(),)
								my_data1.save()
							
							return render_to_response("userpage12.html",{"lane_N":toll_number,"toll_dir":toll_dir,"toll_loc":toll_loc,"User_Name":User_Name,"Password":password,"cam":cam,"cam1":cam1,})
							response.set_cookie('logged_in_mango_status', User_Name)
							return response	
						else:
							
							
							msg="Password is Invalid!!"
							return render_to_response('login.html',{'flag':msg})
					#except:
					#	msg="User_Name not Found!!"
					#	return render_to_response("login.html",{'flag':msg})

				else:
						print "in else",User_Name

					#try:
						data=Signup.objects.get(User_Name=User_Name).User_Type
						if "officer"==data:
							instance=Signup.objects.get(User_Name=User_Name).Password
							loc = Signup.objects.get(User_Name=User_Name).Location
							print "instance",instance
							print "password",password
							if password==instance:
								my=Signup.objects.get(User_Name=User_Name)																		
								return render_to_response('officer.html',{"User_Name":User_Name,"Password":password,"loc":loc})

							else:
								msg="Password is Invalid!!"
								return render_to_response("login.html",{'flag':msg})
						elif "transport"==data:
							instance=Signup.objects.get(User_Name=User_Name).Password
							if password==instance:
								return redirect ('/report')
							else:
								msg="Password is Invalid"
								return render_to_response("login.html",{'flag':msg})
						elif "admin"==data:
							instance=Signup.objects.get(User_Name=User_Name).Password
							if password==instance:
								return render_to_response("test.html",{"User_Name":User_Name,"Password":password})
							else:
								msg="password will be invalid!"
								return render_to_response("login.html",{'flag':msg})
						elif "monitor"==data:		
							instance=Signup.objects.get(User_Name=User_Name).Password		
							if password==instance:		
								return redirect('/display')		
							else:		
								msg="password will be invalid!"		
								return render_to_response("login.html",{'flag':msg})								
								
																
					#except:
					#	msg="Officer name is Invalid!!"
					#	return render_to_response("login.html",{'flag':msg})
			else:
				msg="Username is invalid!"
				return render_to_response("login.html",{'flag':msg})
		else:
			return redirect("/")	
		#except:
		#	msg="user details are not validated"


def ANPR(request):
	if request.session.has_key('User_Name'):
		User_Name=request.POST['User_Name']
		password=request.POST['Password']
		lan = Signup.objects.filter(User_Name = User_Name)
		for u in lan:
			lanee = u.Lane_Number
		
		d = Edit_Lane.objects.filter(Lane_Number = lanee).update(User_Name = User_Name)
		e = Edit_Lane.objects.filter(Lane_Number = lanee)
		for i in e:
			toll_number = i.Lane_Number
			toll_dir = i.Direction
			toll_loc = i.Location
		
			cam=i.Anpr_Ip
			cam1=i.Camera_Ip
			
			
		try:

			data=Anpr.objects.filter(Lane_Number=toll_number).order_by('Flag','Timestamp')[0]
			if data.Flag==0:
				Vehicle_Number=data.Vehicle_Number
			else:
				Vehicle_Number="NULL"
		except:
			Vehicle_Number="NULL"
		return render_to_response("userpage12.html",{'Vehicle_Number':Vehicle_Number,'User_Name':User_Name,"Password":password,"lane_N":toll_number,"toll_dir":toll_dir,"toll_loc":toll_loc,"cam":cam,"cam1":cam1,})





		
#@nano_login_required
#@allow_request
def get_details(request):
	if  request.session.has_key('User_Name'):

	
		if request.method=="POST":
			#try:
				#s = Session.objects.get(pk='95vxa5h7auy9ym5dubhxe6ro5wtg393m')
				username1=request.session['User_Name']		
				Number=request.POST["Vehicle_Number"]
				User_Name=request.POST["User_Name"]
				password=request.POST["Password"]
				an_da=request.POST["an_da"]
				sen_time=request.POST["sen_time"]
				wegh_time=request.POST["wei_br"]
				ax_ti=request.POST["Axle_ti"]
				data1=Rto.objects.filter(Vehicle_Number=Number)
				if (data1):	
					for data in data1:
						if  data.Vehicle_Number==Number:
							veh_no=data.Vehicle_Number
							Die_h=data.Dimension_Height
							Pol_va=data.Pollution
							Per_va=data.Permit
							Fit_va=data.Fitness
							Die_l=data.Dimension_Length
							Die_h=data.Dimension_Height 
							Die_b=data.Dimension_Breadth
							axle_d =data.Axle							
							Veh_cla=data.Vehicle_Class
							reg=data.Registration_Date
							fuel=data.Vehicle_Fuel_Type
							cubic=data.Engine_Cubic_Capacity
							chassis=data.Chassis_Number
							engine=data.Engine_Number
							national=data.National_Permit
							tax=data.Tax
							Authorization=data.Authorization
							Vehicle_Type=data.Vehicle_Type
							insurance=data.Insurance
							Unladen_Weight=data.Unladen_Weight
							
							lane = Signup.objects.get(User_Name = User_Name).Lane_Number	
							my_data=Edit_Lane.objects.filter(Lane_Number=lane)
							for i in my_data:
								toll_number=i.Lane_Number
								cam=i.Anpr_Ip
								cam1=i.Camera_Ip
								 
								add = i.Location
								toll_loc = i.Location
								toll_dir = i.Direction
							l1=[]
							l2=[]
							try:
								x=Sensor_Details.objects.filter(Lane_Number=toll_number).order_by('Flag','Timestamp')[0]
								if x.Flag==0:
									Sensor_Height=x.Dimension_Height
									Sensor_Breadth=x.Dimension_Breadth
									Sensor_Length=x.Dimension_Length
									x.Flag='True'
									x.save()
								else:
									Sensor_Height=0
									Sensor_Breadth=0
									Sensor_Length=0
									msg="Sensor details are not came!"
									l1.append(msg)
							except:
								Sensor_Height=0
								Sensor_Breadth=0
								Sensor_Length=0
								msg1="sensor table is empty!"
								l2.append(msg1)
							try:	
								data1=Weigh_Bridge.objects.filter(Lane_Number=toll_number).order_by('Flag', 'Timestamp')[0]
								if data1.Flag==0:
									Weight=data1.Weight
									data1.Flag='True'
									data1.save()	
								else:
									Weight=0
									msg="weight bridge details are not came!"
									l1.append(msg)
							except:
								Weight=0
								msg1="Weigh bridge table is empty!"
								l2.append(msg1)
							laden = Weight - Unladen_Weight
							try:
								obj=Axle_Count.objects.filter(Lane_Number=toll_number).order_by('Flag','Timestamp')[0]
								if obj.Flag==0:
									axle_a=obj.Axle
									obj.Flag='True'
									obj.save()
								else:
									axle_a=0
									msg="Axle count details are not came!"
									l1.append(msg)
							except:
								axle_a=0
								msg1="Axle count table is empty!"
								l2.append(msg1)
							m=Main.objects.filter(Lane_Number=toll_number).order_by('-Timestamp')[0]					
							Transaction=m.Transaction_Id
							if toll_number:
								Main.objects.filter(Lane_Number=toll_number,Transaction_Id=Transaction).update(Sensor_Axle = axle_a,Vehicle_Number=veh_no,Dimension_Length=Die_l,Dimension_Height=Die_h,Dimension_Breadth=Die_b,Fitness=Fit_va,Permit=Per_va,Pollution=Pol_va,Axle=axle_d,Registration_Date=reg,
											Tax=tax,Authorization=Authorization,Insurance=insurance,National_Permit=national,Engine_Number=engine,Chassis_Number=chassis,Vehicle_Class=Veh_cla,Vehicle_Fuel_Type=fuel,Engine_Cubic_Capacity=cubic,Laden_Weight=laden,Unladen_Weight=Unladen_Weight,Vehicle_Type=Vehicle_Type,Sensor_Length =Sensor_Length,Sensor_Breadth=Sensor_Breadth,Sensor_Height=Sensor_Height,Weight=Weight)							

								
													
								tran=str(Transaction)
								print "trannnnnnnnn",tran,type(tran)
								filenames=tran+".png"
								path = os.getcwd() + r'//media//images//'+ tran
								
								ean = barcode.get('code39', tran , writer=ImageWriter())
								filename= ean.save(path)
								try:
									data=Anpr.objects.filter(Lane_Number=toll_number).order_by('Flag','Timestamp')[0]
								
									data.Flag='True'
									data.save()
								except:
									pass	
								poluttio=datetime.strptime(str(Pol_va),"%Y-%m-%d").strftime('%Y-%m-%d')
								date=datetime.now().strftime("%Y-%m-%d")
								if date<=poluttio:
									color="green"
								else:
									color="red"
								current_page=Datetime.now() 
								sta=0
								
								if date<=str(Per_va) and Die_h>=Sensor_Height and Die_b>=Sensor_Breadth and Die_l>=Sensor_Length and date<=str(national) and date<=str(insurance) and date<=str(Authorization) and date<=str(Pol_va) and axle_a<=axle_d and date<=str(Fit_va) and date<=str(tax):
									sta="ok"
								else:
									sta="Not Ok"
								Main.objects.filter(Transaction_Id=Transaction).update(Vehicle_Status=sta)

								if date<=str(Per_va) : 
									color1="green"
								else:
									color1="red"

								if axle_a <= axle_d:
									colo = "green"
								else:
									colo = "red"
								
								if date<=str(Pol_va):
									color2="green"
								else:
									color2="red"
								if date<=str(Authorization):
									color3="green"
								else:
									color3="red"
								if date<=str(insurance):
									color4="green"
								else:
									color4="red"
								if Sensor_Height<=Die_h:
									color4="green"
								else:
									color4="red"
								if Sensor_Length<=Die_l:
									color5="green"
								else:
									color5="red"
								if Sensor_Breadth<=Die_b:
									color6="green"
								else:
									color6="red"
								if date<=str(national):
									color7="green"
								else:
									color7="red"
								if date<=str(Fit_va):
									color8="green"
								else:
									color8="red"
								if date<=str(tax):
									color9="green"
								else:
									color9="red"
								if date<=str(insurance):
									color10="green"
								else:
									color10="red"
								height = Sensor_Height - Die_h
								height_h = "+" + str(height)
								if height <=0:
									h = 0
								else:
									h = height_h

								length = Sensor_Length  - Die_l
								length_l = "+" + str(length)
								if length <=0:
									l = 0
								else:
									l = length_l
								width = Sensor_Breadth - Die_b
								width_w = "+" + str(width)
								if width <=0:
									w = 0
								else:
									w = width_w

								Axle = axle_a - axle_d
								Axle_a = "+" + str(Axle)
								if Axle <=0:
									a = 0
								else:
									a = Axle_a
								print "sssssssssssssssssssssss",l1[0:]
								ms=",".join(l1[0:])
								ms1=",".join(l2[0:])

								return render_to_response('userpage2.html',{'flag':ms,'flag1':ms1,"w":w,"a":a,"l":l,"h":h,"color":colo,"color1":color1,"color2":color2,"color3":color3,"color4":color4,"color5":color5,"color6":color6,"color7":color7,"color8":color8,"color9":color9,"color10":color10,"ladden":laden,"Unladen_Weight":Unladen_Weight,"filenames":filenames,"sta":sta,
																		"current_date":current_page,"Diemension_h":Die_h,"Vehicle_Number":veh_no,"Pollution_va":Pol_va,"Permit_va":Per_va,"Fitness_va":Fit_va,"Diemension_l":Die_l,"Diemension_b":Die_b,
																		"axle_a":axle_a,"axle_d":axle_d ,"Vehicle_Status":sta,"Transaction_ID":tran,"Vehicle_class":Veh_cla,"lane_N":toll_number,
																		"sensor_h":Sensor_Height,"sensor_b":Sensor_Breadth,"sensor_le":Sensor_Length ,"address":add,"Weight":Weight,"registration_date":reg,"fuel":fuel,"toll_loc":toll_loc,"Vehicle_Type":Vehicle_Type,
																		"cubic":cubic,"Chassis_Number":chassis,"Engine_Number":engine,"national":national,"tax":tax,"Authorization":Authorization,"filename":filename,"insurance":insurance,"sen_time":sen_time,"an_da":an_da,"toll_dir":toll_dir,"Vehicle_Type":Vehicle_Type,"tran":tran,"User_Name":User_Name,"Password":password,"cam":cam,"cam1":cam1})

							else:
								msg="No Vehicles Are In Que!!"
								return render_to_response("userpage2.html",{'flag':msg})

						else:
							msg="Please enter a valid Vehicle Transaction_ID!!!!"
							return render_to_response('vehicledetails.html',{'flag':msg})
				else:
					msg="Please search with valid number!"
					return render_to_response("userpage12.html",{'flag':msg,"User_Name":User_Name})

			#except:
				msg="Please enter Vehicle Number after Next"
				return render_to_response("userpage2.html",{'flag':msg})
	else:
		msg="Your session will be anothorized"
		return render_to_response("login.html",{'flag':msg})

#@login_required(login_url="login/")


#edit_property for officer gui
def edit_property(request):
	if request.session.has_key('User_Name'):

		#try:
				Number=request.POST['transaction']
				User_Name=request.POST['User_Name']
				password=request.POST['Password']
				print "Numberrrrrrr",Number,User_Name
				
				lo = Signup.objects.filter(User_Name = User_Name)
				for l in lo:
					loc = l.Location
				
				data=Main.objects.filter(Transaction_Id=Number).order_by('-Timestamp')[0]
				if (data):
						Trans=data.Transaction_Id
						veh_no=data.Vehicle_Number
						Per_va=data.Permit
						pollut=data.Pollution
						die_h=data.Dimension_Length
						die_l=data.Dimension_Height
						die_b=data.Dimension_Breadth
						Fitness=data.Fitness
						office=data.Officer_Name
						Time=data.Timestamp
						user=data.User_Name
						Axle=data.Axle
						lane=data.Lane_Number
						add=data.Location
						Weight=data.Weight
						veh_class=data.Vehicle_Class
						regis=data.Registration_Date
						chassis=data.Chassis_Number
						engine=data.Engine_Number
						fuel=data.Vehicle_Fuel_Type
						cubic=data.Engine_Cubic_Capacity
						national=data.National_Permit
						insurance=data.Insurance
						Authorization=data.Authorization
						tax=data.Tax
						Unladen_Weight=data.Unladen_Weight
						amount=data.Fine_Amount
						
						ok_status = data.Vehicle_Status
						permit_status = data.Status
						comm = data.Comment
						Main.objects.filter(Transaction_Id=Number).update(Officer_Name=User_Name)
						Sensor_Height=data.Sensor_Height
						Sensor_Breadth=data.Sensor_Breadth
						Sensor_Length =data.Sensor_Length 
						Sensor_Axle = data.Sensor_Axle
						Vehicle_Type=data.Vehicle_Type

						print "======3===============",ok_status
						date=Datetime.now().strftime("%Y-%m-%d")
						current_page=Datetime.now()
								
						sta=0
						if date<=str(Per_va) and date<=str(pollut) and date<=str(Authorization) and date<=str(insurance) and date<=str(national) and die_h<=Sensor_Height and die_l<=Sensor_Length  and die_b<=Sensor_Breadth: 
							sta="ok"
						else:
							sta="Not Ok"
						
						ladden=Weight-Unladen_Weight
						Sensor_Height=die_h-Sensor_Height
						if date<=str(Per_va) : 
							color1="green"
						else:
							color1="red"
						
						if date<=str(pollut):
							color2="green"
						else:
							color2="red"
						if date<=str(Authorization):
							color3="green"
						else:
							color3="red"
						if date<=str(insurance):
							color4="green"
						else:
							color4="red"
						if Sensor_Height<=die_h:
							color4="green"
						else:
							color4="red"
						if Sensor_Length <=die_l:
							color5="green"
						else:
							color5="red"
						if Sensor_Breadth<=die_b:
							color6="green"
						else:
							color6="red"
						if Sensor_Axle<=Axle:
							color="green"
						else:
							color="red"
						if date<=str(national):
							color7="green"
						else:
							color7="red"
						if date<=str(Fitness):
							color8="green"
						else:
							color8="red"
						if date<=str(tax):
							color9="green"
						else:
							color9="red"
						if date<=str(insurance):
							color10="green"
						else:
							color10="red"

						height = Sensor_Height - die_h
						height_h = "+" + str(height)
						if height <=0:
							h = 0
						else:
							h = height_h

						length = Sensor_Length  - die_l
						length_l = "+" + str(length)
						if length <=0:
							l = 0
						else:
							l = length_l
						width = Sensor_Breadth - die_b
						width_w = "+" + str(width)
						if width <=0:
							w = 0
						else:
							w = width_w

						Axle = Sensor_Axle - Axle
						Axle_a = "+" + str(Axle)
						if Axle <=0:
							a = 0
						else:
							a = Axle_a

						tran =  Number
						filenames=tran+".png" 
						path = os.getcwd() +r'//media//images//'+tran
						print tran
						from barcode.writer import ImageWriter
						ean = barcode.get('code39', tran , writer=ImageWriter())
						filename= ean.save(path)
						
						return render_to_response('officer.html',{"comm":comm,"ok_status":ok_status,"permit_status":permit_status,"loc":loc,"a":a,"w":w,"l":l,"h":h,"color1":color1,"color2":color2,"color3":color3,"sta":sta,"amount":amount,
											"current_date":current_page,"filenames":filenames,"ladden":ladden,"Unladen_Weight":Unladen_Weight,"Sensor_Axle":Sensor_Axle,
											"Vehicle_Number":veh_no,"RTO":User_Name,"Timestamp":Time,"Axle_Count":Axle,"Pollution_va":pollut,
											"Fitness_va":Fitness,"registration":regis,"chassis":chassis,"Tollbooth_user":user,"Transaction_ID":Trans,
											"lane_N":lane,"Permit":Per_va,"Weight":Weight,"Diemension_h":die_h,"engine":engine,"fuel":fuel,"cubic":cubic,
											"color":color,"national":national,"insurance":insurance,"Authorization":Authorization,"tax":tax,"Diemension_b":die_b,
											"Diemension_l":die_l,"address":add,"Vehicle_Type":Vehicle_Type,"Vehicle_class":veh_class,"sensor_h":Sensor_Height,
											"sensor_b":Sensor_Breadth,"sensor_le":Sensor_Length ,"color4":color4,"color5":color5,"color6":color6,"color7":color7,
											"color8":color8,"color9":color9,"color10":color10,"tran":tran,"User_Name":User_Name,"trans_id":Number,"Password":password})
		
		#except:
		#	msg="Please Enter Valid Vehicle Transaction_ID"
		#	return render_to_response("vehicledetails.html",{"flag":msg})
	else:
		return redirect("/")


#@login_required(login_url="login/")

#save_edit_property for officer gui
def save_edit_property(request):
	if request.session.has_key('User_Name'):

		#try:
			User_Name=request.POST["User_Name"]
			lo = Signup.objects.filter(User_Name = User_Name)
			for l in lo:
				loc = l.Location
			
			password=request.POST['Password']
			
			Permit=request.POST["Permit"]
			
			amount=request.POST["amount"]
			
			Vehicle_Number=request.POST["VehicleNumber"]
			
			comments=request.POST["comments"]
			
			tran=request.POST["Transaction_ID"]
			
			permission = request.POST.get("permission")
			
			status=request.POST.get("status")
			
			vehicle_class=request.POST.get("class")
			
			print "vehicleeeeee",vehicle_class,	status	,tran,comments,Vehicle_Number,amount,Permit,User_Name,permission
			
			
			#data=Main.objects.filter(Transaction_Id=tran).order_by('-Timestamp')[0]
			data=Main.objects.filter(Transaction_Id=tran)
			
			Main.objects.filter(Transaction_Id=tran).update(Status = permission, Permit=Permit,Fine_Amount=amount,Comment=comments,Vehicle_Status=status)
			data=Log_Details(Transaction_Id=tran,Permit=Permit,Fine_Amount=amount,	Comment=comments,Vehicle_Status=status,Officer_Name=User_Name,Vehicle_Number=Vehicle_Number,Timestamp=Datetime.now())
			data.save()

			filter = Main.objects.filter(Transaction_Id=tran)
			for x in filter:
				Per_va=x.Permit
				amount=x.Fine_Amount
				veh_no=x.Vehicle_Number
				die_l=x.Dimension_Length
				die_b=x.Dimension_Breadth
				die_h=x.Dimension_Height
				chassis=x.Chassis_Number
				engine=x.Engine_Number
				national=x.National_Permit
				insurance=x.Insurance
				tax=x.Tax
				ladden=x.Laden_Weight
				Unladen_Weight=x.Unladen_Weight
				comments=x.Comment
				regis=x.Registration_Date
				cubic=x.Engine_Cubic_Capacity
				add=x.Location
				fuel=x.Vehicle_Fuel_Type
				Weight=x.Weight
				office=x.Officer_Name
				Time=x.Timestamp
				Axle=x.Axle
				pollut=x.Pollution
				Fitness=x.Fitness
				user=x.User_Name
				Transaction=x.Transaction_Id
				lane=x.Lane_Number
				Authorization=x.Authorization
				Sensor_Height=x.Sensor_Height
				Sensor_Breadth=x.Sensor_Breadth
				Sensor_Length =x.Sensor_Length
				Sensor_Axle = x.Sensor_Axle
				veh_class=x.Vehicle_Class
				Direction=x.Direction
				vehicle_type=x.Vehicle_Type			
		
			print "Axle",Axle,Transaction,veh_no
			ladden=Weight-Unladen_Weight
			date=Datetime.now().strftime("%Y-%m-%d")
						
								
			sta=0
			if date<=str(Per_va) and date<=str(pollut) and date<=str(Authorization) and date<=str(insurance) and date<=str(national) and die_h<=Sensor_Height and die_l<=Sensor_Length  and die_b<=Sensor_Breadth: 
				sta="ok"
			else:
				sta="Not Ok"
			
			ladden=Weight-Unladen_Weight
			Sensor_Height=die_h-Sensor_Height
			if date<=str(Per_va) : 
				color1="green"
			else:
				color1="red"
			
			if date<=str(pollut):
				color2="green"
			else:
				color2="red"
			if date<=str(Authorization):
				color3="green"
			else:
				color3="red"
			if date<=str(insurance):
				color4="green"
			else:
				color4="red"
			if Sensor_Height<=die_h:
				color4="green"
			else:
				color4="red"
			if Sensor_Length <=die_l:
				color5="green"
			else:
				color5="red"
			if Sensor_Breadth<=die_b:
				color6="green"
			else:
				color6="red"
			if Sensor_Axle<=Axle:
				color="green"
			else:
				color="red"
			if date<=str(national):
				color7="green"
			else:
				color7="red"
			if date<=str(Fitness):
				color8="green"
			else:
				color8="red"
			if date<=str(tax):
				color9="green"
			else:
				color9="red"
			if date<=str(insurance):
				color10="green"
			else:
				color10="red"

			height = Sensor_Height - die_h
			height_h = "+" + str(height)
			if height <=0:
				h = 0
			else:
				h = height_h

			length = Sensor_Length  - die_l
			length_l = "+" + str(length)
			if length <=0:
				l = 0
			else:
				l = length_l
			width = Sensor_Breadth - die_b
			width_w = "+" + str(width)
			if width <=0:
				w = 0
			else:
				w = width_w

			Axle = Sensor_Axle - Axle
			Axle_a = "+" + str(Axle)
			if Axle <=0:
				a = 0
			else:
				a = Axle_a

			tran=str(Transaction)
			filenames=tran+".png" 
			path = os.getcwd() +r'//media//images//'+tran
			print tran
			from barcode.writer import ImageWriter
			ean = barcode.get('code39', tran , writer=ImageWriter())
			filename= ean.save(path)

			

			return render_to_response("officer.html",{"loc":loc,"a":a,"w":w,"l":l,"h":h,"color1":color1,"color2":color2,"color3":color3,"color4":color4,"color5":color5,"color6":color6,"color7":color7,"color8":color8,"color9":color9,"color10":color10,"comments":comments,"sta":sta,"amount":amount,"filenames":filenames,"ladden":ladden,"Vehicle_Type":vehicle_type,
														"Unladen_Weight":Unladen_Weight,"Vehicle_Number":veh_no,"RTO":office,"Timestamp":Time,"Axle_Count":Axle,
														"Pollution_va":pollut,"Fitness_va":Fitness,"registration":regis,"chassis":chassis,"Tollbooth_user":user,
														"Transaction_ID":Transaction,"lane_N":lane,"Permit":Per_va,"Weight":Weight,"Diemension_h":die_h,"engine":engine,
														"fuel":fuel,"cubic":cubic,"national":national,"insurance":insurance,"Authorization":Authorization,"tax":tax,
														"Diemension_b":die_b,"Diemension_l":die_l,"toll_loc":add,"Vehicle_class":veh_class,"sensor_h":Sensor_Height,
														"sensor_b":Sensor_Breadth,"sensor_le":Sensor_Length ,"toll_dir":Direction,"tran":tran,"User_Name":User_Name,"Password":password,})


		#except:
			msg="Your values are not been updated Properly Please enter only Permit"
			print "errrrrrrrrrrrrrrrrrrrrrrrrooooooooooooooooooooooor"
			return render_to_response("officer.html",{})
	else:
		return redirect("/")
#@login_required(login_url="login/")

# clear_page function for boombarrier
def clear_page(request):

	if request.session.has_key('User_Name'):
		
		if request.POST:
			User_Name = request.POST['User_Name']		
			password=request.POST["Password"]	
			print "usernameeee ",User_Name

			lan = Signup.objects.filter(User_Name = User_Name)
			for u in lan:
				lanee = u.Lane_Number
		
			print"===============lane",lanee
			my_data = Edit_Lane.objects.filter(Lane_Number = lanee)

		
			
			print"===================c2================="
			for i in my_data:
				
				
				toll_number = i.Lane_Number
				toll_dir = i.Direction
				toll_loc = i.Location
				cam=i.Anpr_Ip
				cam1=i.Camera_Ip
				
				print "tollllllll", toll_number
			if toll_number==1:
				print "$$$$$$$$$$$$$$$$$$$$$",toll_number
				a=Relay_Panel.objects.order_by('Lane_1')[0]
				a.Lane_1=False
				a.save()
			if toll_number==2:
				a=Relay_Panel.objects.order_by('Lane_2')[0]
				a.Lane_2=False
				a.save()
			if toll_number==3:
				print "$$$$$$$$$$$$$$$$$$$$$$",toll_number
				a=Relay_Panel.objects.order_by('Lane_3')[0]
				a.Lane_3=False
				a.save()
			if toll_number==6:
				print "$$$$$$$$$$$$$$$",toll_number
				a=Relay_Panel.objects.order_by('Lane_6')[0]
				a.Lane_6=False
				a.save()
			li=[]
			l1=[]
			my_data1 = Main(User_Name=User_Name,Lane_Number=toll_number,Direction=toll_dir,Location=toll_loc,Pollution=datetime.now(),Fitness=datetime.now(),Permit=datetime.now(),Timestamp=datetime.now(),Registration_Date=datetime.now(),Tax=datetime.now(),Insurance=datetime.now(),National_Permit=datetime.now(),Authorization=datetime.now())
			my_data1.save()
			
			response= render_to_response("userpage12.html",{"lane_N":toll_number,"toll_dir":toll_dir,"toll_loc":toll_loc,"User_Name":User_Name,"Password":password,"cam":cam,"cam1":cam1,})
			response.set_cookie('logged_in_mango_status', User_Name)
			return response	
	else:
		return redirect("/")

def report(request):

	return render_to_response("report.html")
# search_report for report page
def search_reports(request):

	#try:
		d1=request.POST["value1"]
		d2=request.POST["value2"]
		d3=request.POST["searchfilter"]
		User_Name=request.POST["Username"]
		password=request.POST["Password"]
		vaues=str(d1)
		vaues1=str(d2)
		data=Main.objects.order_by('User_Name')
		for i in data:
			print i.User_Name
		
		print "valuessssss",type(d1),type(vaues),type(vaues1),d1,d2
		day=vaues.split("-")
		if d3=="User_Name":
			data=Main.objects.order_by('User_Name')
			l1=[]

			for i in data:
				l1.append(i.Timestamp.strftime("%Y-%m-%d"))
			tim1=[]
			for i in data:
				va=i.Timestamp.strftime("%Y-%m-%d")
				if  vaues <=va<=vaues1:
					
					data={}
					data['Timestamp']=str(i.Timestamp.strftime("%Y-%m-%d"))
					data['fineamount']=str(i.Fine_Amount)
					data['Vehicle_Number']=str(i.Vehicle_Number)
					data['Vehicle_Status']=str(i.Vehicle_Status)
					data['User_Name']=str(i.User_Name)
					data['Transaction_Id']=str(i.Transaction_Id)
					data['Lane_Number']=str(i.Lane_Number)
					tim1.append(data)		
			
			return render_to_response("report.html",{"timesta":tim1,"vaues":vaues,"vaues1":vaues1,"User_Name":User_Name,"Password":password})
		elif d3=="VEHICLENUMBER":
			data=Main.objects.order_by('Vehicle_Number')
			l1=[]

			for i in data:
				l1.append(i.Timestamp.strftime("%Y-%m-%d"))
			tim1=[]
			for i in data:
				va=i.Timestamp.strftime("%Y-%m-%d")
				if  vaues <=va<=vaues1:
					
					data={}
					data['Timestamp']=str(i.Timestamp.strftime("%Y-%m-%d"))
					data['fineamount']=str(i.Fine_Amount)
					data['Vehicle_Number']=str(i.Vehicle_Number)
					data['Vehicle_Status']=str(i.Vehicle_Status)
					data['User_Name']=str(i.User_Name)
					data['Transaction_Id']=str(i.Transaction_Id)
					data['Lane_Number']=str(i.Lane_Number)
					tim1.append(data)
					print i.Timestamp	
			return render_to_response("report.html",{"timesta":tim1,"vaues":vaues,"vaues1":vaues1,"User_Name":User_Name,"Password":password})
		elif d3=="FINEAMOUNT":
			data=Main.objects.order_by('fineamount')
			l1=[]

			for i in data:
				l1.append(i.Timestamp.strftime("%Y-%m-%d"))
			tim1=[]
			for i in data:
				va=i.Timestamp.strftime("%Y-%m-%d")

				if  vaues <=va<=vaues1:
					data={}		
					data['Timestamp']=str(i.Timestamp.strftime("%Y-%m-%d"))
					data['fineamount']=str(i.Fine_Amount)
					data['Vehicle_Number']=str(i.Vehicle_Number)
					data['Vehicle_Status']=str(i.Vehicle_Status)
					data['User_Name']=str(i.User_Name)
					data['Transaction_Id']=str(i.Transaction_Id)
					data['Lane_Number']=str(i.Lane_Number)
					tim1.append(data)
			return render_to_response("report.html",{"timesta":tim1,"vaues":vaues,"vaues1":vaues1,"User_Name":User_Name,"Password":password})
		elif d3=="STATUS":
			data=Main.objects.order_by('Vehicle_Status')
			l1=[]

			for i in data:
				l1.append(i.Timestamp.strftime("%Y-%m-%d"))
			tim1=[]
			for i in data:
				va=i.Timestamp.strftime("%Y-%m-%d")
				if  vaues <=va<=vaues1:
					
					data={}

					data['Timestamp']=str(i.Timestamp.strftime("%Y-%m-%d"))
					data['fineamount']=str(i.Fine_Amount)
					data['Vehicle_Number']=str(i.Vehicle_Number)
					data['Vehicle_Status']=str(i.Vehicle_Status)
					data['User_Name']=str(i.User_Name)
					data['Transaction_Id']=str(i.Transaction_Id)
					data['Lane_Number']=str(i.Lane_Number)
					tim1.append(data)		
			return render_to_response("report.html",{"timesta":tim1,"vaues":vaues,"vaues1":vaues1,"User_Name":User_Name,"Password":password})
		else:
			data=Main.objects.order_by('Timestamp')
			l1=[]

			for i in data:
				l1.append(i.Timestamp.strftime("%Y-%m-%d"))
			tim1=[]
			fine1=[]
			veh1=[]
			sta1=[]
			tol1=[]
			tra1=[]
			for i in data:
				va=i.Timestamp.strftime("%Y-%m-%d")
				if  vaues <=va<=vaues1:
					data = {}
					data['Timestamp']=str(i.Timestamp.strftime("%Y-%m-%d"))
					data['Fine_Amount']=str(i.Fine_Amount)
					data['Vehicle_Number']=str(i.Vehicle_Number)
					data['Vehicle_Status']=str(i.Vehicle_Status)
					data['User_Name']=str(i.User_Name)
					data['Transaction_Id']=str(i.Transaction_Id)
					data['Lane_Number']=str(i.Lane_Number)
					tim1.append(data)
			return render_to_response("report.html",{"timesta":tim1,"vaues":vaues,"vaues1":vaues1,"User_Name":User_Name,"Password":password,})
	#except:
	#	msg="values are not be displayed"
	#	return render_to_response("report.html",{"flag":msg})

def revenue(request):
	
	return render_to_response("revenue.html",{})
	
	
def revenue_report(request):

	
	
	date1 = request.POST["value1"]
	date2 = request.POST["value2"]
	lane = request.POST["value3"]
	user = request.POST["value4"]
	
	print date1,date2,user,lane
	ca = date1.split('-')
	
	
	cb = date2.split('-')
	
	report = []
	a = date(int(ca[0]),int(ca[1]),int(ca[2]))
	b = date(int(cb[0]),int(cb[1]),int(cb[2]))
	print a,b
	for dt in rrule(DAILY, dtstart=a, until=b):
		final = dt.strftime("%Y-%m-%d")
			
		data = {}
		tt = Main.objects.filter(Timestamp__startswith = final,Lane_Number =lane ,User_Name = user,Vehicle_Status = "OK",Status = "PERMIT").count()
		qq = Main.objects.filter(Timestamp__startswith = final,Lane_Number =lane ,User_Name = user,Vehicle_Status = "OK",Status = "NA").count()
		rr = Main.objects.filter(Timestamp__startswith = final,Lane_Number =lane ,User_Name = user,Vehicle_Status = "NOTOK",Status = "DENIED").count()
		ww = Main.objects.filter(Timestamp__startswith = final,Lane_Number =lane ,User_Name = user,Vehicle_Class = "LMV-TR").count()
		xx = Main.objects.filter(Timestamp__startswith = final,Lane_Number =lane ,User_Name = user,Vehicle_Class = "LMV").count()
	
		zz = Main.objects.filter(Timestamp__startswith = final,Lane_Number =lane ,User_Name = user,Vehicle_Class = "HMV").count()
		aa = Main.objects.filter(Timestamp__startswith = final,Lane_Number =lane ,User_Name = user).aggregate(Sum('Fine_Amount'))
		
		data['permit'] = tt
		data['ok'] = qq
		data['notok'] = rr
		data['date'] = final
		data['lane'] = lane
		data['user'] = user
		data['lmvtr'] = ww
		data['lmv'] = xx
		data['fine'] = str(aa.values()).replace("[","").replace("]","")
		data['hmv'] = zz
		
		report.append(data)
		
		
			
		
	
		
	
	
	return render_to_response("revenue.html",{'report':report,'date1':date1,'date2':date2,'lane':lane,'user':user})
		
	

def search(request):
	return render_to_response("chart.html",{})

def chart(request):

	#try:
		date1=request.POST["value1"]
		date2=request.POST["value2"]
		#d3=request.POST["searchfilter"]
		print "valessssss::::",date1,date2
		vaues=str(date1)
		vaues1=str(date2)


		data=Main.objects.order_by('Timestamp')
		#for i in data:
			#print i.User_Name
		
		#print "valuessssss",type(d1),type(vaues),type(vaues1),d1,d2
		#day=vaues.split("-")

		#print "dayyyyyyy",day[2],type(day),day,vaues,vaues1
		#day1=d2.split("-")

		#d2="2017-02-09"

		
			
		ca = date1.split('-')
		cb = date2.split('-')
		print "caaaaa",ca,cb,type(ca)
		cha = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "NOTOK").count()

		chb = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "OK").count()
		cht = cha+chb
		
		chaa = (float(cha)/ (cht)) * 100
		chbb = (float(chb)/ (cht)) * 100
		cha1 = int(round(chaa))
		chb1 = int(round(chbb))

		print "chartttttt",ca,cb,cha,chb,cht

		lp1 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "OK",Lane_Number = 1).count()

		ld1 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "NOTOK",Lane_Number = 1).count()
		
		
		lt1 = lp1+ld1
		lanep1 = (float(lp1)/ (lt1)) * 100
		laned1 = (float(ld1)/ (lt1)) * 100

		p1 = int(round(lanep1))
		d1 = int(round(laned1))
		lane1 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Lane_Number = 1)
		full1 = 0
		for x in lane1 :
	
			am = x.Fine_Amount
			full1 += am
		
		fine1 = full1		
		

		lp2 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "OK",Lane_Number = 2).count()

		ld2 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "NOTOK",Lane_Number = 2).count()
		
		lt2 = lp2+ld2
		lanep2 = (float(lp2)/ (lt2)) * 100
		laned2 = (float(ld2)/ (lt2)) * 100

		p2 = int(round(lanep2))
		d2 = int(round(laned2))
		lane2 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Lane_Number = 2)
		full2 = 0
		for x in lane2 :
	
			am = x.Fine_Amount
			full2 += am
		
		fine2 = full2	

		lp3 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "OK",Lane_Number = 3).count()

		ld3 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "NOTOK",Lane_Number = 3).count()
		
		lt3 = lp3+ld3
		lanep3 = (float(lp3)/ (lt3)) * 100
		laned3 = (float(ld3)/ (lt3)) * 100

		p3 = int(round(lanep3))
		d3 = int(round(laned3))
		
		lane3 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Lane_Number = 3)
		full3 = 0
		for x in lane3 :
	
			am = x.Fine_Amount
			full3 += am
		
		fine3 = full3	

		lp4 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "OK",Lane_Number = 4).count()

		ld4 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "NOTOK",Lane_Number = 4).count()
		
		lt4 = lp4+ld4
		lanep4 = (float(lp4)/ (lt4)) * 100
		laned4 = (float(ld4)/ (lt4)) * 100

		p4 = int(round(lanep4))
		d4 = int(round(laned4))

		lane4 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Lane_Number = 4)
		full4 = 0
		for x in lane4 :
	
			am = x.Fine_Amount
			full4 += am
		
		fine4 = full4
		
		
		lp5 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "OK",Lane_Number = 5).count()

		ld5 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "NOTOK",Lane_Number = 5).count()
		
		lt5 = lp5+ld5
		lanep5 = (float(lp5)/ (lt5)) * 100
		laned5 = (float(ld5)/ (lt5)) * 100

		p5 = int(round(lanep5))
		d5 = int(round(laned5))

		lane5 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Lane_Number = 5)
		full5 = 0
		for x in lane5 :
	
			am = x.Fine_Amount
			full5 += am
		
		fine5 = full5

		lp6 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "OK",Lane_Number = 6).count()

		ld6 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Vehicle_Status = "NOTOK",Lane_Number = 6).count()
		
		lt6 = lp6+ld6
		lanep6 = (float(lp6)/ (lt6)) * 100
		laned6 = (float(ld6)/ (lt6)) * 100

		p6 = int(round(lanep6))
		d6 = int(round(laned6))
		
		
		lane6 = Main.objects.filter(Timestamp__gte = datetime.date(int(ca[0]),int(ca[1]),int(ca[2])),Timestamp__lte = datetime.date(int(cb[0]),int(cb[1]),int(cb[2])),Lane_Number = 6)
		full6 = 0
		for x in lane6 :
	
			am = x.Fine_Amount
			full6 += am
		
		fine6 = full6
		
		print lp1,ld1,lt1,p1,d1,lp2,ld2,lt2,p2,d2

		return render_to_response("chart.html",{"fine1":fine1,"fine2":fine2,"fine3":fine3,"fine4":fine4,"fine5":fine5,"fine6":fine6,"date1":date1,"date2":date2,"cha":cha,"chb":chb,"cht":cht,"cha1":cha1,"chb1":chb1,"p1":p1,"d1":d1,"p2":p2,"d2":d2,"p3":p3,"d3":d3,"p4":p4,"d4":d4,"p5":p5,"d5":d5,"p6":p6,"d6":d6})


def logout(request):
	try:
	
		user = request.session['User_Name']
		m = Edit_Lane.objects.filter(User_Name = user).update(User_Name = "NA")
	
			
		
		del request.session['User_Name']
	  
	except:
		pass
	return render_to_response("login.html")



def index(request):
	lane = Edit_Lane.objects.all()
	users = Signup.objects.all()
	context = { 'lane':lane,'users':users}
    	return render(request,'addfield.html', context)

def create(request):
	
	create = Edit_Lane(Lane_Number=request.POST['lane'],Direction=request.POST['direction'])
	create.save()
	mon = Monitor(Lane_Number=request.POST['lane'],Direction=request.POST['direction'])
	mon.save()
	return redirect('/index')

def edit(request, id):
	edit = Edit_Lane.objects.get(id = id)
	context = {'edit':edit}
	return render(request,'editfield.html', context)

def update(request, id):
	lane = request.POST['lane']
	update = Edit_Lane.objects.get(id = id)
	update.Lane_Number = request.POST['lane']
	#update.User_Number = request.POST['name']
	update.Direction = request.POST['direction']
	
	update.save()
	monn = Monitor.objects.get(Lane_Number = lane)
	monn.Lane_Number = request.POST['lane']
	monn.Direction = request.POST['direction']
	monn.save()
	return redirect('/index')

def destroy(request, id):
	des = Edit_Lane.objects.get(id = id)
	lane = des.Lane_Number 
	des.delete()
	dest = Monitor.objects.get(Lane_Number = lane)
	dest.delete()
	return redirect('/index')

def search_image(request):
	try:
		w=request.POST["searchfilter"]
		x = request.POST["value1"]
				
		if w=="vehicle":
			search= Main.objects.filter(Vehicle_Number = x)
			
			for l in search:
				a = l.Vehicle_Number
			
			print"====v=====",x,w	
			context = {"search":search,"a":a}
			return render(request,"test.html",context)
		elif w=="transaction":
			search= Main.objects.filter( Transaction_Id = x)
			for l in search:
				a = l.Transaction_Id
			print"====vvvvv=====",x,w
			return render_to_response("test.html",{'search':search,"a":a})
		else:
			return redirect('/error')

	except:
		
		msg="found some error"
	return render_to_response("test.html",{"flag":msg})


def index_cam(request):
	cam = Edit_Lane.objects.all()
	context = { 'cam':cam}
    	return render(request,'addcamera.html', context)

def create_cam(request):
	la = request.POST['Lane']
	print "===============lane",la
	if la < 11:
		direction = "IN"
	else:
		direction = "OUT"
	
	c = Edit_Lane(Lane_Number=request.POST['Lane'],Direction = direction,Weighbridge_Ip = request.POST['Weighbridge'],Boombarrier_Ip = request.POST['Boombarrier'],Profiler_Ip = request.POST['Profiler'],Anpr_Ip=request.POST['Anpr'],Camera_Ip=request.POST['Camera'],User_Ip = request.POST['User'])
	c.save()
	
	d = Monitor(Lane_Number=request.POST['Lane'],Direction = direction,Weighbridge = request.POST['Weighbridge'],Boombarrier = request.POST['Boombarrier'],Profiler = request.POST['Profiler'],Anpr =request.POST['Anpr'],Camera =request.POST['Camera'],Tolluser = request.POST['User'])
	d.save()
	return redirect('/index_cam')

def edit_cam(request, id):
	edit = Edit_Lane.objects.get(id = id)
	context = {'edit':edit}
	return render(request,'editcamera.html', context)

def update_cam(request, id):
	
	lane = request.POST['Lane']
	la = int(lane)
	print "===============lane",la,type(lane),type(la)
	
	if la < 11:
		direction = "IN"
		print "in"
	else:
		direction = "OUT" 
		print "out"
		
	update = Edit_Lane.objects.get(id = id)
	update.Lane_Number = request.POST['Lane']
	update.Anpr_Ip = request.POST['Anpr']
	update.Camera_Ip = request.POST['Camera']
	update.User_Ip = request.POST['User']
	update.Profiler_Ip = request.POST['Profiler']
	update.Boombarrier_Ip = request.POST['Boombarrier']
	update.Weighbridge_Ip = request.POST['Weighbridge']
	update.Direction = direction
	update.save()

	upmon = Monitor.objects.get(Lane_Number = lane)
	upmon.Lane_Number = request.POST['Lane']
	upmon.Anpr = request.POST['Anpr']
	upmon.Camer = request.POST['Camera']
	upmon.Tolluser = request.POST['User']
	upmon.Profiler = request.POST['Profiler']
	upmon.Boombarrier = request.POST['Boombarrier']
	upmon.Weighbridge = request.POST['Weighbridge']
	upmon.Direction = direction

	upmon.save()
	return redirect('/index_cam')

def destroy_cam(request, id):
	des = Edit_Lane.objects.get(id = id)
	lan = des.Lane_Number 
	des.delete()

	mon = Monitor.objects.get(Lane_Number = lan)
	mon.delete()
	return redirect('/index_cam')	

def index_user(request):
	user = Signup.objects.all()
	context = { 'user':user}
    	return render(request,'adduser.html', context)

def create_user(request):
	t = Datetime.now()
	c = Signup(Created_Time = t,Lane_Number=request.POST['lane'],User_Name = request.POST['user'],First_Name = request.POST['first'],Last_Name = request.POST['last'],User_Type = request.POST['type'],Password = request.POST['pass'])
	c.save()
	return redirect('/index_user')

def edit_user(request, id):
	edit = Signup.objects.get(id = id)
	context = {'edit':edit}
	return render(request,'edituser.html', context)

def update_user(request, id):
	tt = Datetime.now()
	update = Signup.objects.get(id = id)
	update.Lane_Number = request.POST['lane']
	update.User_Name = request.POST['user']
	update.First_Name = request.POST['first']
	update.Last_Name = request.POST['last']
	update.User_Type = request.POST['type']
	update.Password = request.POST['pass']
	update.Updated_Time = tt
	update.save()
	
	return redirect('/index_user')

def destroy_user(request, id):
	des = Signup.objects.get(id = id)
	des.delete()
	return redirect('/index_user')	

def display(request):
    
      
	mon = Ping.objects.all()

    	return render_to_response('monitor.html',{"mon":mon})
		
		
		
		
#<=======================================================end==============================================================================>
	
	
	
	#<======================================== extra function=================================================================>
	
		
	
def go(request):
	if request.session.has_key('User_Name'):
		if request.POST:
			User_Name = request.POST['User_Name']		
			password=request.POST["Password"]
			Number=request.POST["Vehicle"]	
			print "usernameeee ",User_Name
			my_data = Edit_Lane.objects.filter(User_Name=User_Name)
			print"===================c2================="
			for i in my_data:
				toll_name = i.User_Name
				print "tollname isss", toll_name
				toll_number = i.Lane_Number
				toll_dir = i.Direction
				toll_loc = i.Location
			ancam = Edit_Lane.objects.filter(Lane_Number = toll_number)
			for a in ancam:
				cam=a.Camera1
				cam1=a.Camera2

			data=Relay_Panel.objects.filter(id=toll_number)[0]
			if toll_number==1:
				data.Lane_1='False'
				data.save()
			if toll_number==2:
				data.Lane_2='False'
				data.save()
			if toll_number==3:
				data.Lane_3='False'
				data.save()
			return render_to_response("barriergate.html",{'User_Name':User_Name,"Password":password,"lane_N":toll_number,"toll_dir":toll_dir,"toll_loc":toll_loc,"cma":cam,"cam1":cam1,'Vehicle_Number':Number})
	else:
		msg="Antharization"
		return render_to_response("login.html",{'flag':msg})


def signup_data(request):
	if request.session.has_key('User_Name'):
		if request.method=="POST":
		
			#try:
				User_Name=request.POST["username"]	
				password=request.POST["password"]
				confirmpassword=request.POST["confirm_pass"]
				typeofuser = request.POST["default"]
				firstname=request.POST["firstname"]
				lastname=request.POST["lastname"]
				laneno=request.POST['laneno']
				if 'user'==User_Name:
					import re
					if not re.search("[a-z]",User_Name):
						msg="User name should a-z Characters only!"
						return render(request,"sign.html",{'flag':msg,"User_Name":User_Name,"firstname":firstname,"lastname":lastname,"password":password,"confirm_pass":confirmpassword,"laneno":laneno,"Location":Location})

					elif password !=confirmpassword:
						msg="Password don't match!"
						return render(request,'signup.html',{'flag':msg,"User_Name":User_Name,"firstname":firstname,"lastname":lastname,"password":password,"confirm_pass":confirmpassword,"laneno":laneno,"Location":Location})
					elif Signup.objects.filter(User_Name=User_Name).exists() :
						msg="User_Name already exist!Please login or request for new Password!"
						return render_to_response("sign.html",{'flag':msg})
					elif Edit_Lane.objects.filter(Lane_Number=laneno).exists():
						msg="Lane No already exist Please enter different"
						return render_to_response("sign.html",{'flag':msg})

					else:
						obj=Signup(User_Name=User_Name,Password=password,User_Type=typeofuser)
						obj.save()
						data=Edit_Lane(User_Name=User_Name,Lane_Number=laneno)
						data.save()
						msg="Account has been successfully created.Please login!"
						return render_to_response("sign.html",{'flag':msg})
				else:
					if password !=confirmpassword:
						msg="Password don't match!"
						return render(request,'signup.html',{'flag':msg,"User_Name":User_Name,"firstname":firstname,"lastname":lastname,"password":password,"confirm_pass":confirmpassword,"laneno":laneno,"Location":Location})
					elif Signup.objects.filter(User_Name=User_Name).exists() :
						msg="User_Name already exist!Please login or request for new Password!"
						return render_to_response("sign.html",{'flag':msg})
					else:
						obj=Signup(User_Name=User_Name,Password=password,User_Type=typeofuser)
						obj.save()
						msg="Account has been successfully created.Please login!"
						return render_to_response("sign.html",{'flag':msg})
			#except:
			#	msg="User_Name Not Valid!"
	else:
		return redirect("/")
#@login_required(login_url="login/")
def sign_up(request):	
	return render_to_response("sign.html",{})
	
	
def edit_lane(request):
	if request.session.has_key('User_Name'):
		if request.method=="POST":
			User_Name=request.POST["User_Name"]
			password=request.POST["Password"]
			data=Edit_Lane.objects.all()
			tim1=[]	
			for i in data:
				data={}
				data['Lane_Number']=str(i.Lane_Number)
				data["User_Name"]=str(i.User_Name)
				data["Direction"]=str(i.Direction)
				tim1.append(data)
			return render_to_response("edit_lane1.html",{"timesta":tim1,"User_Name":User_Name,"Password":password})
	else:
		msg="Your session has been successfully logout!!"
		return render_to_response("login.html",{})

def edit_lanenumber(request):
	if request.session.has_key('User_Name'):
		name=request.POST.get("User_Name")
		Lane_Number=request.POST.get("Lane_Number")
		status=request.POST.get("Direction")

		Edit_Lane.objects.filter(User_Name=name).update(Lane_Number=Lane_Number,Direction=status)
		msg="Your values are updated successfully"
		data=Edit_Lane.objects.all()
		tim1=[]
		for i in data:
			data={}
			data['Lane_Number']=str(i.Lane_Number)
			data['User_Name']=str(i.User_Name)
			data['Direction']=str(i.Direction)
			tim1.append(data)
		return render(request,"edit_lane1.html",{'flag':msg,"timesta":tim1})
	return redirect("/")
def reset_pass(request):
	if request.session.has_key('User_Name'):
		if request.method=="POST":
			User_Name=request.POST["User_Name"]
			password=REQUEST.post["Password"]

		return render_to_response("reset_password.html",{"User_Name":User_Name,"Password":password})
	else:
		msg="Your session has not created!"
		return render_to_response("login.html",{'flag':msg})

def reset_password(request):
	if request.session.has_key('User_Name'):
		if request.method=="POST":
			User_Name=request.POST['User_Name']
			existingpass=request.POST['ex_password']
			new=request.POST['new_password']
			if  not Signup.objects.filter(user_name=User_Name).exists():
				msg="User_Name does  not Exist!"
				return render(request,"reset_password.html",{"flag":msg,"User_Name":User_Name,"ex_password":existingpass,"new_password":new})  
			elif not Signup.objects.filter(password=existingpass).exists():
				msg="Password does not match with existing!"
				return render(request,"reset_password.html",{'flag':msg,"User_Name":User_Name,"ex_password":existingpass,"new_password":new})
			else:
				Signup.objects.filter(user_name=User_Name).update(password=new)
				msg="Password Updated Successfully!"
				return  render_to_response("vehicledetails.html",{"flag":msg})
	else:
		msg="session will be not created"
		return render_to_response("login.html",{})


   
   

def monitor(s):
    while True:
        sleep(30)
        
        
        print"==========================1======",Datetime.now()
        m = Monitor.objects.filter(Lane_Number = s)
        for i in m:
            w = i.Webapp
            a = i.Anpr
            p= i.Profiler
            wb = i.Weighbridge 
            b = i.Boombarrier
            t = i.Tolluser 
            c = i.Camera
            u = i.User_Name
            l = i.Location
            st = i.Status
        
            response = os.system("ping -c 1 " +w)
            if response == 0:
                cw = "green"
            else:
                cw = "red"

            response = os.system("ping -c 1 " +a)
            if response == 0:
                ca = "green"
            else:
                ca = "red"
        
            response = os.system("ping -c 1 " +p)
            if response == 0:
                cp = "green"
            else:
                cp = "red"
        
            response = os.system("ping -c 1 " +wb)
            if response == 0:
                cwb = "green"
            else:
                cwb = "red"
        
            response = os.system("ping -c 1 " +b)
            if response == 0:
                cb = "green"
            else:
                cb = "red"
            
            response = os.system("ping -c 1 " +t)
            if response == 0:
                ct = "green"
            else:
                ct = "red"
        
            response = os.system("ping -c 1 " +c)
            if response == 0:
                cc = "green"
            else:
                cc = "red"
            
            
            tt = Datetime.now()
        
            p = Ping(id = s,Lane_Number = s,Webapp = cw,Anpr = ca,Profiler = cp,Weighbridge = cwb,Boombarrier = cb,Tolluser = ct,Camera = cc,User_Name = u,Location = l,Status = st,Timestamp = tt)
            p.save()
            
    
            mon = Ping.objects.all()
            
    return monitor()





#threads = []
#for i in range(1,17):
#    t = threading.Thread(target=monitor, args=(i,))
#    threads.append(t)
#    t.start()

