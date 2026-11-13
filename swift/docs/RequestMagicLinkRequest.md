# RequestMagicLinkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | The address to mail the sign-in link to. | 
**clientId** | **String** | Client ID of an active application of the organization. | 
**returnTo** | **String** | Page of the application that the person goes to after signing in. An absolute https URL (http only on localhost) whose origin is one of the application&#39;s allowed origins or the origin of one of its redirect URIs. Without it the person goes to the organization&#39;s default page. | [optional] 
**captchaToken** | **String** | Token from the CAPTCHA widget. Required when the organization protects sign-in link requests with a CAPTCHA. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


