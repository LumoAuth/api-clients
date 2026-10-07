# GetApprovalStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approval_token** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**task_id** | **str** |  | [optional] 
**impact** | **str** |  | [optional] 
**reason** | **str** |  | [optional] 
**responded_at** | **datetime** |  | [optional] 
**approved_by** | [**GetApprovalStatusResponseApprovedBy**](GetApprovalStatusResponseApprovedBy.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_approval_status_response import GetApprovalStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetApprovalStatusResponse from a JSON string
get_approval_status_response_instance = GetApprovalStatusResponse.from_json(json)
# print the JSON string representation of the object
print(GetApprovalStatusResponse.to_json())

# convert the object into a dict
get_approval_status_response_dict = get_approval_status_response_instance.to_dict()
# create an instance of GetApprovalStatusResponse from a dict
get_approval_status_response_from_dict = GetApprovalStatusResponse.from_dict(get_approval_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


