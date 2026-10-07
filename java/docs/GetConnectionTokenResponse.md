

# GetConnectionTokenResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**accessToken** | **String** |  |  |
|**tokenType** | [**TokenTypeEnum**](#TokenTypeEnum) |  |  |
|**expiresAt** | **OffsetDateTime** | RFC 3339; null when the provider token does not expire. |  |
|**scopes** | **List&lt;String&gt;** |  |  |



## Enum: TokenTypeEnum

| Name | Value |
|---- | -----|
| BEARER | &quot;Bearer&quot; |



