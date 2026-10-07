# AuthenticationSettingsProgressiveProfiling


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**rules** | **List[Dict[str, object]]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.authentication_settings_progressive_profiling import AuthenticationSettingsProgressiveProfiling

# TODO update the JSON string below
json = "{}"
# create an instance of AuthenticationSettingsProgressiveProfiling from a JSON string
authentication_settings_progressive_profiling_instance = AuthenticationSettingsProgressiveProfiling.from_json(json)
# print the JSON string representation of the object
print(AuthenticationSettingsProgressiveProfiling.to_json())

# convert the object into a dict
authentication_settings_progressive_profiling_dict = authentication_settings_progressive_profiling_instance.to_dict()
# create an instance of AuthenticationSettingsProgressiveProfiling from a dict
authentication_settings_progressive_profiling_from_dict = AuthenticationSettingsProgressiveProfiling.from_dict(authentication_settings_progressive_profiling_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


