# SendUserVerificationEmailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.send_user_verification_email_response import SendUserVerificationEmailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SendUserVerificationEmailResponse from a JSON string
send_user_verification_email_response_instance = SendUserVerificationEmailResponse.from_json(json)
# print the JSON string representation of the object
print(SendUserVerificationEmailResponse.to_json())

# convert the object into a dict
send_user_verification_email_response_dict = send_user_verification_email_response_instance.to_dict()
# create an instance of SendUserVerificationEmailResponse from a dict
send_user_verification_email_response_from_dict = SendUserVerificationEmailResponse.from_dict(send_user_verification_email_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


