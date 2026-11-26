# LumoAuth.ApiClient.Model.PoppyVerifyRequest
A request that one of your APIs received from a personal agent, forwarded for verification.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **string** | The method of the request that you received. | 
**Url** | **string** | The public address that the personal agent called (a query is ignored). https, or http for a loopback host during development. | 
**Headers** | **Dictionary&lt;string, string&gt;** | The headers of the request by name. Read are Poppy-Session, Poppy-Version, Poppy-Extensions, Authorization and DPoP; send those, or all of them. | 
**RequiredScope** | [**PoppyVerifyRequestRequiredScope**](PoppyVerifyRequestRequiredScope.md) |  | [optional] 
**Resource** | **string** | Only for a service that accepts just the tokens issued for it (RFC 8707) — its resource identifier. The default token is then refused. | [optional] 
**AllowReplay** | **bool** | Accept a Session JWT that was verified before, for a service that checks one request in more than one place. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

