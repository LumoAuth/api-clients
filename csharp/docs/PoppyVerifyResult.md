# LumoAuth.ApiClient.Model.PoppyVerifyResult
The verification result. `active` true — the request is verified; false — return `response` to the personal agent unchanged.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **bool** |  | 
**ClientId** | **string** | The personal agent (the URL of its metadata document). | [optional] 
**ClientName** | **string** |  | [optional] 
**UserId** | **string** | The User ID — the personal agent&#39;s stable pseudonym for its user at your organization. | [optional] 
**AgentId** | **string** |  | [optional] 
**Session** | [**PoppyVerifyResultSession**](PoppyVerifyResultSession.md) |  | [optional] 
**SignedIn** | **bool** |  | [optional] 
**Account** | [**PoppyVerifyResultAccount**](PoppyVerifyResultAccount.md) |  | [optional] 
**VarVersion** | **string** |  | [optional] 
**Extensions** | **Dictionary&lt;string, string&gt;** | The extensions that the request declares, name to version. | [optional] 
**Error** | **string** |  | [optional] 
**ErrorDescription** | **string** |  | [optional] 
**Scope** | **string** | The scopes that a refusal asks for. | [optional] 
**Response** | [**PoppyVerifyResultResponse**](PoppyVerifyResultResponse.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

