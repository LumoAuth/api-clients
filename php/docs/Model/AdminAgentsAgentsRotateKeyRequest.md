# # AdminAgentsAgentsRotateKeyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiKeyExpiresInDays** | **int** | Days until the new key expires; null for a key that never expires. | [optional]
**apiKeyExpiresAt** | **\DateTime** | Exact expiry of the new key (ISO 8601, in the future); null for never. Ignored when apiKeyExpiresInDays is sent. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
