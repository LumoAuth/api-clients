# CimdCheckResultShadowClient

Present when this organization has already resolved the client at least once.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**last_fetched_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.cimd_check_result_shadow_client import CimdCheckResultShadowClient

# TODO update the JSON string below
json = "{}"
# create an instance of CimdCheckResultShadowClient from a JSON string
cimd_check_result_shadow_client_instance = CimdCheckResultShadowClient.from_json(json)
# print the JSON string representation of the object
print(CimdCheckResultShadowClient.to_json())

# convert the object into a dict
cimd_check_result_shadow_client_dict = cimd_check_result_shadow_client_instance.to_dict()
# create an instance of CimdCheckResultShadowClient from a dict
cimd_check_result_shadow_client_from_dict = CimdCheckResultShadowClient.from_dict(cimd_check_result_shadow_client_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


