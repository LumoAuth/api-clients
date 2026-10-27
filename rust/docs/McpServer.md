# McpServer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**i32**> |  | [optional]
**server_id** | Option<**String**> |  | [optional]
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**resource_uri** | Option<**String**> |  | [optional]
**endpoint_url** | Option<**String**> |  | [optional]
**transport** | Option<**String**> |  | [optional]
**transport_deprecated** | Option<**bool**> | True for http_sse, deprecated in MCP 2026-07-28; migrate to http_streamable. | [optional]
**auth_mode** | Option<**String**> |  | [optional]
**status** | Option<**String**> |  | [optional]
**scopes_supported** | Option<**Vec<String>**> |  | [optional]
**scope_descriptions** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**basic_scopes** | Option<**Vec<String>**> | Subset of scopes_supported advertised in the 401 challenge and in protected resource metadata. Empty = the whole vocabulary. | [optional]
**allowed_client_ids** | Option<**Vec<String>**> |  | [optional]
**tool_authorizer_client_ids** | Option<**Vec<String>**> | The MCP server's own OAuth clients allowed to call the per-tool authorization endpoint. | [optional]
**require_pkce** | Option<**bool**> |  | [optional]
**require_resource_param** | Option<**bool**> |  | [optional]
**require_dpop** | Option<**bool**> |  | [optional]
**token_lifetime** | Option<**i32**> |  | [optional]
**posture** | Option<[**models::McpServerPosture**](McpServer_posture.md)> |  | [optional]
**capabilities** | Option<**Vec<String>**> |  | [optional]
**created_at** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


