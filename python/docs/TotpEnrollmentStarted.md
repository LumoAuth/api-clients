# TotpEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**otpauth_uri** | **str** |  | [optional] 
**secret** | **str** |  | [optional] 
**secret_grouped** | **str** |  | [optional] 
**qr_data_uri** | **str** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.totp_enrollment_started import TotpEnrollmentStarted

# TODO update the JSON string below
json = "{}"
# create an instance of TotpEnrollmentStarted from a JSON string
totp_enrollment_started_instance = TotpEnrollmentStarted.from_json(json)
# print the JSON string representation of the object
print(TotpEnrollmentStarted.to_json())

# convert the object into a dict
totp_enrollment_started_dict = totp_enrollment_started_instance.to_dict()
# create an instance of TotpEnrollmentStarted from a dict
totp_enrollment_started_from_dict = TotpEnrollmentStarted.from_dict(totp_enrollment_started_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


