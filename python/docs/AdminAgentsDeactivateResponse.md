# AdminAgentsDeactivateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **object** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_deactivate_response import AdminAgentsDeactivateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsDeactivateResponse from a JSON string
admin_agents_deactivate_response_instance = AdminAgentsDeactivateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsDeactivateResponse.to_json())

# convert the object into a dict
admin_agents_deactivate_response_dict = admin_agents_deactivate_response_instance.to_dict()
# create an instance of AdminAgentsDeactivateResponse from a dict
admin_agents_deactivate_response_from_dict = AdminAgentsDeactivateResponse.from_dict(admin_agents_deactivate_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


