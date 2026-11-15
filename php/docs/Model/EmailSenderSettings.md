# # EmailSenderSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **string** | Who sends the mail now: &#x60;provider&#x60; while the organization&#39;s own mail provider is switched on, else &#x60;platform&#x60;. | [optional] [readonly]
**provider** | **string** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional] [readonly]
**enabled** | **bool** | Whether the mail provider is switched on. | [optional] [readonly]
**fromEmail** | **string** | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional]
**fromName** | **string** | From name of mail that the provider sends. | [optional]
**replyToEmail** | **string** | Reply-To address of mail that the provider sends. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
