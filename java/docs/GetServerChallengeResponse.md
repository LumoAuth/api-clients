

# GetServerChallengeResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**status** | [**StatusEnum**](#StatusEnum) | &#x60;no_authorization_required&#x60; for an MCP server that checks no token (Public or stdio): there is nothing to challenge, with or without a token. |  |
|**server** | **String** | MCP server display name. |  |
|**serverId** | **String** |  |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| AUTHENTICATED | &quot;authenticated&quot; |
| NO_AUTHORIZATION_REQUIRED | &quot;no_authorization_required&quot; |



