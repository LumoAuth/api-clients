# AdminAgentsSetScopesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[str]** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_set_scopes_response import AdminAgentsSetScopesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsSetScopesResponse from a JSON string
admin_agents_set_scopes_response_instance = AdminAgentsSetScopesResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsSetScopesResponse.to_json())

# convert the object into a dict
admin_agents_set_scopes_response_dict = admin_agents_set_scopes_response_instance.to_dict()
# create an instance of AdminAgentsSetScopesResponse from a dict
admin_agents_set_scopes_response_from_dict = AdminAgentsSetScopesResponse.from_dict(admin_agents_set_scopes_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


