# EmailSenderSettings

Who sends the organization's mail. The values are those of the organization's own mail provider (set up in the portal). Without a provider, or while it is switched off, mail is sent by LumoAuth with LumoAuth's sender.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **str** | Who sends the mail now: &#x60;provider&#x60; while the organization&#39;s own mail provider is switched on, else &#x60;platform&#x60;. | [optional] [readonly] 
**provider** | **str** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional] [readonly] 
**enabled** | **bool** | Whether the mail provider is switched on. | [optional] [readonly] 
**from_email** | **str** | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional] 
**from_name** | **str** | From name of mail that the provider sends. | [optional] 
**reply_to_email** | **str** | Reply-To address of mail that the provider sends. | [optional] 

## Example

```python
from lumoauth_api_client.models.email_sender_settings import EmailSenderSettings

# TODO update the JSON string below
json = "{}"
# create an instance of EmailSenderSettings from a JSON string
email_sender_settings_instance = EmailSenderSettings.from_json(json)
# print the JSON string representation of the object
print(EmailSenderSettings.to_json())

# convert the object into a dict
email_sender_settings_dict = email_sender_settings_instance.to_dict()
# create an instance of EmailSenderSettings from a dict
email_sender_settings_from_dict = EmailSenderSettings.from_dict(email_sender_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


