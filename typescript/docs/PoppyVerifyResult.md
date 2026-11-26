# PoppyVerifyResult

The verification result. `active` true — the request is verified; false — return `response` to the personal agent unchanged.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** |  | [default to undefined]
**client_id** | **string** | The personal agent (the URL of its metadata document). | [optional] [default to undefined]
**client_name** | **string** |  | [optional] [default to undefined]
**user_id** | **string** | The User ID — the personal agent\&#39;s stable pseudonym for its user at your organization. | [optional] [default to undefined]
**agent_id** | **string** |  | [optional] [default to undefined]
**session** | [**PoppyVerifyResultSession**](PoppyVerifyResultSession.md) |  | [optional] [default to undefined]
**signed_in** | **boolean** |  | [optional] [default to undefined]
**account** | [**PoppyVerifyResultAccount**](PoppyVerifyResultAccount.md) |  | [optional] [default to undefined]
**version** | **string** |  | [optional] [default to undefined]
**extensions** | **{ [key: string]: string; }** | The extensions that the request declares, name to version. | [optional] [default to undefined]
**error** | **string** |  | [optional] [default to undefined]
**error_description** | **string** |  | [optional] [default to undefined]
**scope** | **string** | The scopes that a refusal asks for. | [optional] [default to undefined]
**response** | [**PoppyVerifyResultResponse**](PoppyVerifyResultResponse.md) |  | [optional] [default to undefined]

## Example

```typescript
import { PoppyVerifyResult } from '@lumoauth/api-client';

const instance: PoppyVerifyResult = {
    active,
    client_id,
    client_name,
    user_id,
    agent_id,
    session,
    signed_in,
    account,
    version,
    extensions,
    error,
    error_description,
    scope,
    response,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
