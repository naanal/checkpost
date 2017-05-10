from rest_framework import serializers
from django.contrib.contenttypes.models  import ContentType
from .models import Main,Signup,Edit_Lane
from django.contrib.auth.models import User

from django.db.models import Q
from rest_framework.serializers import (
	CharField,
	ModelSerializer,
	ValidationError,
		
	)

class MainSerializer(serializers.ModelSerializer):
	class Meta:
		model=Main
		fields=(
			'User_Name',
			'Transaction_Id',
			'Lane_Number',
			'Location',
			'Fine_Amount',
			'Comment',
			'Vehicle_Class',
			'Sensor_Height',
			'Sensor_Length',
			'Sensor_Breadth',
			'Laden_Weight',
			'Unladen_Weight',
			'National_Permit',
			'Insurance',
			'Tax',
			'Engine_Cubic_Capacity',
			'Engine_Number',
			'Chassis_Number',
			'Registration_Date',
			'Timestamp',
			'Weight',
			'Direction',
			'Lane_Number',
			'Vehicle_Type',
			'Axle',
			'User_Name',
			'Permit',
			'Fitness',
			'Pollution',
			'Dimension_Height',
			'Dimension_Length',
			'Dimension_Breadth',
			'Vehicle_Number',
			'Vehicle_Status',

		)

class SignupSerializer(serializers.ModelSerializer):
	User_Name=CharField()
	
	
	
	
	class Meta:
		model=Signup
		fields=('User_Name','Password',)
	def validate(self,data):
		user_obj=None
		username=data.get('User_Name',None)
		password=data.get('Password',None)
		if not username and not password:
			raise  ValidationError("username and password is needed")

		user=User.objects.filter(Q(username=username) | Q(password=password)).distinct()
		if user.exists() and user.count()==1:
			user_obj=user.first()
		else:
			raise ValidationError("the username/password is not valid!")
		if user_obj:
			if not user_obj.check_password(password):
				raise ValidationError("Incorrect Password!")
		return data
class Edit_LaneSerializer(serializers.ModelSerializer):
	User_Name=CharField()
	Password=CharField()
	Transaction_Id=CharField()

	class Meta:
		model=Signup
		fields=('User_Name','Password','Transaction_Id')
	def validate(Self,data):
		user_obj=None
		username=data.get('User_Name',None)
		password=data.get('Password',None)
		transaction_id=data.get('Transaction_Id',None)
		if not username:
			raise ValidationError("username  is needed!")
		user=User.objects.filter(Q(username=username)|Q(password=password)).distinct()
		if user.exists() and user.count()==1:
			user_obj=user.first()
		else:
			raise ValidationError("the username/password is not valid!")
		if user_obj:
			if not user_obj.check_password(password) :
				raise ValidationError("Incorrect Password!")
		if user_obj:
			if not Main.objects.filter(Transaction_Id=transaction_id).exists():
				raise ValidationError("Incorrect Transaction_id")
		return data
