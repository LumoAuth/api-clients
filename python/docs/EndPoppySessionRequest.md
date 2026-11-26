# EndPoppySessionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**personal_agent** | **str** | The client_id of the Personal Agent, as the verification result gave it. | 
**sid** | **str** | The Session ID. | 

## Example

```python
from lumoauth_api_client.models.end_poppy_session_request import EndPoppySessionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EndPoppySessionRequest from a JSON string
end_poppy_session_request_instance = EndPoppySessionRequest.from_json(json)
# print the JSON string representation of the object
print(EndPoppySessionRequest.to_json())

# convert the object into a dict
end_poppy_session_request_dict = end_poppy_session_request_instance.to_dict()
# create an instance of EndPoppySessionRequest from a dict
end_poppy_session_request_from_dict = EndPoppySessionRequest.from_dict(end_poppy_session_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


