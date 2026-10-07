# ScimSettings


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inbound** | [**ScimSettingsInbound**](ScimSettingsInbound.md) |  | [optional] 
**outbound** | [**ScimSettingsOutbound**](ScimSettingsOutbound.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.scim_settings import ScimSettings

# TODO update the JSON string below
json = "{}"
# create an instance of ScimSettings from a JSON string
scim_settings_instance = ScimSettings.from_json(json)
# print the JSON string representation of the object
print(ScimSettings.to_json())

# convert the object into a dict
scim_settings_dict = scim_settings_instance.to_dict()
# create an instance of ScimSettings from a dict
scim_settings_from_dict = ScimSettings.from_dict(scim_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


