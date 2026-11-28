# SubmitLoginJsonRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** |  | 
**password** | **str** |  | 
**captcha_token** | **str** | Needed when the organization has a CAPTCHA for sign-in. | [optional] 

## Example

```python
from lumoauth_api_client.models.submit_login_json_request import SubmitLoginJsonRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SubmitLoginJsonRequest from a JSON string
submit_login_json_request_instance = SubmitLoginJsonRequest.from_json(json)
# print the JSON string representation of the object
print(SubmitLoginJsonRequest.to_json())

# convert the object into a dict
submit_login_json_request_dict = submit_login_json_request_instance.to_dict()
# create an instance of SubmitLoginJsonRequest from a dict
submit_login_json_request_from_dict = SubmitLoginJsonRequest.from_dict(submit_login_json_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


