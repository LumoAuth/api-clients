# OpenIdConfiguration


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **string** |  | [default to undefined]
**authorization_endpoint** | **string** |  | [default to undefined]
**token_endpoint** | **string** |  | [default to undefined]
**jwks_uri** | **string** |  | [default to undefined]
**response_types_supported** | **Array&lt;string&gt;** |  | [default to undefined]
**subject_types_supported** | **Array&lt;string&gt;** |  | [default to undefined]
**id_token_signing_alg_values_supported** | **Array&lt;string&gt;** |  | [default to undefined]
**userinfo_endpoint** | **string** |  | [optional] [default to undefined]
**registration_endpoint** | **string** |  | [optional] [default to undefined]
**scopes_supported** | **Array&lt;string&gt;** | Standard OIDC scopes plus the organization\&#39;s MCP scope vocabulary. | [optional] [default to undefined]
**claims_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**response_modes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**authorization_signing_alg_values_supported** | **Array&lt;string&gt;** | JARM signing algorithms. | [optional] [default to undefined]
**grant_types_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**device_authorization_endpoint** | **string** |  | [optional] [default to undefined]
**token_endpoint_auth_methods_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**token_endpoint_auth_signing_alg_values_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**claim_types_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**claims_parameter_supported** | **boolean** |  | [optional] [default to undefined]
**request_parameter_supported** | **boolean** |  | [optional] [default to undefined]
**request_uri_parameter_supported** | **boolean** |  | [optional] [default to undefined]
**require_request_uri_registration** | **boolean** |  | [optional] [default to undefined]
**require_signed_request_object** | **boolean** |  | [optional] [default to undefined]
**request_object_signing_alg_values_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**ui_locales_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**acr_values_supported** | **Array&lt;string&gt;** | The four MFA tier ACR values, unless overridden in organization settings. | [optional] [default to undefined]
**code_challenge_methods_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**authorization_response_iss_parameter_supported** | **boolean** |  | [optional] [default to undefined]
**pushed_authorization_request_endpoint** | **string** |  | [optional] [default to undefined]
**require_pushed_authorization_requests** | **boolean** |  | [optional] [default to undefined]
**dpop_signing_alg_values_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**tls_client_certificate_bound_access_tokens** | **boolean** |  | [optional] [default to undefined]
**introspection_endpoint** | **string** |  | [optional] [default to undefined]
**introspection_endpoint_auth_methods_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**revocation_endpoint** | **string** |  | [optional] [default to undefined]
**revocation_endpoint_auth_methods_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**resource_indicators_supported** | **boolean** |  | [optional] [default to undefined]
**end_session_endpoint** | **string** |  | [optional] [default to undefined]
**check_session_iframe** | **string** |  | [optional] [default to undefined]
**frontchannel_logout_supported** | **boolean** |  | [optional] [default to undefined]
**frontchannel_logout_session_supported** | **boolean** |  | [optional] [default to undefined]
**backchannel_logout_supported** | **boolean** |  | [optional] [default to undefined]
**backchannel_logout_session_supported** | **boolean** |  | [optional] [default to undefined]
**backchannel_authentication_endpoint** | **string** |  | [optional] [default to undefined]
**backchannel_token_delivery_modes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**backchannel_user_code_parameter_supported** | **boolean** |  | [optional] [default to undefined]
**service_documentation** | **string** |  | [optional] [default to undefined]
**entity_profiles_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**client_id_metadata_document_supported** | **boolean** | Only when CIMD is enabled for the organization. | [optional] [default to undefined]
**authorization_grant_profiles_supported** | **Array&lt;string&gt;** | Only when the organization accepts ID-JAGs. | [optional] [default to undefined]
**op_policy_uri** | **string** | Only when configured. | [optional] [default to undefined]
**op_tos_uri** | **string** | Only when configured. | [optional] [default to undefined]

## Example

```typescript
import { OpenIdConfiguration } from '@lumoauth/api-client';

const instance: OpenIdConfiguration = {
    issuer,
    authorization_endpoint,
    token_endpoint,
    jwks_uri,
    response_types_supported,
    subject_types_supported,
    id_token_signing_alg_values_supported,
    userinfo_endpoint,
    registration_endpoint,
    scopes_supported,
    claims_supported,
    response_modes_supported,
    authorization_signing_alg_values_supported,
    grant_types_supported,
    device_authorization_endpoint,
    token_endpoint_auth_methods_supported,
    token_endpoint_auth_signing_alg_values_supported,
    claim_types_supported,
    claims_parameter_supported,
    request_parameter_supported,
    request_uri_parameter_supported,
    require_request_uri_registration,
    require_signed_request_object,
    request_object_signing_alg_values_supported,
    ui_locales_supported,
    acr_values_supported,
    code_challenge_methods_supported,
    authorization_response_iss_parameter_supported,
    pushed_authorization_request_endpoint,
    require_pushed_authorization_requests,
    dpop_signing_alg_values_supported,
    tls_client_certificate_bound_access_tokens,
    introspection_endpoint,
    introspection_endpoint_auth_methods_supported,
    revocation_endpoint,
    revocation_endpoint_auth_methods_supported,
    resource_indicators_supported,
    end_session_endpoint,
    check_session_iframe,
    frontchannel_logout_supported,
    frontchannel_logout_session_supported,
    backchannel_logout_supported,
    backchannel_logout_session_supported,
    backchannel_authentication_endpoint,
    backchannel_token_delivery_modes_supported,
    backchannel_user_code_parameter_supported,
    service_documentation,
    entity_profiles_supported,
    client_id_metadata_document_supported,
    authorization_grant_profiles_supported,
    op_policy_uri,
    op_tos_uri,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
