# AdminAgentsSetScopesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | **List[str]** | Required. Replacement list of scopes/capabilities. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_set_scopes_request import AdminAgentsSetScopesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsSetScopesRequest from a JSON string
admin_agents_set_scopes_request_instance = AdminAgentsSetScopesRequest.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsSetScopesRequest.to_json())

# convert the object into a dict
admin_agents_set_scopes_request_dict = admin_agents_set_scopes_request_instance.to_dict()
# create an instance of AdminAgentsSetScopesRequest from a dict
admin_agents_set_scopes_request_from_dict = AdminAgentsSetScopesRequest.from_dict(admin_agents_set_scopes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


