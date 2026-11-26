# AdminPoppyUpdateRequestApisItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request_apis_item import AdminPoppyUpdateRequestApisItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequestApisItem from a JSON string
admin_poppy_update_request_apis_item_instance = AdminPoppyUpdateRequestApisItem.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequestApisItem.to_json())

# convert the object into a dict
admin_poppy_update_request_apis_item_dict = admin_poppy_update_request_apis_item_instance.to_dict()
# create an instance of AdminPoppyUpdateRequestApisItem from a dict
admin_poppy_update_request_apis_item_from_dict = AdminPoppyUpdateRequestApisItem.from_dict(admin_poppy_update_request_apis_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


