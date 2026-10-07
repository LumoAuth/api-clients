# AdminAgentsCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **object** | The created agent, including the one-time secret/api key. | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_create_response import AdminAgentsCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsCreateResponse from a JSON string
admin_agents_create_response_instance = AdminAgentsCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsCreateResponse.to_json())

# convert the object into a dict
admin_agents_create_response_dict = admin_agents_create_response_instance.to_dict()
# create an instance of AdminAgentsCreateResponse from a dict
admin_agents_create_response_from_dict = AdminAgentsCreateResponse.from_dict(admin_agents_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


