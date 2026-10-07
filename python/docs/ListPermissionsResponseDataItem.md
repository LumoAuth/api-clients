# ListPermissionsResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slug** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_permissions_response_data_item import ListPermissionsResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of ListPermissionsResponseDataItem from a JSON string
list_permissions_response_data_item_instance = ListPermissionsResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(ListPermissionsResponseDataItem.to_json())

# convert the object into a dict
list_permissions_response_data_item_dict = list_permissions_response_data_item_instance.to_dict()
# create an instance of ListPermissionsResponseDataItem from a dict
list_permissions_response_data_item_from_dict = ListPermissionsResponseDataItem.from_dict(list_permissions_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


