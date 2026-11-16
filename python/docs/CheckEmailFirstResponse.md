# CheckEmailFirstResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exists** | **bool** | Always &#x60;true&#x60;. The answer never says whether the address has an account. | 
**magic_link_enabled** | **bool** | The organization offers sign-in links. | 
**passkey_enabled** | **bool** | The organization offers passkey sign-in. | 
**password_enabled** | **bool** | The organization accepts passwords at sign-in. | 

## Example

```python
from lumoauth_api_client.models.check_email_first_response import CheckEmailFirstResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CheckEmailFirstResponse from a JSON string
check_email_first_response_instance = CheckEmailFirstResponse.from_json(json)
# print the JSON string representation of the object
print(CheckEmailFirstResponse.to_json())

# convert the object into a dict
check_email_first_response_dict = check_email_first_response_instance.to_dict()
# create an instance of CheckEmailFirstResponse from a dict
check_email_first_response_from_dict = CheckEmailFirstResponse.from_dict(check_email_first_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


