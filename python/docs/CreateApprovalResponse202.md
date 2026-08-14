# CreateApprovalResponse202


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**message** | **str** |  | [optional] 
**task_id** | **str** |  | [optional] 
**impact** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.create_approval_response202 import CreateApprovalResponse202

# TODO update the JSON string below
json = "{}"
# create an instance of CreateApprovalResponse202 from a JSON string
create_approval_response202_instance = CreateApprovalResponse202.from_json(json)
# print the JSON string representation of the object
print(CreateApprovalResponse202.to_json())

# convert the object into a dict
create_approval_response202_dict = create_approval_response202_instance.to_dict()
# create an instance of CreateApprovalResponse202 from a dict
create_approval_response202_from_dict = CreateApprovalResponse202.from_dict(create_approval_response202_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


