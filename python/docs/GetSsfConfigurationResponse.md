# GetSsfConfigurationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**spec_version** | **str** |  | [optional] 
**issuer** | **str** |  | [optional] 
**jwks_uri** | **str** |  | [optional] 
**delivery_methods_supported** | **List[str]** |  | [optional] 
**configuration_endpoint** | **str** |  | [optional] 
**verification_endpoint** | **str** |  | [optional] 
**authorization_schemes** | [**List[GetSsfConfigurationResponseAuthorizationSchemesItem]**](GetSsfConfigurationResponseAuthorizationSchemesItem.md) |  | [optional] 
**events_supported** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_ssf_configuration_response import GetSsfConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetSsfConfigurationResponse from a JSON string
get_ssf_configuration_response_instance = GetSsfConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(GetSsfConfigurationResponse.to_json())

# convert the object into a dict
get_ssf_configuration_response_dict = get_ssf_configuration_response_instance.to_dict()
# create an instance of GetSsfConfigurationResponse from a dict
get_ssf_configuration_response_from_dict = GetSsfConfigurationResponse.from_dict(get_ssf_configuration_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


