# RequestPermissionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **str** | Required. Task context. | [optional] 
**authorization_details** | **object** | Required. RFC 9396 authorization_details object (needs a type). | [optional] 
**justification** | **str** | Optional human-readable justification. | [optional] 
**requested_ttl** | **int** | Optional TTL in seconds (default 600). | [optional] 
**callback_url** | **str** | Optional HITL notification webhook. | [optional] 

## Example

```python
from lumoauth_api_client.models.request_permission_request import RequestPermissionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RequestPermissionRequest from a JSON string
request_permission_request_instance = RequestPermissionRequest.from_json(json)
# print the JSON string representation of the object
print(RequestPermissionRequest.to_json())

# convert the object into a dict
request_permission_request_dict = request_permission_request_instance.to_dict()
# create an instance of RequestPermissionRequest from a dict
request_permission_request_from_dict = RequestPermissionRequest.from_dict(request_permission_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


