# GenerateRecoveryCodesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**codes** | **List[str]** |  | [optional] 
**remaining** | **int** |  | [optional] 
**generated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.generate_recovery_codes_response import GenerateRecoveryCodesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GenerateRecoveryCodesResponse from a JSON string
generate_recovery_codes_response_instance = GenerateRecoveryCodesResponse.from_json(json)
# print the JSON string representation of the object
print(GenerateRecoveryCodesResponse.to_json())

# convert the object into a dict
generate_recovery_codes_response_dict = generate_recovery_codes_response_instance.to_dict()
# create an instance of GenerateRecoveryCodesResponse from a dict
generate_recovery_codes_response_from_dict = GenerateRecoveryCodesResponse.from_dict(generate_recovery_codes_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


