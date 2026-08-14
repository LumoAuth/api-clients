# CompleteTaskResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**completed_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.complete_task_response import CompleteTaskResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompleteTaskResponse from a JSON string
complete_task_response_instance = CompleteTaskResponse.from_json(json)
# print the JSON string representation of the object
print(CompleteTaskResponse.to_json())

# convert the object into a dict
complete_task_response_dict = complete_task_response_instance.to_dict()
# create an instance of CompleteTaskResponse from a dict
complete_task_response_from_dict = CompleteTaskResponse.from_dict(complete_task_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


