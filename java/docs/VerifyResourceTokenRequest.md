

# VerifyResourceTokenRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**resource** | **String** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. |  |
|**resourceToken** | **String** | The resource token to validate. |  |
|**agent** | **String** | Agent identifier the token must be bound to. |  |
|**agentJkt** | **String** | JWK thumbprint of the agent key. |  |



