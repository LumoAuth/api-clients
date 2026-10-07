# ScimSettingsOutbound

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Bool** |  | [optional] 
**endpointUrl** | **String** |  | [optional] 
**bearerToken** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**authType** | **String** |  | [optional] 
**basicUsername** | **String** |  | [optional] 
**basicPassword** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**oauth2ClientId** | **String** |  | [optional] 
**oauth2ClientSecret** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**oauth2TokenUrl** | **String** |  | [optional] 
**oauth2Scope** | **String** |  | [optional] 
**tlsCertificate** | **String** | Optional PEM CA certificate used for TLS verification. | [optional] 
**verifyTls** | **Bool** |  | [optional] 
**pushUserCreates** | **Bool** |  | [optional] 
**pushUserUpdates** | **Bool** |  | [optional] 
**pushUserDeletes** | **Bool** |  | [optional] 
**pushGroupChanges** | **Bool** |  | [optional] 
**syncOnLogin** | **Bool** |  | [optional] 
**batchSyncEnabled** | **Bool** |  | [optional] 
**batchSyncInterval** | **String** |  | [optional] 
**attributeMapping** | **[String: String]** | User field &#x3D;&gt; SCIM attribute. | [optional] 
**lastSyncAt** | **String** |  | [optional] 
**lastSyncStatus** | **String** |  | [optional] 
**lastSyncError** | **String** |  | [optional] 
**lastBatchSyncAt** | **String** |  | [optional] 
**lastBatchSyncStatus** | **String** |  | [optional] 
**lastBatchSyncError** | **String** |  | [optional] 
**lastBatchSyncCounts** | **[String: AnyCodable]** | Free-form counters of the last batch reconcile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


