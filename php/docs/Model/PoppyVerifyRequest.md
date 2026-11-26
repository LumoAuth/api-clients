# # PoppyVerifyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **string** | The method of the request that you received. |
**url** | **string** | The public address that the personal agent called (a query is ignored). https, or http for a loopback host during development. |
**headers** | **array<string,string>** | The headers of the request by name. Read are Poppy-Session, Poppy-Version, Poppy-Extensions, Authorization and DPoP; send those, or all of them. |
**requiredScope** | [**\LumoAuth\ApiClient\Model\PoppyVerifyRequestRequiredScope**](PoppyVerifyRequestRequiredScope.md) |  | [optional]
**resource** | **string** | Only for a service that accepts just the tokens issued for it (RFC 8707) — its resource identifier. The default token is then refused. | [optional]
**allowReplay** | **bool** | Accept a Session JWT that was verified before, for a service that checks one request in more than one place. | [optional] [default to false]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
