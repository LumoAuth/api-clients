

# AdminAgentsGenerateTokenRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**expiresIn** | **Integer** | Token lifetime in seconds. Default 3600, at most 2592000 (30 days). |  [optional] |
|**scopes** | **List&lt;String&gt;** | Optional subset of the agent&#39;s capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. |  [optional] |
|**resource** | **URI** | Optional resource URI of an active MCP server of this organization. The token is then audience-bound to that server (and no longer works on the LumoAuth API) and lives at most the server&#39;s token lifetime. Servers that require DPoP are refused with 400. |  [optional] |



