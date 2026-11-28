# VerifyStreamRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stream_id** | **str** |  | [optional] 
**state** | **str** | Echoed in the verification event. | [optional] 

## Example

```python
from lumoauth_api_client.models.verify_stream_request import VerifyStreamRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyStreamRequest from a JSON string
verify_stream_request_instance = VerifyStreamRequest.from_json(json)
# print the JSON string representation of the object
print(VerifyStreamRequest.to_json())

# convert the object into a dict
verify_stream_request_dict = verify_stream_request_instance.to_dict()
# create an instance of VerifyStreamRequest from a dict
verify_stream_request_from_dict = VerifyStreamRequest.from_dict(verify_stream_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


