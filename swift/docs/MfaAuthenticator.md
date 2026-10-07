# MfaAuthenticator

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**displayName** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**isDefault** | **Bool** |  | [optional] 
**tier** | **Int** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only | [optional] 
**tierLabel** | **String** |  | [optional] 
**amr** | **[String]** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**activatedAt** | **Date** |  | [optional] 
**lastUsedAt** | **Date** |  | [optional] 
**lastUsedContext** | [**MfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  | [optional] 
**metadata** | **[String: AnyCodable]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


