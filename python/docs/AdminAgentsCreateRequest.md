# AdminAgentsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Required. Human-readable agent name. | [optional] 
**description** | **str** |  | [optional] 
**capabilities** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_create_request import AdminAgentsCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsCreateRequest from a JSON string
admin_agents_create_request_instance = AdminAgentsCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsCreateRequest.to_json())

# convert the object into a dict
admin_agents_create_request_dict = admin_agents_create_request_instance.to_dict()
# create an instance of AdminAgentsCreateRequest from a dict
admin_agents_create_request_from_dict = AdminAgentsCreateRequest.from_dict(admin_agents_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


