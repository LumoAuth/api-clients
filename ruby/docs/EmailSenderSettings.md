# LumoAuthApiClient::EmailSenderSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Who sends the mail now: &#x60;provider&#x60; while the organization&#39;s own mail provider is switched on, else &#x60;platform&#x60;. | [optional][readonly] |
| **provider** | **String** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional][readonly] |
| **enabled** | **Boolean** | Whether the mail provider is switched on. | [optional][readonly] |
| **from_email** | **String** | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional] |
| **from_name** | **String** | From name of mail that the provider sends. | [optional] |
| **reply_to_email** | **String** | Reply-To address of mail that the provider sends. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::EmailSenderSettings.new(
  sender: null,
  provider: null,
  enabled: null,
  from_email: null,
  from_name: null,
  reply_to_email: null
)
```

