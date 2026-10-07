# ScimSettingsOutbound

Outbound SCIM client settings (entity defaults merged with the stored values).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**endpoint_url** | **str** |  | [optional] 
**bearer_token** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**auth_type** | **str** |  | [optional] 
**basic_username** | **str** |  | [optional] 
**basic_password** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**oauth2_client_id** | **str** |  | [optional] 
**oauth2_client_secret** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**oauth2_token_url** | **str** |  | [optional] 
**oauth2_scope** | **str** |  | [optional] 
**tls_certificate** | **str** | Optional PEM CA certificate used for TLS verification. | [optional] 
**verify_tls** | **bool** |  | [optional] 
**push_user_creates** | **bool** |  | [optional] 
**push_user_updates** | **bool** |  | [optional] 
**push_user_deletes** | **bool** |  | [optional] 
**push_group_changes** | **bool** |  | [optional] 
**sync_on_login** | **bool** |  | [optional] 
**batch_sync_enabled** | **bool** |  | [optional] 
**batch_sync_interval** | **str** |  | [optional] 
**attribute_mapping** | **Dict[str, str]** | User field &#x3D;&gt; SCIM attribute. | [optional] 
**last_sync_at** | **str** |  | [optional] 
**last_sync_status** | **str** |  | [optional] 
**last_sync_error** | **str** |  | [optional] 
**last_batch_sync_at** | **str** |  | [optional] 
**last_batch_sync_status** | **str** |  | [optional] 
**last_batch_sync_error** | **str** |  | [optional] 
**last_batch_sync_counts** | **Dict[str, object]** | Free-form counters of the last batch reconcile. | [optional] 

## Example

```python
from lumoauth_api_client.models.scim_settings_outbound import ScimSettingsOutbound

# TODO update the JSON string below
json = "{}"
# create an instance of ScimSettingsOutbound from a JSON string
scim_settings_outbound_instance = ScimSettingsOutbound.from_json(json)
# print the JSON string representation of the object
print(ScimSettingsOutbound.to_json())

# convert the object into a dict
scim_settings_outbound_dict = scim_settings_outbound_instance.to_dict()
# create an instance of ScimSettingsOutbound from a dict
scim_settings_outbound_from_dict = ScimSettingsOutbound.from_dict(scim_settings_outbound_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


