# TriggerUserPasswordResetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.trigger_user_password_reset_response import TriggerUserPasswordResetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TriggerUserPasswordResetResponse from a JSON string
trigger_user_password_reset_response_instance = TriggerUserPasswordResetResponse.from_json(json)
# print the JSON string representation of the object
print(TriggerUserPasswordResetResponse.to_json())

# convert the object into a dict
trigger_user_password_reset_response_dict = trigger_user_password_reset_response_instance.to_dict()
# create an instance of TriggerUserPasswordResetResponse from a dict
trigger_user_password_reset_response_from_dict = TriggerUserPasswordResetResponse.from_dict(trigger_user_password_reset_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


