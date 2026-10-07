# RegisterClientResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **string** |  | [default to undefined]
**client_secret** | **string** | Plaintext secret, shown once (confidential clients only). | [optional] [default to undefined]
**client_secret_expires_at** | **number** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional] [default to undefined]
**client_id_issued_at** | **number** | Unix seconds. | [default to undefined]
**registration_access_token** | **string** | Bearer token for the client configuration endpoint, shown once. | [optional] [default to undefined]
**registration_client_uri** | **string** |  | [optional] [default to undefined]
**client_name** | **string** |  | [default to undefined]
**redirect_uris** | **Array&lt;string&gt;** |  | [default to undefined]
**response_types** | **Array&lt;string&gt;** |  | [default to undefined]
**grant_types** | **Array&lt;string&gt;** |  | [default to undefined]
**application_type** | **string** |  | [default to undefined]
**token_endpoint_auth_method** | **string** |  | [default to undefined]
**contacts** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**client_uri** | **string** |  | [optional] [default to undefined]
**logo_uri** | **string** |  | [optional] [default to undefined]
**policy_uri** | **string** |  | [optional] [default to undefined]
**tos_uri** | **string** |  | [optional] [default to undefined]
**sector_identifier_uri** | **string** |  | [optional] [default to undefined]
**subject_type** | **string** | Only when not \&quot;public\&quot;. | [optional] [default to undefined]
**jwks_uri** | **string** |  | [optional] [default to undefined]
**jwks** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**post_logout_redirect_uris** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**initiate_login_uri** | **string** |  | [optional] [default to undefined]
**request_uris** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**scope** | **string** | Space-separated registered scopes. | [optional] [default to undefined]
**id_token_signed_response_alg** | **string** | Only when not RS256. | [optional] [default to undefined]
**userinfo_signed_response_alg** | **string** |  | [optional] [default to undefined]
**request_object_signing_alg** | **string** |  | [optional] [default to undefined]
**token_endpoint_auth_signing_alg** | **string** |  | [optional] [default to undefined]
**default_max_age** | **number** |  | [optional] [default to undefined]
**require_auth_time** | **boolean** | Only when true. | [optional] [default to undefined]
**default_acr_values** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**frontchannel_logout_uri** | **string** |  | [optional] [default to undefined]
**frontchannel_logout_session_required** | **boolean** | Only when true. | [optional] [default to undefined]
**backchannel_logout_uri** | **string** |  | [optional] [default to undefined]
**backchannel_logout_session_required** | **boolean** | Only when true. | [optional] [default to undefined]
**audience_uris** | **Array&lt;string&gt;** | RFC 8707 resource indicators the client may request. | [optional] [default to undefined]

## Example

```typescript
import { RegisterClientResponse } from '@lumoauth/api-client';

const instance: RegisterClientResponse = {
    client_id,
    client_secret,
    client_secret_expires_at,
    client_id_issued_at,
    registration_access_token,
    registration_client_uri,
    client_name,
    redirect_uris,
    response_types,
    grant_types,
    application_type,
    token_endpoint_auth_method,
    contacts,
    client_uri,
    logo_uri,
    policy_uri,
    tos_uri,
    sector_identifier_uri,
    subject_type,
    jwks_uri,
    jwks,
    post_logout_redirect_uris,
    initiate_login_uri,
    request_uris,
    scope,
    id_token_signed_response_alg,
    userinfo_signed_response_alg,
    request_object_signing_alg,
    token_endpoint_auth_signing_alg,
    default_max_age,
    require_auth_time,
    default_acr_values,
    frontchannel_logout_uri,
    frontchannel_logout_session_required,
    backchannel_logout_uri,
    backchannel_logout_session_required,
    audience_uris,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
