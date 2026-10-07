# SsfStream


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stream_id** | **str** |  | [optional] 
**iss** | **str** |  | [optional] 
**aud** | **str** |  | [optional] 
**delivery** | [**SsfStreamDelivery**](SsfStreamDelivery.md) |  | [optional] 
**events_supported** | **List[str]** |  | [optional] 
**events_requested** | **List[str]** |  | [optional] 
**events_delivered** | **List[str]** |  | [optional] 
**status** | **str** |  | [optional] 
**created_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.ssf_stream import SsfStream

# TODO update the JSON string below
json = "{}"
# create an instance of SsfStream from a JSON string
ssf_stream_instance = SsfStream.from_json(json)
# print the JSON string representation of the object
print(SsfStream.to_json())

# convert the object into a dict
ssf_stream_dict = ssf_stream_instance.to_dict()
# create an instance of SsfStream from a dict
ssf_stream_from_dict = SsfStream.from_dict(ssf_stream_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


