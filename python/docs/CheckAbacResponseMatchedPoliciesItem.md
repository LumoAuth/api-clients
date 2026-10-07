# CheckAbacResponseMatchedPoliciesItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.check_abac_response_matched_policies_item import CheckAbacResponseMatchedPoliciesItem

# TODO update the JSON string below
json = "{}"
# create an instance of CheckAbacResponseMatchedPoliciesItem from a JSON string
check_abac_response_matched_policies_item_instance = CheckAbacResponseMatchedPoliciesItem.from_json(json)
# print the JSON string representation of the object
print(CheckAbacResponseMatchedPoliciesItem.to_json())

# convert the object into a dict
check_abac_response_matched_policies_item_dict = check_abac_response_matched_policies_item_instance.to_dict()
# create an instance of CheckAbacResponseMatchedPoliciesItem from a dict
check_abac_response_matched_policies_item_from_dict = CheckAbacResponseMatchedPoliciesItem.from_dict(check_abac_response_matched_policies_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


