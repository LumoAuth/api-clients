# AdminPoppyUpdateRequestAgentItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**endpoint** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**access** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request_agent_item import AdminPoppyUpdateRequestAgentItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequestAgentItem from a JSON string
admin_poppy_update_request_agent_item_instance = AdminPoppyUpdateRequestAgentItem.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequestAgentItem.to_json())

# convert the object into a dict
admin_poppy_update_request_agent_item_dict = admin_poppy_update_request_agent_item_instance.to_dict()
# create an instance of AdminPoppyUpdateRequestAgentItem from a dict
admin_poppy_update_request_agent_item_from_dict = AdminPoppyUpdateRequestAgentItem.from_dict(admin_poppy_update_request_agent_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


