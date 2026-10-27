# AdminAgentsGenerateTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expires_in** | Option<**i32**> | Token lifetime in seconds. Default 3600, at most 2592000 (30 days). | [optional]
**scopes** | Option<**Vec<String>**> | Optional subset of the agent's capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. | [optional]
**resource** | Option<**String**> | Optional resource URI of an active MCP server of this organization. The token is then audience-bound to that server (and no longer works on the LumoAuth API) and lives at most the server's token lifetime. Servers that require DPoP are refused with 400. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


