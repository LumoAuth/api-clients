# EmailSenderSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Who sends the mail now: &#x60;provider&#x60; while the organization&#39;s own mail provider is switched on, else &#x60;platform&#x60;. | [optional] [readonly] 
**provider** | **String** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional] [readonly] 
**enabled** | **Bool** | Whether the mail provider is switched on. | [optional] [readonly] 
**fromEmail** | **String** | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional] 
**fromName** | **String** | From name of mail that the provider sends. | [optional] 
**replyToEmail** | **String** | Reply-To address of mail that the provider sends. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


