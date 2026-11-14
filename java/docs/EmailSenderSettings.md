

# EmailSenderSettings

Who sends the organization's mail. The values are those of the organization's own mail provider (set up in the portal). Without a provider, or while it is switched off, mail is sent by LumoAuth with LumoAuth's sender.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**sender** | [**SenderEnum**](#SenderEnum) | Who sends the mail now: &#x60;provider&#x60; while the organization&#39;s own mail provider is switched on, else &#x60;platform&#x60;. |  [optional] [readonly] |
|**provider** | **String** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. |  [optional] [readonly] |
|**enabled** | **Boolean** | Whether the mail provider is switched on. |  [optional] [readonly] |
|**fromEmail** | **String** | From address of mail that the provider sends. It must be a sender that is verified at the provider. |  [optional] |
|**fromName** | **String** | From name of mail that the provider sends. |  [optional] |
|**replyToEmail** | **String** | Reply-To address of mail that the provider sends. |  [optional] |



## Enum: SenderEnum

| Name | Value |
|---- | -----|
| PLATFORM | &quot;platform&quot; |
| PROVIDER | &quot;provider&quot; |



