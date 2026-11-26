# # PoppyVerifyResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  |
**clientId** | **string** | The personal agent (the URL of its metadata document). | [optional]
**clientName** | **string** |  | [optional]
**userId** | **string** | The User ID — the personal agent&#39;s stable pseudonym for its user at your organization. | [optional]
**agentId** | **string** |  | [optional]
**session** | [**\LumoAuth\ApiClient\Model\PoppyVerifyResultSession**](PoppyVerifyResultSession.md) |  | [optional]
**signedIn** | **bool** |  | [optional]
**account** | [**\LumoAuth\ApiClient\Model\PoppyVerifyResultAccount**](PoppyVerifyResultAccount.md) |  | [optional]
**version** | **string** |  | [optional]
**extensions** | **array<string,string>** | The extensions that the request declares, name to version. | [optional]
**error** | **string** |  | [optional]
**errorDescription** | **string** |  | [optional]
**scope** | **string** | The scopes that a refusal asks for. | [optional]
**response** | [**\LumoAuth\ApiClient\Model\PoppyVerifyResultResponse**](PoppyVerifyResultResponse.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
