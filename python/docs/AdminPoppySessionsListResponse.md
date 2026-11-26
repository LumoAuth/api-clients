# AdminPoppySessionsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminPoppySessionsListResponseDataItem]**](AdminPoppySessionsListResponseDataItem.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_sessions_list_response import AdminPoppySessionsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppySessionsListResponse from a JSON string
admin_poppy_sessions_list_response_instance = AdminPoppySessionsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPoppySessionsListResponse.to_json())

# convert the object into a dict
admin_poppy_sessions_list_response_dict = admin_poppy_sessions_list_response_instance.to_dict()
# create an instance of AdminPoppySessionsListResponse from a dict
admin_poppy_sessions_list_response_from_dict = AdminPoppySessionsListResponse.from_dict(admin_poppy_sessions_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


