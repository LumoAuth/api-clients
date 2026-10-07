# EnrollAuthenticator201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**otpauth_uri** | **str** |  | [optional] 
**secret** | **str** |  | [optional] 
**secret_grouped** | **str** |  | [optional] 
**qr_data_uri** | **str** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 
**masked_phone** | **str** |  | [optional] 
**resend_after** | **int** | Seconds until a new code may be requested | [optional] 
**masked_email** | **str** |  | [optional] 
**deep_link** | **str** |  | [optional] 
**activation_code** | **str** |  | [optional] 
**public_key** | **object** | WebAuthn PublicKeyCredentialCreationOptions | [optional] 

## Example

```python
from lumoauth_api_client.models.enroll_authenticator201_response import EnrollAuthenticator201Response

# TODO update the JSON string below
json = "{}"
# create an instance of EnrollAuthenticator201Response from a JSON string
enroll_authenticator201_response_instance = EnrollAuthenticator201Response.from_json(json)
# print the JSON string representation of the object
print(EnrollAuthenticator201Response.to_json())

# convert the object into a dict
enroll_authenticator201_response_dict = enroll_authenticator201_response_instance.to_dict()
# create an instance of EnrollAuthenticator201Response from a dict
enroll_authenticator201_response_from_dict = EnrollAuthenticator201Response.from_dict(enroll_authenticator201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


