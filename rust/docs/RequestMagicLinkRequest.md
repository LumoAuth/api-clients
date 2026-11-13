# RequestMagicLinkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | The address to mail the sign-in link to. | 
**client_id** | **String** | Client ID of an active application of the organization. | 
**return_to** | Option<**String**> | Page of the application that the person goes to after signing in. An absolute https URL (http only on localhost) whose origin is one of the application's allowed origins or the origin of one of its redirect URIs. Without it the person goes to the organization's default page. | [optional]
**captcha_token** | Option<**String**> | Token from the CAPTCHA widget. Required when the organization protects sign-in link requests with a CAPTCHA. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


