

# RegisterClientResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**clientId** | **String** |  |  |
|**clientSecret** | **String** | Plaintext secret, shown once (confidential clients only). |  [optional] |
|**clientSecretExpiresAt** | **Integer** | Unix seconds; 0 &#x3D; never expires (confidential clients only). |  [optional] |
|**clientIdIssuedAt** | **Integer** | Unix seconds. |  |
|**registrationAccessToken** | **String** | Bearer token for the client configuration endpoint, shown once. |  [optional] |
|**registrationClientUri** | **URI** |  |  [optional] |
|**clientName** | **String** |  |  |
|**redirectUris** | **List&lt;String&gt;** |  |  |
|**responseTypes** | **List&lt;String&gt;** |  |  |
|**grantTypes** | **List&lt;String&gt;** |  |  |
|**applicationType** | [**ApplicationTypeEnum**](#ApplicationTypeEnum) |  |  |
|**tokenEndpointAuthMethod** | **String** |  |  |
|**contacts** | **List&lt;String&gt;** |  |  [optional] |
|**clientUri** | **String** |  |  [optional] |
|**logoUri** | **String** |  |  [optional] |
|**policyUri** | **String** |  |  [optional] |
|**tosUri** | **String** |  |  [optional] |
|**sectorIdentifierUri** | **String** |  |  [optional] |
|**subjectType** | **String** | Only when not \&quot;public\&quot;. |  [optional] |
|**jwksUri** | **String** |  |  [optional] |
|**jwks** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**postLogoutRedirectUris** | **List&lt;String&gt;** |  |  [optional] |
|**initiateLoginUri** | **String** |  |  [optional] |
|**requestUris** | **List&lt;String&gt;** |  |  [optional] |
|**scope** | **String** | Space-separated registered scopes. |  [optional] |
|**idTokenSignedResponseAlg** | **String** | Only when not RS256. |  [optional] |
|**userinfoSignedResponseAlg** | **String** |  |  [optional] |
|**requestObjectSigningAlg** | **String** |  |  [optional] |
|**tokenEndpointAuthSigningAlg** | **String** |  |  [optional] |
|**defaultMaxAge** | **Integer** |  |  [optional] |
|**requireAuthTime** | **Boolean** | Only when true. |  [optional] |
|**defaultAcrValues** | **List&lt;String&gt;** |  |  [optional] |
|**frontchannelLogoutUri** | **String** |  |  [optional] |
|**frontchannelLogoutSessionRequired** | **Boolean** | Only when true. |  [optional] |
|**backchannelLogoutUri** | **String** |  |  [optional] |
|**backchannelLogoutSessionRequired** | **Boolean** | Only when true. |  [optional] |
|**audienceUris** | **List&lt;String&gt;** | RFC 8707 resource indicators the client may request. |  [optional] |



## Enum: ApplicationTypeEnum

| Name | Value |
|---- | -----|
| WEB | &quot;web&quot; |
| NATIVE | &quot;native&quot; |



