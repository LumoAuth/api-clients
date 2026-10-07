# AbacPolicy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**slug** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**resource_type** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**effect** | **str** |  | [optional] 
**priority** | **int** |  | [optional] 
**conditions** | **Dict[str, object]** |  | [optional] 
**is_active** | **bool** |  | [optional] 
**is_system** | **bool** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**updated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_policy import AbacPolicy

# TODO update the JSON string below
json = "{}"
# create an instance of AbacPolicy from a JSON string
abac_policy_instance = AbacPolicy.from_json(json)
# print the JSON string representation of the object
print(AbacPolicy.to_json())

# convert the object into a dict
abac_policy_dict = abac_policy_instance.to_dict()
# create an instance of AbacPolicy from a dict
abac_policy_from_dict = AbacPolicy.from_dict(abac_policy_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


