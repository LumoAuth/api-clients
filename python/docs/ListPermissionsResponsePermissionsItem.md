# ListPermissionsResponsePermissionsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slug** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source** | **str** | role:&lt;role name&gt; that grants it | [optional] 

## Example

```python
from lumoauth_api_client.models.list_permissions_response_permissions_item import ListPermissionsResponsePermissionsItem

# TODO update the JSON string below
json = "{}"
# create an instance of ListPermissionsResponsePermissionsItem from a JSON string
list_permissions_response_permissions_item_instance = ListPermissionsResponsePermissionsItem.from_json(json)
# print the JSON string representation of the object
print(ListPermissionsResponsePermissionsItem.to_json())

# convert the object into a dict
list_permissions_response_permissions_item_dict = list_permissions_response_permissions_item_instance.to_dict()
# create an instance of ListPermissionsResponsePermissionsItem from a dict
list_permissions_response_permissions_item_from_dict = ListPermissionsResponsePermissionsItem.from_dict(list_permissions_response_permissions_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


