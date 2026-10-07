# EnrollAuthenticatorRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone** | **str** |  | [optional] 
**country** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.enroll_authenticator_request import EnrollAuthenticatorRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EnrollAuthenticatorRequest from a JSON string
enroll_authenticator_request_instance = EnrollAuthenticatorRequest.from_json(json)
# print the JSON string representation of the object
print(EnrollAuthenticatorRequest.to_json())

# convert the object into a dict
enroll_authenticator_request_dict = enroll_authenticator_request_instance.to_dict()
# create an instance of EnrollAuthenticatorRequest from a dict
enroll_authenticator_request_from_dict = EnrollAuthenticatorRequest.from_dict(enroll_authenticator_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


