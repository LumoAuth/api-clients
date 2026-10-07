# ScimSettingsInboundProtectedAttributes

Attribute name => true when SCIM may not change it.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **bool** |  | [optional] 
**name** | **bool** |  | [optional] 
**active** | **bool** |  | [optional] 
**roles** | **bool** |  | [optional] 
**permissions** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.scim_settings_inbound_protected_attributes import ScimSettingsInboundProtectedAttributes

# TODO update the JSON string below
json = "{}"
# create an instance of ScimSettingsInboundProtectedAttributes from a JSON string
scim_settings_inbound_protected_attributes_instance = ScimSettingsInboundProtectedAttributes.from_json(json)
# print the JSON string representation of the object
print(ScimSettingsInboundProtectedAttributes.to_json())

# convert the object into a dict
scim_settings_inbound_protected_attributes_dict = scim_settings_inbound_protected_attributes_instance.to_dict()
# create an instance of ScimSettingsInboundProtectedAttributes from a dict
scim_settings_inbound_protected_attributes_from_dict = ScimSettingsInboundProtectedAttributes.from_dict(scim_settings_inbound_protected_attributes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


