# MfaPolicy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requirement** | **str** |  | [optional] [default to 'risk_based']
**allowed_factors** | **List[str]** |  | [optional] 
**min_tier_login** | **int** |  | [optional] [default to 4]
**min_tier_step_up** | **int** |  | [optional] [default to 3]
**passwordless_passkey** | **bool** |  | [optional] [default to True]
**required_factor_count** | **int** |  | [optional] [default to 1]
**grace_period_days** | **int** |  | [optional] [default to 14]
**remind_interval_days** | **int** |  | [optional] [default to 7]
**trusted_device_days** | **int** |  | [optional] [default to 30]
**email_otp_counts_as_mfa** | **bool** |  | [optional] [default to False]
**sms_block_voip** | **bool** |  | [optional] [default to False]
**sms_country_allowlist** | **List[str]** |  | [optional] 
**sms_country_denylist** | **List[str]** |  | [optional] 
**nudge_interval_days** | **int** |  | [optional] [default to 30]
**step_up_max_age_seconds** | **int** |  | [optional] [default to 600]
**required_since** | **int** |  | [optional] [readonly] 

## Example

```python
from lumoauth_api_client.models.mfa_policy import MfaPolicy

# TODO update the JSON string below
json = "{}"
# create an instance of MfaPolicy from a JSON string
mfa_policy_instance = MfaPolicy.from_json(json)
# print the JSON string representation of the object
print(MfaPolicy.to_json())

# convert the object into a dict
mfa_policy_dict = mfa_policy_instance.to_dict()
# create an instance of MfaPolicy from a dict
mfa_policy_from_dict = MfaPolicy.from_dict(mfa_policy_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


