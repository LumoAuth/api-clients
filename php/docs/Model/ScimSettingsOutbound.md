# # ScimSettingsOutbound

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional]
**endpointUrl** | **string** |  | [optional]
**bearerToken** | [**\LumoAuth\ApiClient\Model\RedactedSecret**](RedactedSecret.md) |  | [optional]
**authType** | **string** |  | [optional]
**basicUsername** | **string** |  | [optional]
**basicPassword** | [**\LumoAuth\ApiClient\Model\RedactedSecret**](RedactedSecret.md) |  | [optional]
**oauth2ClientId** | **string** |  | [optional]
**oauth2ClientSecret** | [**\LumoAuth\ApiClient\Model\RedactedSecret**](RedactedSecret.md) |  | [optional]
**oauth2TokenUrl** | **string** |  | [optional]
**oauth2Scope** | **string** |  | [optional]
**tlsCertificate** | **string** | Optional PEM CA certificate used for TLS verification. Send null or an empty string to remove it. Changing it requires re-entering the stored secrets. | [optional]
**verifyTls** | **bool** | Always true. The endpoint certificate is always verified; false is rejected with 400. | [optional]
**pushUserCreates** | **bool** |  | [optional]
**pushUserUpdates** | **bool** |  | [optional]
**pushUserDeletes** | **bool** |  | [optional]
**pushGroupChanges** | **bool** |  | [optional]
**syncOnLogin** | **bool** |  | [optional]
**batchSyncEnabled** | **bool** |  | [optional]
**batchSyncInterval** | **string** |  | [optional]
**lastSyncAt** | **string** |  | [optional]
**lastSyncStatus** | **string** |  | [optional]
**lastSyncError** | **string** |  | [optional]
**lastBatchSyncAt** | **string** |  | [optional]
**lastBatchSyncStatus** | **string** |  | [optional]
**lastBatchSyncError** | **string** |  | [optional]
**lastBatchSyncCounts** | **array<string,mixed>** | Free-form counters of the last batch reconcile. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
