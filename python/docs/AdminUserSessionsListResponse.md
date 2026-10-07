# AdminUserSessionsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[UserSession]**](UserSession.md) |  | [optional] 
**meta** | [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_user_sessions_list_response import AdminUserSessionsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminUserSessionsListResponse from a JSON string
admin_user_sessions_list_response_instance = AdminUserSessionsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminUserSessionsListResponse.to_json())

# convert the object into a dict
admin_user_sessions_list_response_dict = admin_user_sessions_list_response_instance.to_dict()
# create an instance of AdminUserSessionsListResponse from a dict
admin_user_sessions_list_response_from_dict = AdminUserSessionsListResponse.from_dict(admin_user_sessions_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


