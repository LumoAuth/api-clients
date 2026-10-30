

# AdminAgentsGenerateTokenResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**accessToken** | **String** |  |  [optional] |
|**tokenType** | **String** |  |  [optional] |
|**expiresIn** | **Integer** |  |  [optional] |
|**jti** | **String** | The token id. Written to the agent.token_issued audit event; the kill switch and a capability reduction deny-list it. |  [optional] |
|**scopes** | **List&lt;String&gt;** |  |  [optional] |
|**resource** | **String** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. |  [optional] |



