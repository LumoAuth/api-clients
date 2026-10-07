# RequestPermissionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**risk_level** | **str** |  | [optional] 
**task_id** | **str** |  | [optional] 
**token_url** | **str** | Present when approved. | [optional] 
**granted_ttl** | **int** | Present when approved. | [optional] 
**status_url** | **str** | Present when pending. | [optional] 
**expires_at** | **datetime** | Present when pending. | [optional] 
**message** | **str** | Present when pending. | [optional] 

## Example

```python
from lumoauth_api_client.models.request_permission_response import RequestPermissionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RequestPermissionResponse from a JSON string
request_permission_response_instance = RequestPermissionResponse.from_json(json)
# print the JSON string representation of the object
print(RequestPermissionResponse.to_json())

# convert the object into a dict
request_permission_response_dict = request_permission_response_instance.to_dict()
# create an instance of RequestPermissionResponse from a dict
request_permission_response_from_dict = RequestPermissionResponse.from_dict(request_permission_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


