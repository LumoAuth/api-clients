# AdminAgentsRotateCredentialsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **object** | The rotated credentials, including the one-time secret. | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_rotate_credentials_response import AdminAgentsRotateCredentialsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsRotateCredentialsResponse from a JSON string
admin_agents_rotate_credentials_response_instance = AdminAgentsRotateCredentialsResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsRotateCredentialsResponse.to_json())

# convert the object into a dict
admin_agents_rotate_credentials_response_dict = admin_agents_rotate_credentials_response_instance.to_dict()
# create an instance of AdminAgentsRotateCredentialsResponse from a dict
admin_agents_rotate_credentials_response_from_dict = AdminAgentsRotateCredentialsResponse.from_dict(admin_agents_rotate_credentials_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


