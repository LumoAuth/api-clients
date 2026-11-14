# LumoAuth.ApiClient.Model.EmailSenderSettings
Who sends the organization's mail. The values are those of the organization's own mail provider (set up in the portal). Without a provider, or while it is switched off, mail is sent by LumoAuth with LumoAuth's sender.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sender** | **string** | Who sends the mail now: &#x60;provider&#x60; while the organization&#39;s own mail provider is switched on, else &#x60;platform&#x60;. | [optional] [readonly] 
**Provider** | **string** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional] [readonly] 
**Enabled** | **bool** | Whether the mail provider is switched on. | [optional] [readonly] 
**FromEmail** | **string** | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional] 
**FromName** | **string** | From name of mail that the provider sends. | [optional] 
**ReplyToEmail** | **string** | Reply-To address of mail that the provider sends. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

