# AbacPoliciesCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AbacPolicy**](AbacPolicy.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_policies_create_response import AbacPoliciesCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AbacPoliciesCreateResponse from a JSON string
abac_policies_create_response_instance = AbacPoliciesCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AbacPoliciesCreateResponse.to_json())

# convert the object into a dict
abac_policies_create_response_dict = abac_policies_create_response_instance.to_dict()
# create an instance of AbacPoliciesCreateResponse from a dict
abac_policies_create_response_from_dict = AbacPoliciesCreateResponse.from_dict(abac_policies_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


