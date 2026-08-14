# ListPendingRequestsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pending_requests** | **List[object]** |  | [optional] 
**count** | **int** |  | [optional] 
**data** | **List[object]** |  | [optional] 
**pagination** | **object** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_pending_requests_response import ListPendingRequestsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListPendingRequestsResponse from a JSON string
list_pending_requests_response_instance = ListPendingRequestsResponse.from_json(json)
# print the JSON string representation of the object
print(ListPendingRequestsResponse.to_json())

# convert the object into a dict
list_pending_requests_response_dict = list_pending_requests_response_instance.to_dict()
# create an instance of ListPendingRequestsResponse from a dict
list_pending_requests_response_from_dict = ListPendingRequestsResponse.from_dict(list_pending_requests_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


