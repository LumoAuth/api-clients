# CreateTaskRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Optional human-readable task name. | [optional] 
**type** | **str** | Optional task type for categorization. | [optional] 
**parent_task_id** | **str** | Optional parent task id for nested agent chains. | [optional] 
**on_behalf_of** | **str** | Optional delegation user email (requires delegation permission). | [optional] 

## Example

```python
from lumoauth_api_client.models.create_task_request import CreateTaskRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateTaskRequest from a JSON string
create_task_request_instance = CreateTaskRequest.from_json(json)
# print the JSON string representation of the object
print(CreateTaskRequest.to_json())

# convert the object into a dict
create_task_request_dict = create_task_request_instance.to_dict()
# create an instance of CreateTaskRequest from a dict
create_task_request_from_dict = CreateTaskRequest.from_dict(create_task_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


