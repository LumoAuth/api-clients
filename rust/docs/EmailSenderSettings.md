# EmailSenderSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | Option<**String**> | Who sends the mail now: `provider` while the organization's own mail provider is switched on, else `platform`. | [optional][readonly]
**provider** | Option<**String**> | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional][readonly]
**enabled** | Option<**bool**> | Whether the mail provider is switched on. | [optional][readonly]
**from_email** | Option<**String**> | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional]
**from_name** | Option<**String**> | From name of mail that the provider sends. | [optional]
**reply_to_email** | Option<**String**> | Reply-To address of mail that the provider sends. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


