# SmsEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**masked_phone** | **str** |  | [optional] 
**resend_after** | **int** | Seconds until a new code may be requested | [optional] 

## Example

```python
from lumoauth_api_client.models.sms_enrollment_started import SmsEnrollmentStarted

# TODO update the JSON string below
json = "{}"
# create an instance of SmsEnrollmentStarted from a JSON string
sms_enrollment_started_instance = SmsEnrollmentStarted.from_json(json)
# print the JSON string representation of the object
print(SmsEnrollmentStarted.to_json())

# convert the object into a dict
sms_enrollment_started_dict = sms_enrollment_started_instance.to_dict()
# create an instance of SmsEnrollmentStarted from a dict
sms_enrollment_started_from_dict = SmsEnrollmentStarted.from_dict(sms_enrollment_started_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


