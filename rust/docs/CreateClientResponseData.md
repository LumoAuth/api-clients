# CreateClientResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** |  | 
**client_id** | **String** |  | 
**name** | **String** |  | 
**is_confidential** | **bool** |  | 
**is_public** | **bool** |  | 
**is_active** | **bool** |  | 
**requires_pkce** | **bool** |  | 
**created_at** | **String** |  | 
**redirect_uris** | Option<**Vec<String>**> | Detailed responses only | [optional]
**scopes** | Option<**Vec<String>**> | Detailed responses only | [optional]
**grant_types** | Option<**Vec<String>**> | Detailed responses only | [optional]
**ciba_enabled** | Option<**bool**> | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional]
**allowed_origins** | Option<**Vec<String>**> | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional]
**post_logout_redirect_uris** | Option<**Vec<String>**> | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional]
**frontchannel_logout_uri** | Option<**String**> | Detailed responses only. OIDC Front-Channel Logout address. | [optional]
**backchannel_logout_uri** | Option<**String**> | Detailed responses only. OIDC Back-Channel Logout address. | [optional]
**access_token_format** | Option<**String**> | Detailed responses only. Format of the access tokens that the client receives. | [optional]
**token_endpoint_auth_method** | Option<**String**> | Detailed responses only. | [optional]
**jwks_uri** | Option<**String**> | Detailed responses only. https address of the client's public keys. | [optional]
**jwks** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only. The client's public keys, inline. | [optional]
**fapi_mode** | Option<**String**> | Detailed responses only. FAPI 2.0 security profile. | [optional]
**require_par** | Option<**bool**> | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional]
**dpop_bound_access_tokens** | Option<**bool**> | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional]
**attestation_based_auth_enabled** | Option<**bool**> | Detailed responses only. | [optional]
**attester_issuer** | Option<**String**> | Detailed responses only. | [optional]
**attester_jwks_uri** | Option<**String**> | Detailed responses only. | [optional]
**token_exchange_enabled** | Option<**bool**> | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional]
**secret** | Option<**String**> | Plaintext client secret — returned only once, never retrievable again. Absent for a public client | [optional]
**_note** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


