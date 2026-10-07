# ScimSettingsInbound

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | Option<**bool**> |  | [optional]
**bearer_token** | Option<**String**> | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional]
**bearer_token_hash** | Option<[**models::RedactedSecret**](RedactedSecret.md)> |  | [optional]
**bearer_token_preview** | Option<**String**> | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional]
**token_created_at** | Option<**String**> |  | [optional]
**allow_user_creation** | Option<**bool**> |  | [optional]
**allow_user_updates** | Option<**bool**> |  | [optional]
**allow_user_deletion** | Option<**bool**> |  | [optional]
**allow_group_operations** | Option<**bool**> |  | [optional]
**protected_attributes** | Option<[**models::ScimSettingsInboundProtectedAttributes**](ScimSettings_inbound_protected_attributes.md)> |  | [optional]
**attribute_mapping** | Option<**std::collections::HashMap<String, String>**> | SCIM attribute => user field. | [optional]
**auto_activate_users** | Option<**bool**> |  | [optional]
**deprovisioning_action** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


