# CreateApprovalResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approval_token** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 
**task_id** | **str** |  | [optional] 
**impact** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.create_approval_response import CreateApprovalResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CreateApprovalResponse from a JSON string
create_approval_response_instance = CreateApprovalResponse.from_json(json)
# print the JSON string representation of the object
print(CreateApprovalResponse.to_json())

# convert the object into a dict
create_approval_response_dict = create_approval_response_instance.to_dict()
# create an instance of CreateApprovalResponse from a dict
create_approval_response_from_dict = CreateApprovalResponse.from_dict(create_approval_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


