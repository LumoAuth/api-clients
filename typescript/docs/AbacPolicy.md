# AbacPolicy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**slug** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**resourceType** | **string** |  | [optional] [default to undefined]
**action** | **string** | One action, several separated by commas (read, write), or * for every action. The policy decides a request for each action that it names; spaces around the commas are ignored and actions compare case-sensitively. | [optional] [default to undefined]
**effect** | **string** |  | [optional] [default to undefined]
**priority** | **number** |  | [optional] [default to undefined]
**conditions** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**isActive** | **boolean** |  | [optional] [default to undefined]
**isSystem** | **boolean** |  | [optional] [default to undefined]
**builtIn** | **boolean** | True for a policy that LumoAuth provides to every organization. It can be read, but not changed, switched or deleted (403). | [optional] [default to undefined]
**createdAt** | **string** |  | [optional] [default to undefined]
**updatedAt** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AbacPolicy } from '@lumoauth/api-client';

const instance: AbacPolicy = {
    id,
    name,
    slug,
    description,
    resourceType,
    action,
    effect,
    priority,
    conditions,
    isActive,
    isSystem,
    builtIn,
    createdAt,
    updatedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
