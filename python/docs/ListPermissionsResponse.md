# ListPermissionsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**permissions** | [**List[ListPermissionsResponsePermissionsItem]**](ListPermissionsResponsePermissionsItem.md) |  | [optional] 
**count** | **int** |  | [optional] 
**data** | [**List[ListPermissionsResponseDataItem]**](ListPermissionsResponseDataItem.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_permissions_response import ListPermissionsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListPermissionsResponse from a JSON string
list_permissions_response_instance = ListPermissionsResponse.from_json(json)
# print the JSON string representation of the object
print(ListPermissionsResponse.to_json())

# convert the object into a dict
list_permissions_response_dict = list_permissions_response_instance.to_dict()
# create an instance of ListPermissionsResponse from a dict
list_permissions_response_from_dict = ListPermissionsResponse.from_dict(list_permissions_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


