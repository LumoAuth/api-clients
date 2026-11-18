# CheckEmailFirstRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** | The address that was typed. | 
**client_id** | **str** | Client ID of an active application of the organization. | 

## Example

```python
from lumoauth_api_client.models.check_email_first_request import CheckEmailFirstRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CheckEmailFirstRequest from a JSON string
check_email_first_request_instance = CheckEmailFirstRequest.from_json(json)
# print the JSON string representation of the object
print(CheckEmailFirstRequest.to_json())

# convert the object into a dict
check_email_first_request_dict = check_email_first_request_instance.to_dict()
# create an instance of CheckEmailFirstRequest from a dict
check_email_first_request_from_dict = CheckEmailFirstRequest.from_dict(check_email_first_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


