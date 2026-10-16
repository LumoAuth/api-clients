

# CimdCheckResultEffective

The client LumoAuth derives from the document after organization policy.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**clientName** | **String** |  |  [optional] |
|**applicationType** | [**ApplicationTypeEnum**](#ApplicationTypeEnum) |  |  [optional] |
|**tokenEndpointAuthMethod** | [**TokenEndpointAuthMethodEnum**](#TokenEndpointAuthMethodEnum) |  |  [optional] |
|**publicClient** | **Boolean** |  |  [optional] |
|**pkceRequired** | **Boolean** |  |  [optional] |
|**redirectUris** | **List&lt;String&gt;** |  |  [optional] |
|**droppedRedirectUris** | **List&lt;String&gt;** | Loopback URIs removed by the organization&#39;s localhost policy. |  [optional] |
|**grantTypes** | **List&lt;String&gt;** |  |  [optional] |
|**scopes** | **List&lt;String&gt;** |  |  [optional] |
|**droppedScopes** | **List&lt;String&gt;** | Scopes the document asked for that are neither identity scopes nor on the organization&#39;s cimd_allowed_scopes list. |  [optional] |
|**logoUri** | **String** |  |  [optional] |
|**clientUri** | **String** |  |  [optional] |
|**hasLoopbackRedirect** | **Boolean** |  |  [optional] |



## Enum: ApplicationTypeEnum

| Name | Value |
|---- | -----|
| WEB | &quot;web&quot; |
| NATIVE | &quot;native&quot; |



## Enum: TokenEndpointAuthMethodEnum

| Name | Value |
|---- | -----|
| NONE | &quot;none&quot; |
| PRIVATE_KEY_JWT | &quot;private_key_jwt&quot; |



