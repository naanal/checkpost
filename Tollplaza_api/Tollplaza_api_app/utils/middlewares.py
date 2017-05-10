
from Tollplaza_api_app.models import Main
from rest_framework.authtoken.models import  Token
from django.contrib.auth import authenticate
import urllib2
import datetime
import pytz
import json
import requests



def curl_data(username,password,request):
    '''method to generate access token'''
    
    user=username
    print "username",type(user)
    
    #import pdb;pdb.set_trace();
    user=authenticate(username=username,password=password)

    
    
    data = "&grant_type=password&username=" + username + \
    "&password=" + password + ""
    if request.is_secure():
        url='https://'+request.META['HTTP_HOST']+'/o/token/'
        print "urlrlrlrlrlllllllllllllllllrlrlrlr",url
    else:
        url='http://'+request.META['HTTP_HOST']+'/o/token/'
    myurl='http://'+request.META['HTTP_HOST']+'/login/'
    token=Token.objects.get(user=user)
    #data={'User_Name':user,"Password":password
    print "my urls issssss",myurl
    

    #request.add_header('Authorization','Token %s' % token.key)
    
    #request.get(url,headers=headers)
    url=urllib2.Request(url,data,{'Content-Type':'application/x-www-form-urlencoded'})
    print "url dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa is",url
    #access_token.expires = datetime.datetime.utcnow().replace(tzinfo=pytz.utc) + datetime.timedelta(days=200)
    #access_token.scope += " offline"
    #access_token.save()
    #return json.loads(result)
    try:
        
        access_token = Token.objects.get(user=user)
        access_token.expires = datetime.datetime.utcnow().replace(tzinfo=pytz.utc) + datetime.timedelta(days=200)
        access_token.save()
        headers={'Authorization':'Token '+access_token.key}

        return headers


    except Exception:
        return {'error': 'Invalid creds'}