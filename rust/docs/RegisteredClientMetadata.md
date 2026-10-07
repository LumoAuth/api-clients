# RegisteredClientMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **String** |  | 
**client_secret_expires_at** | Option<**i32**> | Unix seconds; 0 = never expires (confidential clients only). | [optional]
**client_id_issued_at** | **i32** | Unix seconds. | 
**registration_client_uri** | Option<**String**> |  | [optional]
**client_name** | Option<**String**> |  | 
**redirect_uris** | **Vec<String>** |  | 
**response_types** | **Vec<String>** |  | 
**grant_types** | **Vec<String>** |  | 
**application_type** | **String** |  | 
**token_endpoint_auth_method** | **String** |  | 
**contacts** | Option<**Vec<String>**> |  | [optional]
**client_uri** | Option<**String**> |  | [optional]
**logo_uri** | Option<**String**> |  | [optional]
**policy_uri** | Option<**String**> |  | [optional]
**tos_uri** | Option<**String**> |  | [optional]
**sector_identifier_uri** | Option<**String**> |  | [optional]
**subject_type** | Option<**String**> | Only when not \"public\". | [optional]
**jwks_uri** | Option<**String**> |  | [optional]
**jwks** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**post_logout_redirect_uris** | Option<**Vec<String>**> |  | [optional]
**initiate_login_uri** | Option<**String**> |  | [optional]
**request_uris** | Option<**Vec<String>**> |  | [optional]
**scope** | Option<**String**> | Space-separated registered scopes. | [optional]
**id_token_signed_response_alg** | Option<**String**> | Only when not RS256. | [optional]
**userinfo_signed_response_alg** | Option<**String**> |  | [optional]
**request_object_signing_alg** | Option<**String**> |  | [optional]
**token_endpoint_auth_signing_alg** | Option<**String**> |  | [optional]
**default_max_age** | Option<**i32**> |  | [optional]
**require_auth_time** | Option<**bool**> | Only when true. | [optional]
**default_acr_values** | Option<**Vec<String>**> |  | [optional]
**frontchannel_logout_uri** | Option<**String**> |  | [optional]
**frontchannel_logout_session_required** | Option<**bool**> | Only when true. | [optional]
**backchannel_logout_uri** | Option<**String**> |  | [optional]
**backchannel_logout_session_required** | Option<**bool**> | Only when true. | [optional]
**audience_uris** | Option<**Vec<String>**> | RFC 8707 resource indicators the client may request. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


