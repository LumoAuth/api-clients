# GetRecoveryCodeStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remaining** | **int** |  | [optional] 
**generated_at** | **datetime** |  | [optional] 
**low** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_recovery_code_status_response import GetRecoveryCodeStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetRecoveryCodeStatusResponse from a JSON string
get_recovery_code_status_response_instance = GetRecoveryCodeStatusResponse.from_json(json)
# print the JSON string representation of the object
print(GetRecoveryCodeStatusResponse.to_json())

# convert the object into a dict
get_recovery_code_status_response_dict = get_recovery_code_status_response_instance.to_dict()
# create an instance of GetRecoveryCodeStatusResponse from a dict
get_recovery_code_status_response_from_dict = GetRecoveryCodeStatusResponse.from_dict(get_recovery_code_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


