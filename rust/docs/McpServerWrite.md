# McpServerWrite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> |  | [optional]
**resource_uri** | Option<**String**> | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional]
**description** | Option<**String**> |  | [optional]
**endpoint_url** | Option<**String**> | Address that the server is reached at, when it differs from resource_uri. | [optional]
**transport** | Option<**String**> |  | [optional][default to HttpStreamable]
**auth_mode** | Option<**String**> |  | [optional][default to Oauth]
**status** | Option<**String**> | Update only; a new server is active. | [optional]
**scopes_supported** | Option<[**models::McpServerWriteScopesSupported**](McpServerWrite_scopes_supported.md)> |  | [optional]
**basic_scopes** | Option<[**models::McpServerWriteBasicScopes**](McpServerWrite_basic_scopes.md)> |  | [optional]
**scope_descriptions** | Option<**std::collections::HashMap<String, String>**> | Text per scope of scopes_supported, for the portal and the consent page. | [optional]
**allowed_client_ids** | Option<**Vec<String>**> | Clients of this organization that may get tokens for the server; every client when empty. | [optional]
**tool_authorizer_client_ids** | Option<**Vec<String>**> | The server's own clients that may call the per-tool authorization endpoint. | [optional]
**token_lifetime** | Option<**i32**> |  | [optional][default to 3600]
**require_pkce** | Option<**bool**> |  | [optional][default to true]
**require_resource_param** | Option<**bool**> |  | [optional][default to true]
**require_dpop** | Option<**bool**> |  | [optional][default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


