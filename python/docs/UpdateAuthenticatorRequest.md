# UpdateAuthenticatorRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.update_authenticator_request import UpdateAuthenticatorRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAuthenticatorRequest from a JSON string
update_authenticator_request_instance = UpdateAuthenticatorRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateAuthenticatorRequest.to_json())

# convert the object into a dict
update_authenticator_request_dict = update_authenticator_request_instance.to_dict()
# create an instance of UpdateAuthenticatorRequest from a dict
update_authenticator_request_from_dict = UpdateAuthenticatorRequest.from_dict(update_authenticator_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


