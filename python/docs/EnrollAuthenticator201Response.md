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
**deep_link** | **str** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional] 
**deep_link_android** | **str** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional] 
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


