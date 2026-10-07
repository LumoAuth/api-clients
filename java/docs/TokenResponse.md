

# TokenResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**accessToken** | **String** |  |  |
|**tokenType** | [**TokenTypeEnum**](#TokenTypeEnum) | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). |  |
|**expiresIn** | **Integer** |  |  |
|**scope** | **String** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. |  [optional] |
|**refreshToken** | **String** | Only when the client is registered for the refresh_token grant. |  [optional] |
|**idToken** | **String** | OpenID Connect ID Token (JWT) when the openid scope was granted. |  [optional] |
|**issuedTokenType** | [**IssuedTokenTypeEnum**](#IssuedTokenTypeEnum) | Token exchange only (RFC 8693). |  [optional] |
|**authorizationDetails** | **List&lt;Map&lt;String, Object&gt;&gt;** | Agent-initiated CIBA only: the approved RFC 9396 authorization details. |  [optional] |
|**jitRequestId** | **String** | Agent-initiated CIBA only. |  [optional] |
|**taskId** | **String** | Agent-initiated CIBA only. |  [optional] |



## Enum: TokenTypeEnum

| Name | Value |
|---- | -----|
| BEARER | &quot;Bearer&quot; |
| DPO_P | &quot;DPoP&quot; |
| N_A | &quot;N_A&quot; |



## Enum: IssuedTokenTypeEnum

| Name | Value |
|---- | -----|
| URN_IETF_PARAMS_OAUTH_TOKEN_TYPE_ACCESS_TOKEN | &quot;urn:ietf:params:oauth:token-type:access_token&quot; |
| URN_IETF_PARAMS_OAUTH_TOKEN_TYPE_ID_JAG | &quot;urn:ietf:params:oauth:token-type:id-jag&quot; |
| URN_IETF_PARAMS_OAUTH_TOKEN_TYPE_TXN_TOKEN | &quot;urn:ietf:params:oauth:token-type:txn_token&quot; |



