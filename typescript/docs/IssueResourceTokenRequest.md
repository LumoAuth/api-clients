# IssueResourceTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | **string** | Agent identifier the resource token is bound to. | [optional] [default to undefined]
**agent_jkt** | **string** | JWK thumbprint of the agent key (PoP binding). | [optional] [default to undefined]
**scope** | **string** | Optional space-delimited requested scopes. | [optional] [default to undefined]
**auth_request_url** | **string** | Optional auth request URL to embed in the token. | [optional] [default to undefined]
**auth_server** | **string** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] [default to undefined]

## Example

```typescript
import { IssueResourceTokenRequest } from '@lumoauth/api-client';

const instance: IssueResourceTokenRequest = {
    agent,
    agent_jkt,
    scope,
    auth_request_url,
    auth_server,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
