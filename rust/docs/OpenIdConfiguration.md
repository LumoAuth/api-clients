# OpenIdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **String** |  | 
**authorization_endpoint** | **String** |  | 
**token_endpoint** | **String** |  | 
**jwks_uri** | **String** |  | 
**response_types_supported** | **Vec<String>** |  | 
**subject_types_supported** | **Vec<String>** |  | 
**id_token_signing_alg_values_supported** | **Vec<String>** |  | 
**userinfo_endpoint** | Option<**String**> |  | [optional]
**registration_endpoint** | Option<**String**> |  | [optional]
**scopes_supported** | Option<**Vec<String>**> | Standard OIDC scopes plus the organization's MCP scope vocabulary. | [optional]
**claims_supported** | Option<**Vec<String>**> |  | [optional]
**response_modes_supported** | Option<**Vec<String>**> |  | [optional]
**authorization_signing_alg_values_supported** | Option<**Vec<String>**> | JARM signing algorithms. | [optional]
**grant_types_supported** | Option<**Vec<String>**> |  | [optional]
**device_authorization_endpoint** | Option<**String**> |  | [optional]
**token_endpoint_auth_methods_supported** | Option<**Vec<String>**> |  | [optional]
**token_endpoint_auth_signing_alg_values_supported** | Option<**Vec<String>**> |  | [optional]
**claim_types_supported** | Option<**Vec<String>**> |  | [optional]
**claims_parameter_supported** | Option<**bool**> |  | [optional]
**request_parameter_supported** | Option<**bool**> |  | [optional]
**request_uri_parameter_supported** | Option<**bool**> |  | [optional]
**require_request_uri_registration** | Option<**bool**> |  | [optional]
**require_signed_request_object** | Option<**bool**> |  | [optional]
**request_object_signing_alg_values_supported** | Option<**Vec<String>**> |  | [optional]
**ui_locales_supported** | Option<**Vec<String>**> |  | [optional]
**acr_values_supported** | Option<**Vec<String>**> | The four MFA tier ACR values, unless overridden in organization settings. | [optional]
**code_challenge_methods_supported** | Option<**Vec<String>**> |  | [optional]
**authorization_response_iss_parameter_supported** | Option<**bool**> |  | [optional]
**pushed_authorization_request_endpoint** | Option<**String**> |  | [optional]
**require_pushed_authorization_requests** | Option<**bool**> |  | [optional]
**dpop_signing_alg_values_supported** | Option<**Vec<String>**> |  | [optional]
**tls_client_certificate_bound_access_tokens** | Option<**bool**> |  | [optional]
**introspection_endpoint** | Option<**String**> |  | [optional]
**introspection_endpoint_auth_methods_supported** | Option<**Vec<String>**> |  | [optional]
**revocation_endpoint** | Option<**String**> |  | [optional]
**revocation_endpoint_auth_methods_supported** | Option<**Vec<String>**> |  | [optional]
**resource_indicators_supported** | Option<**bool**> |  | [optional]
**end_session_endpoint** | Option<**String**> |  | [optional]
**check_session_iframe** | Option<**String**> |  | [optional]
**frontchannel_logout_supported** | Option<**bool**> |  | [optional]
**frontchannel_logout_session_supported** | Option<**bool**> |  | [optional]
**backchannel_logout_supported** | Option<**bool**> |  | [optional]
**backchannel_logout_session_supported** | Option<**bool**> |  | [optional]
**backchannel_authentication_endpoint** | Option<**String**> |  | [optional]
**backchannel_token_delivery_modes_supported** | Option<**Vec<String>**> |  | [optional]
**backchannel_user_code_parameter_supported** | Option<**bool**> |  | [optional]
**service_documentation** | Option<**String**> |  | [optional]
**entity_profiles_supported** | Option<**Vec<String>**> |  | [optional]
**client_id_metadata_document_supported** | Option<**bool**> | Only when CIMD is enabled for the organization. | [optional]
**authorization_grant_profiles_supported** | Option<**Vec<String>**> | Only when the organization accepts ID-JAGs. | [optional]
**op_policy_uri** | Option<**String**> | Only when configured. | [optional]
**op_tos_uri** | Option<**String**> | Only when configured. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


