# PutAbacPoliciesUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AbacPolicy**](AbacPolicy.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_abac_policies_update_response import PutAbacPoliciesUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAbacPoliciesUpdateResponse from a JSON string
put_abac_policies_update_response_instance = PutAbacPoliciesUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAbacPoliciesUpdateResponse.to_json())

# convert the object into a dict
put_abac_policies_update_response_dict = put_abac_policies_update_response_instance.to_dict()
# create an instance of PutAbacPoliciesUpdateResponse from a dict
put_abac_policies_update_response_from_dict = PutAbacPoliciesUpdateResponse.from_dict(put_abac_policies_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


