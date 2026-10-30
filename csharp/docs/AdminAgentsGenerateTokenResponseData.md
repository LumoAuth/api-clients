# LumoAuth.ApiClient.Model.AdminAgentsGenerateTokenResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **string** |  | [optional] 
**TokenType** | **string** |  | [optional] 
**ExpiresIn** | **int** |  | [optional] 
**Jti** | **string** | The token id. Written to the agent.token_issued audit event; the kill switch and a capability reduction deny-list it. | [optional] 
**Scopes** | **List&lt;string&gt;** |  | [optional] 
**Resource** | **string** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

