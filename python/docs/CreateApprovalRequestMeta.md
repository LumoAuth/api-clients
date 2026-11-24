# CreateApprovalRequestMeta

Optional structured details shown on the approval card. Only the keys below are kept (others are dropped); every string is cleaned and shortened.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **str** |  | [optional] 
**host** | **str** |  | [optional] 
**tool** | **str** |  | [optional] 
**server** | **str** |  | [optional] 
**capability** | **str** |  | [optional] 
**risk** | **str** |  | [optional] 
**why** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**args** | **List[str]** | Argument lines; at most 5 are kept, each cut to 240 characters. | [optional] 
**arguments_sha256** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.create_approval_request_meta import CreateApprovalRequestMeta

# TODO update the JSON string below
json = "{}"
# create an instance of CreateApprovalRequestMeta from a JSON string
create_approval_request_meta_instance = CreateApprovalRequestMeta.from_json(json)
# print the JSON string representation of the object
print(CreateApprovalRequestMeta.to_json())

# convert the object into a dict
create_approval_request_meta_dict = create_approval_request_meta_instance.to_dict()
# create an instance of CreateApprovalRequestMeta from a dict
create_approval_request_meta_from_dict = CreateApprovalRequestMeta.from_dict(create_approval_request_meta_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


