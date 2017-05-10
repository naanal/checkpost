# Backend Diabeat #

Backend  is a Tollplaza web application to provide API for mobile application Tollplaza,Its developed in Django 1.8 with python 2.7 and recommended database is MySQL

## How to deploy Backend Tollplaza? ##

### Step1: get the source code ###

* you can clone it (if you have the permission)

### Step2: Setup Environment ###

* Create a virtual environment for Backend Diabeat
* Install requirments.txt
* pip install -r /path/to/requirements.txt

### Step3: Setup Database(Recommented MySQL) ###

* install mysql server.
* create a new database.
* update database details in settings.py (db name,username,password,port)

### Step4: Migrate and Load initial data ###

* Open terminal or commend-prompt go to the project path using cd comment 
* Make models using python manage.py migrate
* Load initial data for TreatmentPlan and Diabete using "python manage.py loaddata registration/fixture/initial_data.xml" 
* Load initial data for CommonDrug and AllDrug using "python manage.py loaddata beingwelllogging/fixture/initial_data.xml"
* Runserver using "python manage.py runserver"
* Application will run your localhost http://localhost:8000/



## API Document ##

will be updated