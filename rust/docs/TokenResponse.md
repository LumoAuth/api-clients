# TokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** |  | 
**token_type** | **String** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). | 
**expires_in** | **i32** |  | 
**scope** | Option<**String**> | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional]
**refresh_token** | Option<**String**> | Only when the client is registered for the refresh_token grant. | [optional]
**id_token** | Option<**String**> | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional]
**issued_token_type** | Option<**String**> | Token exchange only (RFC 8693). | [optional]
**authorization_details** | Option<[**Vec<std::collections::HashMap<String, serde_json::Value>>**](std::collections::HashMap.md)> | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional]
**jit_request_id** | Option<**String**> | Agent-initiated CIBA only. | [optional]
**task_id** | Option<**String**> | Agent-initiated CIBA only. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


