# AbacPoliciesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**slug** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**resource_type** | **str** |  | 
**action** | **str** | One action, a comma-separated list of actions, or *. | 
**effect** | **str** |  | 
**priority** | **int** |  | [optional] 
**conditions** | **Dict[str, object]** | A condition group: {\&quot;operator\&quot;: \&quot;AND\&quot;|\&quot;OR\&quot;, \&quot;conditions\&quot;: [...]}. | 

## Example

```python
from lumoauth_api_client.models.abac_policies_create_request import AbacPoliciesCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AbacPoliciesCreateRequest from a JSON string
abac_policies_create_request_instance = AbacPoliciesCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AbacPoliciesCreateRequest.to_json())

# convert the object into a dict
abac_policies_create_request_dict = abac_policies_create_request_instance.to_dict()
# create an instance of AbacPoliciesCreateRequest from a dict
abac_policies_create_request_from_dict = AbacPoliciesCreateRequest.from_dict(abac_policies_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


