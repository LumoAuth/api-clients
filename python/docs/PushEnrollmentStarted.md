# PushEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**qr_data_uri** | **str** |  | [optional] 
**deep_link** | **str** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional] 
**deep_link_android** | **str** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional] 
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


