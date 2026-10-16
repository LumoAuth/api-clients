# CimdCheckResultEffective

The client LumoAuth derives from the document after organization policy.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_name** | **string** |  | [optional] [default to undefined]
**application_type** | **string** |  | [optional] [default to undefined]
**token_endpoint_auth_method** | **string** |  | [optional] [default to undefined]
**public_client** | **boolean** |  | [optional] [default to undefined]
**pkce_required** | **boolean** |  | [optional] [default to undefined]
**redirect_uris** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**dropped_redirect_uris** | **Array&lt;string&gt;** | Loopback URIs removed by the organization\&#39;s localhost policy. | [optional] [default to undefined]
**grant_types** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**scopes** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**dropped_scopes** | **Array&lt;string&gt;** | Scopes the document asked for that are neither identity scopes nor on the organization\&#39;s cimd_allowed_scopes list. | [optional] [default to undefined]
**logo_uri** | **string** |  | [optional] [default to undefined]
**client_uri** | **string** |  | [optional] [default to undefined]
**has_loopback_redirect** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { CimdCheckResultEffective } from '@lumoauth/api-client';

const instance: CimdCheckResultEffective = {
    client_name,
    application_type,
    token_endpoint_auth_method,
    public_client,
    pkce_required,
    redirect_uris,
    dropped_redirect_uris,
    grant_types,
    scopes,
    dropped_scopes,
    logo_uri,
    client_uri,
    has_loopback_redirect,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
