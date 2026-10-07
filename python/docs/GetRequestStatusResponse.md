# GetRequestStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**risk_level** | **str** |  | [optional] 
**task_id** | **str** |  | [optional] 
**token_url** | **str** | Present when approved. | [optional] 
**granted_ttl** | **int** | Present when approved. | [optional] 
**has_notes** | **bool** | Present when decided: whether the reviewer left notes (the notes themselves are never returned). | [optional] 
**agent_message** | **str** | Present when decided: message the reviewer explicitly wrote for the agent. | [optional] 
**delegation_consent_required** | **bool** | Present when pending: the on_behalf_of user must consent. | [optional] 
**expires_at** | **datetime** | Present when pending. | [optional] 

## Example

```python
from lumoauth_api_client.models.get_request_status_response import GetRequestStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetRequestStatusResponse from a JSON string
get_request_status_response_instance = GetRequestStatusResponse.from_json(json)
# print the JSON string representation of the object
print(GetRequestStatusResponse.to_json())

# convert the object into a dict
get_request_status_response_dict = get_request_status_response_instance.to_dict()
# create an instance of GetRequestStatusResponse from a dict
get_request_status_response_from_dict = GetRequestStatusResponse.from_dict(get_request_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


