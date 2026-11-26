# GetPoppySessionStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | unknown: no Session with this sid (never started, or forgotten after the idle period). | 
**user_id** | **str** |  | [optional] 
**agent_id** | **str** |  | [optional] 
**account** | **str** | The id of the account that the Session used, if any. | [optional] 
**signed_in** | **bool** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. | 
**last_seen_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_poppy_session_status_response import GetPoppySessionStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetPoppySessionStatusResponse from a JSON string
get_poppy_session_status_response_instance = GetPoppySessionStatusResponse.from_json(json)
# print the JSON string representation of the object
print(GetPoppySessionStatusResponse.to_json())

# convert the object into a dict
get_poppy_session_status_response_dict = get_poppy_session_status_response_instance.to_dict()
# create an instance of GetPoppySessionStatusResponse from a dict
get_poppy_session_status_response_from_dict = GetPoppySessionStatusResponse.from_dict(get_poppy_session_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


