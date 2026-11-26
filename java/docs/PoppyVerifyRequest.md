

# PoppyVerifyRequest

A request that one of your APIs received from a personal agent, forwarded for verification.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**method** | **String** | The method of the request that you received. |  |
|**url** | **URI** | The public address that the personal agent called (a query is ignored). https, or http for a loopback host during development. |  |
|**headers** | **Map&lt;String, String&gt;** | The headers of the request by name. Read are Poppy-Session, Poppy-Version, Poppy-Extensions, Authorization and DPoP; send those, or all of them. |  |
|**requiredScope** | [**PoppyVerifyRequestRequiredScope**](PoppyVerifyRequestRequiredScope.md) |  |  [optional] |
|**resource** | **URI** | Only for a service that accepts just the tokens issued for it (RFC 8707) — its resource identifier. The default token is then refused. |  [optional] |
|**allowReplay** | **Boolean** | Accept a Session JWT that was verified before, for a service that checks one request in more than one place. |  [optional] |



