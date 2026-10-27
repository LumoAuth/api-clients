# LumoAuth.ApiClient.Model.PushEnrollmentStarted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | [optional] 
**State** | **string** |  | [optional] 
**QrDataUri** | **string** |  | [optional] 
**DeepLink** | **string** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional] 
**DeepLinkAndroid** | **string** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional] 
**ActivationCode** | **string** |  | [optional] 
**ExpiresAt** | **DateTime** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

