# PushEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**qr_data_uri** | **str** |  | [optional] 
**deep_link** | **str** |  | [optional] 
**activation_code** | **str** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.push_enrollment_started import PushEnrollmentStarted

# TODO update the JSON string below
json = "{}"
# create an instance of PushEnrollmentStarted from a JSON string
push_enrollment_started_instance = PushEnrollmentStarted.from_json(json)
# print the JSON string representation of the object
print(PushEnrollmentStarted.to_json())

# convert the object into a dict
push_enrollment_started_dict = push_enrollment_started_instance.to_dict()
# create an instance of PushEnrollmentStarted from a dict
push_enrollment_started_from_dict = PushEnrollmentStarted.from_dict(push_enrollment_started_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


