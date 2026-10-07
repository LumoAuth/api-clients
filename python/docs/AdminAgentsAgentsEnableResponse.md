# AdminAgentsAgentsEnableResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**agent** | **object** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_agents_enable_response import AdminAgentsAgentsEnableResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsAgentsEnableResponse from a JSON string
admin_agents_agents_enable_response_instance = AdminAgentsAgentsEnableResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsAgentsEnableResponse.to_json())

# convert the object into a dict
admin_agents_agents_enable_response_dict = admin_agents_agents_enable_response_instance.to_dict()
# create an instance of AdminAgentsAgentsEnableResponse from a dict
admin_agents_agents_enable_response_from_dict = AdminAgentsAgentsEnableResponse.from_dict(admin_agents_agents_enable_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


