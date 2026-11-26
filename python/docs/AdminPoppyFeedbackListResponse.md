# AdminPoppyFeedbackListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminPoppyFeedbackListResponseDataItem]**](AdminPoppyFeedbackListResponseDataItem.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_feedback_list_response import AdminPoppyFeedbackListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyFeedbackListResponse from a JSON string
admin_poppy_feedback_list_response_instance = AdminPoppyFeedbackListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyFeedbackListResponse.to_json())

# convert the object into a dict
admin_poppy_feedback_list_response_dict = admin_poppy_feedback_list_response_instance.to_dict()
# create an instance of AdminPoppyFeedbackListResponse from a dict
admin_poppy_feedback_list_response_from_dict = AdminPoppyFeedbackListResponse.from_dict(admin_poppy_feedback_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


