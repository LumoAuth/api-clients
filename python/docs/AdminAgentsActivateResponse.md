# AdminAgentsActivateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **object** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_activate_response import AdminAgentsActivateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsActivateResponse from a JSON string
admin_agents_activate_response_instance = AdminAgentsActivateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsActivateResponse.to_json())

# convert the object into a dict
admin_agents_activate_response_dict = admin_agents_activate_response_instance.to_dict()
# create an instance of AdminAgentsActivateResponse from a dict
admin_agents_activate_response_from_dict = AdminAgentsActivateResponse.from_dict(admin_agents_activate_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


