# PoppyTasksResponse

The tasks response (Personal Agent Protocol, section 9).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**excluded_tasks** | [**List[PoppyTasksResponseExcludedTasksInner]**](PoppyTasksResponseExcludedTasksInner.md) |  | [optional] 
**skill_index** | **Dict[str, object]** |  | [optional] 
**feedback** | [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_tasks_response import PoppyTasksResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyTasksResponse from a JSON string
poppy_tasks_response_instance = PoppyTasksResponse.from_json(json)
# print the JSON string representation of the object
print(PoppyTasksResponse.to_json())

# convert the object into a dict
poppy_tasks_response_dict = poppy_tasks_response_instance.to_dict()
# create an instance of PoppyTasksResponse from a dict
poppy_tasks_response_from_dict = PoppyTasksResponse.from_dict(poppy_tasks_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


