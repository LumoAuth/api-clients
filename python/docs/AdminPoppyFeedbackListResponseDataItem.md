# AdminPoppyFeedbackListResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**task** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**client_id** | **str** |  | [optional] 
**signed_in** | **bool** |  | [optional] 
**session_id** | **int** |  | [optional] 
**created_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_feedback_list_response_data_item import AdminPoppyFeedbackListResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyFeedbackListResponseDataItem from a JSON string
admin_poppy_feedback_list_response_data_item_instance = AdminPoppyFeedbackListResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyFeedbackListResponseDataItem.to_json())

# convert the object into a dict
admin_poppy_feedback_list_response_data_item_dict = admin_poppy_feedback_list_response_data_item_instance.to_dict()
# create an instance of AdminPoppyFeedbackListResponseDataItem from a dict
admin_poppy_feedback_list_response_data_item_from_dict = AdminPoppyFeedbackListResponseDataItem.from_dict(admin_poppy_feedback_list_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


