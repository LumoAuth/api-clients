# AdminPoppyUpdateRequestTasks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mode** | **str** |  | [optional] 
**endpoint** | **str** |  | [optional] 
**excluded_tasks** | **List[Dict[str, object]]** |  | [optional] 
**feedback** | **str** |  | [optional] 
**feedback_endpoint** | **str** |  | [optional] 
**skill_index** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request_tasks import AdminPoppyUpdateRequestTasks

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequestTasks from a JSON string
admin_poppy_update_request_tasks_instance = AdminPoppyUpdateRequestTasks.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequestTasks.to_json())

# convert the object into a dict
admin_poppy_update_request_tasks_dict = admin_poppy_update_request_tasks_instance.to_dict()
# create an instance of AdminPoppyUpdateRequestTasks from a dict
admin_poppy_update_request_tasks_from_dict = AdminPoppyUpdateRequestTasks.from_dict(admin_poppy_update_request_tasks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


