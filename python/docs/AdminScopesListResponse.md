# AdminScopesListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[OAuthScope]**](OAuthScope.md) |  | [optional] 
**meta** | [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_scopes_list_response import AdminScopesListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminScopesListResponse from a JSON string
admin_scopes_list_response_instance = AdminScopesListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminScopesListResponse.to_json())

# convert the object into a dict
admin_scopes_list_response_dict = admin_scopes_list_response_instance.to_dict()
# create an instance of AdminScopesListResponse from a dict
admin_scopes_list_response_from_dict = AdminScopesListResponse.from_dict(admin_scopes_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


