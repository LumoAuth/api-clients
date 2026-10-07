# ApproveRequestResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**granted_ttl** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.approve_request_response import ApproveRequestResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ApproveRequestResponse from a JSON string
approve_request_response_instance = ApproveRequestResponse.from_json(json)
# print the JSON string representation of the object
print(ApproveRequestResponse.to_json())

# convert the object into a dict
approve_request_response_dict = approve_request_response_instance.to_dict()
# create an instance of ApproveRequestResponse from a dict
approve_request_response_from_dict = ApproveRequestResponse.from_dict(approve_request_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


