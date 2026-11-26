

# PoppyVerifyResultAccount

The account of the access token; null for a signed-out request.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**sub** | **String** | The user&#39;s id in your organization. |  [optional] |
|**scope** | **String** |  |  [optional] |
|**aud** | **List&lt;String&gt;** |  |  [optional] |
|**exp** | **Integer** |  |  [optional] |
|**tokenType** | [**TokenTypeEnum**](#TokenTypeEnum) |  |  [optional] |



## Enum: TokenTypeEnum

| Name | Value |
|---- | -----|
| BEARER | &quot;Bearer&quot; |
| DPO_P | &quot;DPoP&quot; |



