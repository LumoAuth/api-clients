# SubmitLoginJsonResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | 
**challenge_url** | **str** | Path of the MFA challenge page; only when status&#x3D;mfa_required. | [optional] 

## Example

```python
from lumoauth_api_client.models.submit_login_json_response import SubmitLoginJsonResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SubmitLoginJsonResponse from a JSON string
submit_login_json_response_instance = SubmitLoginJsonResponse.from_json(json)
# print the JSON string representation of the object
print(SubmitLoginJsonResponse.to_json())

# convert the object into a dict
submit_login_json_response_dict = submit_login_json_response_instance.to_dict()
# create an instance of SubmitLoginJsonResponse from a dict
submit_login_json_response_from_dict = SubmitLoginJsonResponse.from_dict(submit_login_json_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


