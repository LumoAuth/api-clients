

# AttestResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**accessToken** | **String** |  |  |
|**tokenType** | [**TokenTypeEnum**](#TokenTypeEnum) |  |  |
|**expiresIn** | **Integer** |  |  |
|**scope** | **String** | The issued scope values (the agent&#39;s capabilities, or the requested subset), separated by one space. Left out when none was issued. |  [optional] |
|**identity** | [**AttestResponseIdentity**](AttestResponseIdentity.md) |  |  |



## Enum: TokenTypeEnum

| Name | Value |
|---- | -----|
| BEARER | &quot;Bearer&quot; |
| DPO_P | &quot;DPoP&quot; |



