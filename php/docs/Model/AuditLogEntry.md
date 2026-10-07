# # AuditLogEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**createdAt** | **\DateTime** |  |
**eventType** | **string** |  | [optional]
**action** | **string** |  | [optional]
**severity** | **string** |  | [optional]
**message** | **string** |  | [optional]
**actorId** | **string** |  | [optional]
**actorName** | **string** |  | [optional]
**actorType** | **string** |  | [optional]
**authMethod** | **string** |  | [optional]
**targetType** | **string** |  | [optional]
**targetId** | **string** |  | [optional]
**targetName** | **string** |  | [optional]
**ipAddress** | **string** |  | [optional]
**eventTime** | **\DateTime** | Detailed responses only | [optional]
**durationMs** | **int** | Detailed responses only | [optional]
**initiatedBy** | **string** | Detailed responses only | [optional]
**clientId** | **string** | Detailed responses only | [optional]
**userAgent** | **string** | Detailed responses only | [optional]
**geoLocation** | **array<string,mixed>** | Detailed responses only | [optional]
**sessionId** | **string** | Detailed responses only | [optional]
**requestId** | **string** | Detailed responses only | [optional]
**status** | **string** | Detailed responses only | [optional]
**statusReason** | **string** | Detailed responses only | [optional]
**oldValue** | **array<string,mixed>** | Detailed responses only | [optional]
**newValue** | **array<string,mixed>** | Detailed responses only | [optional]
**changes** | **array<string,mixed>** | Detailed responses only | [optional]
**context** | **array<string,mixed>** | Detailed responses only | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
