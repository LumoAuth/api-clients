# PutAbacPoliciesUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**resource_type** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**effect** | **str** |  | [optional] 
**priority** | **int** |  | [optional] 
**conditions** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_abac_policies_update_request import PutAbacPoliciesUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAbacPoliciesUpdateRequest from a JSON string
put_abac_policies_update_request_instance = PutAbacPoliciesUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAbacPoliciesUpdateRequest.to_json())

# convert the object into a dict
put_abac_policies_update_request_dict = put_abac_policies_update_request_instance.to_dict()
# create an instance of PutAbacPoliciesUpdateRequest from a dict
put_abac_policies_update_request_from_dict = PutAbacPoliciesUpdateRequest.from_dict(put_abac_policies_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


