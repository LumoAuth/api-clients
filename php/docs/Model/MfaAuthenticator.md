# # MfaAuthenticator

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional]
**type** | **string** |  | [optional]
**displayName** | **string** |  | [optional]
**state** | **string** |  | [optional]
**isDefault** | **bool** |  | [optional]
**tier** | **int** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only | [optional]
**tierLabel** | **string** |  | [optional]
**amr** | **string[]** |  | [optional]
**createdAt** | **\DateTime** |  | [optional]
**activatedAt** | **\DateTime** |  | [optional]
**lastUsedAt** | **\DateTime** |  | [optional]
**lastUsedContext** | [**\LumoAuth\ApiClient\Model\MfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  | [optional]
**metadata** | **array<string,mixed>** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
