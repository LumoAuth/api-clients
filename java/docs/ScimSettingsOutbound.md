

# ScimSettingsOutbound

Outbound SCIM client settings (entity defaults merged with the stored values).

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**enabled** | **Boolean** |  |  [optional] |
|**endpointUrl** | **String** |  |  [optional] |
|**bearerToken** | [**RedactedSecret**](RedactedSecret.md) |  |  [optional] |
|**authType** | [**AuthTypeEnum**](#AuthTypeEnum) |  |  [optional] |
|**basicUsername** | **String** |  |  [optional] |
|**basicPassword** | [**RedactedSecret**](RedactedSecret.md) |  |  [optional] |
|**oauth2ClientId** | **String** |  |  [optional] |
|**oauth2ClientSecret** | [**RedactedSecret**](RedactedSecret.md) |  |  [optional] |
|**oauth2TokenUrl** | **String** |  |  [optional] |
|**oauth2Scope** | **String** |  |  [optional] |
|**tlsCertificate** | **String** | Optional PEM CA certificate used for TLS verification. |  [optional] |
|**verifyTls** | **Boolean** |  |  [optional] |
|**pushUserCreates** | **Boolean** |  |  [optional] |
|**pushUserUpdates** | **Boolean** |  |  [optional] |
|**pushUserDeletes** | **Boolean** |  |  [optional] |
|**pushGroupChanges** | **Boolean** |  |  [optional] |
|**syncOnLogin** | **Boolean** |  |  [optional] |
|**batchSyncEnabled** | **Boolean** |  |  [optional] |
|**batchSyncInterval** | [**BatchSyncIntervalEnum**](#BatchSyncIntervalEnum) |  |  [optional] |
|**attributeMapping** | **Map&lt;String, String&gt;** | User field &#x3D;&gt; SCIM attribute. |  [optional] |
|**lastSyncAt** | **String** |  |  [optional] |
|**lastSyncStatus** | **String** |  |  [optional] |
|**lastSyncError** | **String** |  |  [optional] |
|**lastBatchSyncAt** | **String** |  |  [optional] |
|**lastBatchSyncStatus** | **String** |  |  [optional] |
|**lastBatchSyncError** | **String** |  |  [optional] |
|**lastBatchSyncCounts** | **Map&lt;String, Object&gt;** | Free-form counters of the last batch reconcile. |  [optional] |



## Enum: AuthTypeEnum

| Name | Value |
|---- | -----|
| BEARER | &quot;bearer&quot; |
| BASIC | &quot;basic&quot; |
| OAUTH2 | &quot;oauth2&quot; |



## Enum: BatchSyncIntervalEnum

| Name | Value |
|---- | -----|
| HOURLY | &quot;hourly&quot; |
| DAILY | &quot;daily&quot; |
| WEEKLY | &quot;weekly&quot; |



