# SendPoppyFeedbackRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task** | **str** |  | 
**description** | **str** | What the Personal Agent tried to do and why it could not, without identifiers or personal data. | 

## Example

```python
from lumoauth_api_client.models.send_poppy_feedback_request import SendPoppyFeedbackRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SendPoppyFeedbackRequest from a JSON string
send_poppy_feedback_request_instance = SendPoppyFeedbackRequest.from_json(json)
# print the JSON string representation of the object
print(SendPoppyFeedbackRequest.to_json())

# convert the object into a dict
send_poppy_feedback_request_dict = send_poppy_feedback_request_instance.to_dict()
# create an instance of SendPoppyFeedbackRequest from a dict
send_poppy_feedback_request_from_dict = SendPoppyFeedbackRequest.from_dict(send_poppy_feedback_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


