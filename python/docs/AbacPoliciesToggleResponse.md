# AbacPoliciesToggleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AbacPolicy**](AbacPolicy.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_policies_toggle_response import AbacPoliciesToggleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AbacPoliciesToggleResponse from a JSON string
abac_policies_toggle_response_instance = AbacPoliciesToggleResponse.from_json(json)
# print the JSON string representation of the object
print(AbacPoliciesToggleResponse.to_json())

# convert the object into a dict
abac_policies_toggle_response_dict = abac_policies_toggle_response_instance.to_dict()
# create an instance of AbacPoliciesToggleResponse from a dict
abac_policies_toggle_response_from_dict = AbacPoliciesToggleResponse.from_dict(abac_policies_toggle_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


