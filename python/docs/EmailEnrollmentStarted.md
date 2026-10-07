# EmailEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**masked_email** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.email_enrollment_started import EmailEnrollmentStarted

# TODO update the JSON string below
json = "{}"
# create an instance of EmailEnrollmentStarted from a JSON string
email_enrollment_started_instance = EmailEnrollmentStarted.from_json(json)
# print the JSON string representation of the object
print(EmailEnrollmentStarted.to_json())

# convert the object into a dict
email_enrollment_started_dict = email_enrollment_started_instance.to_dict()
# create an instance of EmailEnrollmentStarted from a dict
email_enrollment_started_from_dict = EmailEnrollmentStarted.from_dict(email_enrollment_started_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


