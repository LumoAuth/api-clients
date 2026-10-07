# AbacPoliciesGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AbacPolicy**](AbacPolicy.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_policies_get_response import AbacPoliciesGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AbacPoliciesGetResponse from a JSON string
abac_policies_get_response_instance = AbacPoliciesGetResponse.from_json(json)
# print the JSON string representation of the object
print(AbacPoliciesGetResponse.to_json())

# convert the object into a dict
abac_policies_get_response_dict = abac_policies_get_response_instance.to_dict()
# create an instance of AbacPoliciesGetResponse from a dict
abac_policies_get_response_from_dict = AbacPoliciesGetResponse.from_dict(abac_policies_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


