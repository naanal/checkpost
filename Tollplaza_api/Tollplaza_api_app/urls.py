
from django.conf.urls import include, url,patterns
from django.contrib import admin
from Tollplaza_api_app.views import *



from django.conf import settings
from django.conf.urls.static import static 
from django.contrib.auth import views as auth_views
from .views import *
from django.views.decorators.csrf import csrf_exempt
from rest_framework.authtoken import views 
from rest_framework.authtoken import views as rest_framework_views





urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'Tollplaza.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    #url(r'^admin/', include(admin.site.urls)),


    
    url(r'^$',csrf_exempt(UserRegister.as_view())),
    url(r'^DisplayView/',csrf_exempt(DisplayView.as_view())),
    url(r'^login/',csrf_exempt(UserLogin.as_view())),
    url(r'^VehicleCount/(?P<vehiclenumber>[\w:-]+)',csrf_exempt(VehicleCount.as_view())),
    url(r'^api-token-auth/', views.obtain_auth_token),
    url(r'^Display/',csrf_exempt(Display.as_view())),
    url(r'^user/',csrf_exempt(UserValidation.as_view())),
    #url(r'^get_auth_token/$', rest_framework_views.obtain_auth_token),
    url(r'^get_auth_token/$', rest_framework_views.obtain_auth_token, name='get_auth_token'),

    
)
if settings.DEBUG:

    urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns+=static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
