# CreateApprovalRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **str** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] 
**reason** | **str** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] 
**impact** | **str** | One of low, medium, high, critical. | [optional] 
**on_behalf_of** | **str** | User id or email the agent acts for (delegation required). | [optional] 
**meta** | **object** | Optional action metadata. | [optional] 

## Example

```python
from lumoauth_api_client.models.create_approval_request import CreateApprovalRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateApprovalRequest from a JSON string
create_approval_request_instance = CreateApprovalRequest.from_json(json)
# print the JSON string representation of the object
print(CreateApprovalRequest.to_json())

# convert the object into a dict
create_approval_request_dict = create_approval_request_instance.to_dict()
# create an instance of CreateApprovalRequest from a dict
create_approval_request_from_dict = CreateApprovalRequest.from_dict(create_approval_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


