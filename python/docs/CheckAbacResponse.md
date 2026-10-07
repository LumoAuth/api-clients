# CheckAbacResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **bool** |  | [optional] 
**reason** | **str** |  | [optional] 
**matched_policies** | [**List[CheckAbacResponseMatchedPoliciesItem]**](CheckAbacResponseMatchedPoliciesItem.md) | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional] 
**user_id** | **str** |  | [optional] 
**resource_type** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**resource_id** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.check_abac_response import CheckAbacResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CheckAbacResponse from a JSON string
check_abac_response_instance = CheckAbacResponse.from_json(json)
# print the JSON string representation of the object
print(CheckAbacResponse.to_json())

# convert the object into a dict
check_abac_response_dict = check_abac_response_instance.to_dict()
# create an instance of CheckAbacResponse from a dict
check_abac_response_from_dict = CheckAbacResponse.from_dict(check_abac_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


