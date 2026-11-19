# # GetMeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subjectType** | **string** |  | [optional]
**id** | **string** |  | [optional]
**email** | **string** |  | [optional]
**name** | **string** |  | [optional]
**mfaEnabled** | **bool** |  | [optional]
**roles** | **string[]** |  | [optional]
**capabilities** | **string[]** |  | [optional]
**scopes** | **string[]** | Agents only: the OAuth scope values that the agent may request for this organization&#39;s API, as RFC 7591 defines a client&#39;s registered scope. They are its capabilities, each a scope token (RFC 6749 section 3.3). | [optional]
**scope** | **string[]** | Agents only: the scope of the presented token. | [optional]
**scopeNarrowed** | **bool** | Agents only: true when the token scope leaves out one of the agent&#39;s capabilities. | [optional]
**tenant** | [**\LumoAuth\ApiClient\Model\GroupRef**](GroupRef.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
