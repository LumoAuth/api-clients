# SetUserPasswordPostRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **str** | Must meet the organization&#39;s password policy. | 
**require_change** | **bool** | Ask the user to choose a new password at the next sign-in. | [optional] [default to False]

## Example

```python
from lumoauth_api_client.models.set_user_password_post_request import SetUserPasswordPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetUserPasswordPostRequest from a JSON string
set_user_password_post_request_instance = SetUserPasswordPostRequest.from_json(json)
# print the JSON string representation of the object
print(SetUserPasswordPostRequest.to_json())

# convert the object into a dict
set_user_password_post_request_dict = set_user_password_post_request_instance.to_dict()
# create an instance of SetUserPasswordPostRequest from a dict
set_user_password_post_request_from_dict = SetUserPasswordPostRequest.from_dict(set_user_password_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


