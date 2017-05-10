""" Response Builder """
# python import
import json
# application import
from Tollplaza_api_app.utils.response_codes import RESPONSE_MESSAGE, RESPONSE_CODE
from Tollplaza_api_app.utils.response_codes import RESPONSE_MESSAGES_DICT
from Tollplaza_api_app.utils.response_codes import ERROR_MESSAGE, ERROR_CODE


class ResponseData(object):

    """The ResponseData object. It creates a response returned in json"""

    def __init__(self):
       
        self.code = None

    def get_response_json(self, **kargs):
        """ get_response_json """
        for key, value in kargs.iteritems():
            setattr(self, key, value)
        self.message = RESPONSE_MESSAGE[self.code]
        self.responsecode = RESPONSE_CODE[self.code]
        delattr(self, "code")
        response_json = json.dumps(self.__dict__)

        return response_json

    def get_error_json(self, **kargs):
        """ get_error_json """
        for key, value in kargs.iteritems():
            setattr(self, key, value)
        self.description = ERROR_MESSAGE[self.code]
        self.responsecode = ERROR_CODE[self.code]
        delattr(self, "code")
        error_json = {'error': self.__dict__}
        response_json = json.dumps(error_json)

        return response_json


def get_response_json(**kargs):
    """
    This will create the success response for every services
    """
    response_list = (
        'uri',
        'username',
        'date',
        'responsecode',
        'data',
        'Direction',
        'Vehicle_Number',
        'Count',)
    response_dict = {
        'message': RESPONSE_MESSAGES_DICT.get(kargs['responsecode'])}
    for key, value in kargs.iteritems():
        if key in response_list:
            response_dict[key] = value

    return response_dict


def get_error_json(**kargs):
    """
    This will create the error response for every services
    """
    response_list = ('username', 'description', 'detail', 'responsecode','uri',)
    err_response_dict = {
        'description': RESPONSE_MESSAGES_DICT.get(kargs['responsecode'])}
    for key, value in kargs.iteritems():
        if key in response_list:
            err_response_dict[key] = value

    response_dict = {"error": err_response_dict}

    return response_dict


def get_req_meta_data(request):
    """
    This will gety the meta data for every services
    """
    uri = str(request.path)
    lang = str(request.META.get('HTTP_ACCEPT_LANGUAGE'))
    response = {'uri': uri, 'lang': lang}
    return response


def convert_string_json(string_data):
    """
    Convert the json response created back from string to json
    to log errors
    This is to avoid calling import json in all views
    """
    json_data = json.loads(string_data)
    return json_data
