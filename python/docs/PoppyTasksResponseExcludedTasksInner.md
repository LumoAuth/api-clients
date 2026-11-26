# PoppyTasksResponseExcludedTasksInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task** | **str** |  | 
**alternative** | [**PoppyTasksResponseExcludedTasksInnerAlternative**](PoppyTasksResponseExcludedTasksInnerAlternative.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_tasks_response_excluded_tasks_inner import PoppyTasksResponseExcludedTasksInner

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyTasksResponseExcludedTasksInner from a JSON string
poppy_tasks_response_excluded_tasks_inner_instance = PoppyTasksResponseExcludedTasksInner.from_json(json)
# print the JSON string representation of the object
print(PoppyTasksResponseExcludedTasksInner.to_json())

# convert the object into a dict
poppy_tasks_response_excluded_tasks_inner_dict = poppy_tasks_response_excluded_tasks_inner_instance.to_dict()
# create an instance of PoppyTasksResponseExcludedTasksInner from a dict
poppy_tasks_response_excluded_tasks_inner_from_dict = PoppyTasksResponseExcludedTasksInner.from_dict(poppy_tasks_response_excluded_tasks_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


