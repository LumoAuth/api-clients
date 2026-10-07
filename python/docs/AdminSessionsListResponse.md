# AdminSessionsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[UserSession]**](UserSession.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sessions_list_response import AdminSessionsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSessionsListResponse from a JSON string
admin_sessions_list_response_instance = AdminSessionsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSessionsListResponse.to_json())

# convert the object into a dict
admin_sessions_list_response_dict = admin_sessions_list_response_instance.to_dict()
# create an instance of AdminSessionsListResponse from a dict
admin_sessions_list_response_from_dict = AdminSessionsListResponse.from_dict(admin_sessions_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


