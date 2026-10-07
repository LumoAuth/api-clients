# AuditLogEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [default to undefined]
**createdAt** | **string** |  | [default to undefined]
**eventType** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**severity** | **string** |  | [optional] [default to undefined]
**message** | **string** |  | [optional] [default to undefined]
**actorId** | **string** |  | [optional] [default to undefined]
**actorName** | **string** |  | [optional] [default to undefined]
**actorType** | **string** |  | [optional] [default to undefined]
**authMethod** | **string** |  | [optional] [default to undefined]
**targetType** | **string** |  | [optional] [default to undefined]
**targetId** | **string** |  | [optional] [default to undefined]
**targetName** | **string** |  | [optional] [default to undefined]
**ipAddress** | **string** |  | [optional] [default to undefined]
**eventTime** | **string** | Detailed responses only | [optional] [default to undefined]
**durationMs** | **number** | Detailed responses only | [optional] [default to undefined]
**initiatedBy** | **string** | Detailed responses only | [optional] [default to undefined]
**clientId** | **string** | Detailed responses only | [optional] [default to undefined]
**userAgent** | **string** | Detailed responses only | [optional] [default to undefined]
**geoLocation** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]
**sessionId** | **string** | Detailed responses only | [optional] [default to undefined]
**requestId** | **string** | Detailed responses only | [optional] [default to undefined]
**status** | **string** | Detailed responses only | [optional] [default to undefined]
**statusReason** | **string** | Detailed responses only | [optional] [default to undefined]
**oldValue** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]
**newValue** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]
**changes** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]
**context** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]

## Example

```typescript
import { AuditLogEntry } from '@lumoauth/api-client';

const instance: AuditLogEntry = {
    id,
    createdAt,
    eventType,
    action,
    severity,
    message,
    actorId,
    actorName,
    actorType,
    authMethod,
    targetType,
    targetId,
    targetName,
    ipAddress,
    eventTime,
    durationMs,
    initiatedBy,
    clientId,
    userAgent,
    geoLocation,
    sessionId,
    requestId,
    status,
    statusReason,
    oldValue,
    newValue,
    changes,
    context,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
