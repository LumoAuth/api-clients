# # AdminAgentsGenerateTokenResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **string** |  | [optional]
**tokenType** | **string** |  | [optional]
**expiresIn** | **int** |  | [optional]
**jti** | **string** | The token id. Written to the agent.token_issued audit event; the kill switch and a capability reduction deny-list it. | [optional]
**scopes** | **string[]** |  | [optional]
**resource** | **string** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
