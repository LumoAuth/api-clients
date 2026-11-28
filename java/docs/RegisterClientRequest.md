

# RegisterClientRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**redirectUris** | **List&lt;String&gt;** |  |  [optional] |
|**clientName** | **String** |  |  [optional] |
|**grantTypes** | **List&lt;String&gt;** |  |  [optional] |
|**responseTypes** | **List&lt;String&gt;** |  |  [optional] |
|**tokenEndpointAuthMethod** | **String** |  |  [optional] |
|**scope** | **String** |  |  [optional] |
|**jwksUri** | **URI** |  |  [optional] |
|**jwks** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**applicationType** | [**ApplicationTypeEnum**](#ApplicationTypeEnum) |  |  [optional] |
|**postLogoutRedirectUris** | **List&lt;String&gt;** |  |  [optional] |
|**backchannelLogoutUri** | **URI** |  |  [optional] |
|**frontchannelLogoutUri** | **URI** |  |  [optional] |
|**clientUri** | **URI** |  |  [optional] |
|**logoUri** | **URI** |  |  [optional] |
|**policyUri** | **URI** |  |  [optional] |
|**tosUri** | **URI** |  |  [optional] |
|**contacts** | **List&lt;String&gt;** |  |  [optional] |



## Enum: ApplicationTypeEnum

| Name | Value |
|---- | -----|
| WEB | &quot;web&quot; |
| NATIVE | &quot;native&quot; |



