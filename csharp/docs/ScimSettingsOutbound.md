# LumoAuth.ApiClient.Model.ScimSettingsOutbound
Outbound SCIM client settings (entity defaults merged with the stored values).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **bool** |  | [optional] 
**EndpointUrl** | **string** |  | [optional] 
**BearerToken** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**AuthType** | **string** |  | [optional] 
**BasicUsername** | **string** |  | [optional] 
**BasicPassword** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**Oauth2ClientId** | **string** |  | [optional] 
**Oauth2ClientSecret** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**Oauth2TokenUrl** | **string** |  | [optional] 
**Oauth2Scope** | **string** |  | [optional] 
**TlsCertificate** | **string** | Optional PEM CA certificate used for TLS verification. Send null or an empty string to remove it. Changing it requires re-entering the stored secrets. | [optional] 
**VerifyTls** | **bool** | Always true. The endpoint certificate is always verified; false is rejected with 400. | [optional] 
**PushUserCreates** | **bool** |  | [optional] 
**PushUserUpdates** | **bool** |  | [optional] 
**PushUserDeletes** | **bool** |  | [optional] 
**PushGroupChanges** | **bool** |  | [optional] 
**SyncOnLogin** | **bool** |  | [optional] 
**BatchSyncEnabled** | **bool** |  | [optional] 
**BatchSyncInterval** | **string** |  | [optional] 
**LastSyncAt** | **string** |  | [optional] 
**LastSyncStatus** | **string** |  | [optional] 
**LastSyncError** | **string** |  | [optional] 
**LastBatchSyncAt** | **string** |  | [optional] 
**LastBatchSyncStatus** | **string** |  | [optional] 
**LastBatchSyncError** | **string** |  | [optional] 
**LastBatchSyncCounts** | **Dictionary&lt;string, Object&gt;** | Free-form counters of the last batch reconcile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

