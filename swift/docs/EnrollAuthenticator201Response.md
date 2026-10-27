# EnrollAuthenticator201Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**otpauthUri** | **String** |  | [optional] 
**secret** | **String** |  | [optional] 
**secretGrouped** | **String** |  | [optional] 
**qrDataUri** | **String** |  | [optional] 
**expiresAt** | **Date** |  | [optional] 
**maskedPhone** | **String** |  | [optional] 
**resendAfter** | **Int** | Seconds until a new code may be requested | [optional] 
**maskedEmail** | **String** |  | [optional] 
**deepLink** | **String** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional] 
**deepLinkAndroid** | **String** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional] 
**activationCode** | **String** |  | [optional] 
**publicKey** | **AnyCodable** | WebAuthn PublicKeyCredentialCreationOptions | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


