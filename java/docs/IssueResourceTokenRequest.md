

# IssueResourceTokenRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**agent** | **String** | Agent identifier the resource token is bound to. |  [optional] |
|**agentJkt** | **String** | JWK thumbprint of the agent key (PoP binding). |  [optional] |
|**scope** | **String** | Optional space-delimited requested scopes. |  [optional] |
|**authRequestUrl** | **String** | Optional auth request URL to embed in the token. |  [optional] |
|**authServer** | **String** | Optional auth server URL for the aud claim; defaults to this issuer. |  [optional] |



