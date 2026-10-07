# AdminAgentsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[object]** |  | [optional] 
**meta** | **object** |  | [optional] 
**pagination** | **object** |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_list_response import AdminAgentsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsListResponse from a JSON string
admin_agents_list_response_instance = AdminAgentsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsListResponse.to_json())

# convert the object into a dict
admin_agents_list_response_dict = admin_agents_list_response_instance.to_dict()
# create an instance of AdminAgentsListResponse from a dict
admin_agents_list_response_from_dict = AdminAgentsListResponse.from_dict(admin_agents_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


