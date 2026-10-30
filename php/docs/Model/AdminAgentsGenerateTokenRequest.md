# # AdminAgentsGenerateTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expiresIn** | **int** | Token lifetime in seconds. Default 3600, minimum 60, at most 86400 (24 hours). Above 3600 only together with &#x60;resource&#x60;: a long-lived token is always bound to one MCP server, never to the organization API. | [optional]
**scopes** | **string[]** | Optional subset of the agent&#39;s capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. | [optional]
**resource** | **string** | Optional resource URI of an active MCP server of this organization. The token is then audience-bound to that server (and no longer works on the LumoAuth API) and lives at most the server&#39;s token lifetime. Servers that require DPoP are refused with 400. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
