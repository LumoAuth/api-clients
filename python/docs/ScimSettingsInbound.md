# ScimSettingsInbound

Inbound SCIM server settings (entity defaults merged with the stored values).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**bearer_token** | **str** | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional] 
**bearer_token_hash** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**bearer_token_preview** | **str** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional] 
**token_created_at** | **str** |  | [optional] 
**allow_user_creation** | **bool** |  | [optional] 
**allow_user_updates** | **bool** |  | [optional] 
**allow_user_deletion** | **bool** |  | [optional] 
**allow_group_operations** | **bool** |  | [optional] 
**protected_attributes** | [**ScimSettingsInboundProtectedAttributes**](ScimSettingsInboundProtectedAttributes.md) |  | [optional] 
**attribute_mapping** | **Dict[str, str]** | SCIM attribute &#x3D;&gt; user field. | [optional] 
**auto_activate_users** | **bool** |  | [optional] 
**deprovisioning_action** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.scim_settings_inbound import ScimSettingsInbound

# TODO update the JSON string below
json = "{}"
# create an instance of ScimSettingsInbound from a JSON string
scim_settings_inbound_instance = ScimSettingsInbound.from_json(json)
# print the JSON string representation of the object
print(ScimSettingsInbound.to_json())

# convert the object into a dict
scim_settings_inbound_dict = scim_settings_inbound_instance.to_dict()
# create an instance of ScimSettingsInbound from a dict
scim_settings_inbound_from_dict = ScimSettingsInbound.from_dict(scim_settings_inbound_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


