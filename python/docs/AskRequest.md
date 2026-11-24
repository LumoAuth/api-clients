# AskRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **str** | The action to authorize. | [optional] 
**context** | **object** | Optional resource/attribute context for the decision. | [optional] 
**audit** | **str** | Which decisions go to the audit log. denials (default): refusals only. always: allowed decisions too (agent.capability_check_allowed), for a tool-call hook that wants every decision on record. | [optional] [default to 'denials']

## Example

```python
from lumoauth_api_client.models.ask_request import AskRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AskRequest from a JSON string
ask_request_instance = AskRequest.from_json(json)
# print the JSON string representation of the object
print(AskRequest.to_json())

# convert the object into a dict
ask_request_dict = ask_request_instance.to_dict()
# create an instance of AskRequest from a dict
ask_request_from_dict = AskRequest.from_dict(ask_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


