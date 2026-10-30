# AdminAgentsGenerateTokenResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **string** |  | [optional] [default to undefined]
**tokenType** | **string** |  | [optional] [default to undefined]
**expiresIn** | **number** |  | [optional] [default to undefined]
**jti** | **string** | The token id. Written to the agent.token_issued audit event; the kill switch and a capability reduction deny-list it. | [optional] [default to undefined]
**scopes** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**resource** | **string** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. | [optional] [default to undefined]

## Example

```typescript
import { AdminAgentsGenerateTokenResponseData } from '@lumoauth/api-client';

const instance: AdminAgentsGenerateTokenResponseData = {
    accessToken,
    tokenType,
    expiresIn,
    jti,
    scopes,
    resource,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
