# IssueAgentTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **string** | One of auth, code, exchange, refresh. | [optional] [default to undefined]
**resource_token** | **string** | Resource token binding the request (request_type&#x3D;auth/refresh). | [optional] [default to undefined]
**redirect_uri** | **string** | User-consent redirect (request_type&#x3D;auth/code). | [optional] [default to undefined]
**code** | **string** | Authorization code to exchange (request_type&#x3D;code). | [optional] [default to undefined]
**auth_token** | **string** | Upstream auth token to exchange (request_type&#x3D;exchange). | [optional] [default to undefined]
**refresh_token** | **string** | Refresh token to redeem (request_type&#x3D;refresh). | [optional] [default to undefined]
**scope** | **string** | request_type&#x3D;refresh only: optional space-delimited scopes that narrow the refreshed token. Must be a subset of the refresh grant and of the resource token scope (invalid_scope otherwise). Ignored for request_type&#x3D;auth, where the resource token names the scope. | [optional] [default to undefined]

## Example

```typescript
import { IssueAgentTokenRequest } from '@lumoauth/api-client';

const instance: IssueAgentTokenRequest = {
    request_type,
    resource_token,
    redirect_uri,
    code,
    auth_token,
    refresh_token,
    scope,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
