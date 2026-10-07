

# AuditLogEntry


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  |
|**createdAt** | **OffsetDateTime** |  |  |
|**eventType** | **String** |  |  [optional] |
|**action** | **String** |  |  [optional] |
|**severity** | **String** |  |  [optional] |
|**message** | **String** |  |  [optional] |
|**actorId** | **String** |  |  [optional] |
|**actorName** | **String** |  |  [optional] |
|**actorType** | **String** |  |  [optional] |
|**authMethod** | **String** |  |  [optional] |
|**targetType** | **String** |  |  [optional] |
|**targetId** | **String** |  |  [optional] |
|**targetName** | **String** |  |  [optional] |
|**ipAddress** | **String** |  |  [optional] |
|**eventTime** | **OffsetDateTime** | Detailed responses only |  [optional] |
|**durationMs** | **Integer** | Detailed responses only |  [optional] |
|**initiatedBy** | **String** | Detailed responses only |  [optional] |
|**clientId** | **String** | Detailed responses only |  [optional] |
|**userAgent** | **String** | Detailed responses only |  [optional] |
|**geoLocation** | **Map&lt;String, Object&gt;** | Detailed responses only |  [optional] |
|**sessionId** | **String** | Detailed responses only |  [optional] |
|**requestId** | **String** | Detailed responses only |  [optional] |
|**status** | **String** | Detailed responses only |  [optional] |
|**statusReason** | **String** | Detailed responses only |  [optional] |
|**oldValue** | **Map&lt;String, Object&gt;** | Detailed responses only |  [optional] |
|**newValue** | **Map&lt;String, Object&gt;** | Detailed responses only |  [optional] |
|**changes** | **Map&lt;String, Object&gt;** | Detailed responses only |  [optional] |
|**context** | **Map&lt;String, Object&gt;** | Detailed responses only |  [optional] |



