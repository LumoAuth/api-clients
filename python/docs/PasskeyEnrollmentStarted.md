# PasskeyEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**public_key** | **object** | WebAuthn PublicKeyCredentialCreationOptions | [optional] 

## Example

```python
from lumoauth_api_client.models.passkey_enrollment_started import PasskeyEnrollmentStarted

# TODO update the JSON string below
json = "{}"
# create an instance of PasskeyEnrollmentStarted from a JSON string
passkey_enrollment_started_instance = PasskeyEnrollmentStarted.from_json(json)
# print the JSON string representation of the object
print(PasskeyEnrollmentStarted.to_json())

# convert the object into a dict
passkey_enrollment_started_dict = passkey_enrollment_started_instance.to_dict()
# create an instance of PasskeyEnrollmentStarted from a dict
passkey_enrollment_started_from_dict = PasskeyEnrollmentStarted.from_dict(passkey_enrollment_started_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


