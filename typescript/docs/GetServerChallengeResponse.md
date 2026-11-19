# GetServerChallengeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | &#x60;no_authorization_required&#x60; for an MCP server that checks no token (Public or stdio): there is nothing to challenge, with or without a token. | [default to undefined]
**server** | **string** | MCP server display name. | [default to undefined]
**server_id** | **string** |  | [default to undefined]

## Example

```typescript
import { GetServerChallengeResponse } from '@lumoauth/api-client';

const instance: GetServerChallengeResponse = {
    status,
    server,
    server_id,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
