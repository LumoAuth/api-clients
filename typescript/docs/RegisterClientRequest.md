# RegisterClientRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**redirect_uris** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**client_name** | **string** |  | [optional] [default to undefined]
**grant_types** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**response_types** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**token_endpoint_auth_method** | **string** |  | [optional] [default to undefined]
**scope** | **string** |  | [optional] [default to undefined]
**jwks_uri** | **string** |  | [optional] [default to undefined]
**jwks** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**application_type** | **string** |  | [optional] [default to undefined]
**post_logout_redirect_uris** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**backchannel_logout_uri** | **string** |  | [optional] [default to undefined]
**frontchannel_logout_uri** | **string** |  | [optional] [default to undefined]
**client_uri** | **string** |  | [optional] [default to undefined]
**logo_uri** | **string** |  | [optional] [default to undefined]
**policy_uri** | **string** |  | [optional] [default to undefined]
**tos_uri** | **string** |  | [optional] [default to undefined]
**contacts** | **Array&lt;string&gt;** |  | [optional] [default to undefined]

## Example

```typescript
import { RegisterClientRequest } from '@lumoauth/api-client';

const instance: RegisterClientRequest = {
    redirect_uris,
    client_name,
    grant_types,
    response_types,
    token_endpoint_auth_method,
    scope,
    jwks_uri,
    jwks,
    application_type,
    post_logout_redirect_uris,
    backchannel_logout_uri,
    frontchannel_logout_uri,
    client_uri,
    logo_uri,
    policy_uri,
    tos_uri,
    contacts,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
