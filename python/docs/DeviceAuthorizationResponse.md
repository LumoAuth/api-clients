# DeviceAuthorizationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_code** | **str** | High-entropy code the device presents at the token endpoint. | 
**user_code** | **str** | Short code the end user enters at verification_uri. | 
**verification_uri** | **str** | Absolute URL of the user verification page (GET …/oauth/device). | 
**verification_uri_complete** | **str** | verification_uri with the user_code pre-filled. | 
**expires_in** | **int** | Lifetime of device_code and user_code in seconds. | 
**interval** | **int** | Minimum polling interval in seconds. | 

## Example

```python
from lumoauth_api_client.models.device_authorization_response import DeviceAuthorizationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DeviceAuthorizationResponse from a JSON string
device_authorization_response_instance = DeviceAuthorizationResponse.from_json(json)
# print the JSON string representation of the object
print(DeviceAuthorizationResponse.to_json())

# convert the object into a dict
device_authorization_response_dict = device_authorization_response_instance.to_dict()
# create an instance of DeviceAuthorizationResponse from a dict
device_authorization_response_from_dict = DeviceAuthorizationResponse.from_dict(device_authorization_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


