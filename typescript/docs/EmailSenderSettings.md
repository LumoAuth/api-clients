# EmailSenderSettings

Who sends the organization\'s mail. The values are those of the organization\'s own mail provider (set up in the portal). Without a provider, or while it is switched off, mail is sent by LumoAuth with LumoAuth\'s sender.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **string** | Who sends the mail now: &#x60;provider&#x60; while the organization\&#39;s own mail provider is switched on, else &#x60;platform&#x60;. | [optional] [readonly] [default to undefined]
**provider** | **string** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional] [readonly] [default to undefined]
**enabled** | **boolean** | Whether the mail provider is switched on. | [optional] [readonly] [default to undefined]
**fromEmail** | **string** | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional] [default to undefined]
**fromName** | **string** | From name of mail that the provider sends. | [optional] [default to undefined]
**replyToEmail** | **string** | Reply-To address of mail that the provider sends. | [optional] [default to undefined]

## Example

```typescript
import { EmailSenderSettings } from '@lumoauth/api-client';

const instance: EmailSenderSettings = {
    sender,
    provider,
    enabled,
    fromEmail,
    fromName,
    replyToEmail,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
