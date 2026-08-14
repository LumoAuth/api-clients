# DenyRequestResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **str** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.deny_request_response import DenyRequestResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DenyRequestResponse from a JSON string
deny_request_response_instance = DenyRequestResponse.from_json(json)
# print the JSON string representation of the object
print(DenyRequestResponse.to_json())

# convert the object into a dict
deny_request_response_dict = deny_request_response_instance.to_dict()
# create an instance of DenyRequestResponse from a dict
deny_request_response_from_dict = DenyRequestResponse.from_dict(deny_request_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


