# LumoAuth.ApiClient.Model.MfaAuthenticator
One enrolled authenticator. `id` is a stable reference such as `totp:12` or `passkey:7`.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | [optional] 
**Type** | **string** |  | [optional] 
**DisplayName** | **string** |  | [optional] 
**State** | **string** |  | [optional] 
**IsDefault** | **bool** |  | [optional] 
**Tier** | **int** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only | [optional] 
**TierLabel** | **string** |  | [optional] 
**Amr** | **List&lt;string&gt;** |  | [optional] 
**CreatedAt** | **DateTime** |  | [optional] 
**ActivatedAt** | **DateTime?** |  | [optional] 
**LastUsedAt** | **DateTime?** |  | [optional] 
**LastUsedContext** | [**MfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  | [optional] 
**Metadata** | **Dictionary&lt;string, Object&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

