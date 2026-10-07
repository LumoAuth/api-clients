# SsfStreamDelivery


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **str** |  | [optional] 
**endpoint_url** | **str** |  | [optional] 
**authorization_configured** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.ssf_stream_delivery import SsfStreamDelivery

# TODO update the JSON string below
json = "{}"
# create an instance of SsfStreamDelivery from a JSON string
ssf_stream_delivery_instance = SsfStreamDelivery.from_json(json)
# print the JSON string representation of the object
print(SsfStreamDelivery.to_json())

# convert the object into a dict
ssf_stream_delivery_dict = ssf_stream_delivery_instance.to_dict()
# create an instance of SsfStreamDelivery from a dict
ssf_stream_delivery_from_dict = SsfStreamDelivery.from_dict(ssf_stream_delivery_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


