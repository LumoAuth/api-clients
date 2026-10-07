# LumoAuthApiClient::MfaPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement** | **String** |  | [optional][default to &#39;risk_based&#39;] |
| **allowed_factors** | **Array&lt;String&gt;** |  | [optional] |
| **min_tier_login** | **Integer** |  | [optional][default to 4] |
| **min_tier_step_up** | **Integer** |  | [optional][default to 3] |
| **passwordless_passkey** | **Boolean** |  | [optional][default to true] |
| **required_factor_count** | **Integer** |  | [optional][default to 1] |
| **grace_period_days** | **Integer** |  | [optional][default to 14] |
| **remind_interval_days** | **Integer** |  | [optional][default to 7] |
| **trusted_device_days** | **Integer** |  | [optional][default to 30] |
| **email_otp_counts_as_mfa** | **Boolean** |  | [optional][default to false] |
| **sms_block_voip** | **Boolean** |  | [optional][default to false] |
| **sms_country_allowlist** | **Array&lt;String&gt;** |  | [optional] |
| **sms_country_denylist** | **Array&lt;String&gt;** |  | [optional] |
| **nudge_interval_days** | **Integer** |  | [optional][default to 30] |
| **step_up_max_age_seconds** | **Integer** |  | [optional][default to 600] |
| **required_since** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::MfaPolicy.new(
  requirement: null,
  allowed_factors: null,
  min_tier_login: null,
  min_tier_step_up: null,
  passwordless_passkey: null,
  required_factor_count: null,
  grace_period_days: null,
  remind_interval_days: null,
  trusted_device_days: null,
  email_otp_counts_as_mfa: null,
  sms_block_voip: null,
  sms_country_allowlist: null,
  sms_country_denylist: null,
  nudge_interval_days: null,
  step_up_max_age_seconds: null,
  required_since: null
)
```

