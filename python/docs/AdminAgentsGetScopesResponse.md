# AdminAgentsGetScopesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[str]** |  | [optional] 
**pagination** | **object** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_get_scopes_response import AdminAgentsGetScopesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsGetScopesResponse from a JSON string
admin_agents_get_scopes_response_instance = AdminAgentsGetScopesResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsGetScopesResponse.to_json())

# convert the object into a dict
admin_agents_get_scopes_response_dict = admin_agents_get_scopes_response_instance.to_dict()
# create an instance of AdminAgentsGetScopesResponse from a dict
admin_agents_get_scopes_response_from_dict = AdminAgentsGetScopesResponse.from_dict(admin_agents_get_scopes_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


