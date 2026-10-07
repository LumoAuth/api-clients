# SsfStreamList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**streams** | [**List[SsfStream]**](SsfStream.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.ssf_stream_list import SsfStreamList

# TODO update the JSON string below
json = "{}"
# create an instance of SsfStreamList from a JSON string
ssf_stream_list_instance = SsfStreamList.from_json(json)
# print the JSON string representation of the object
print(SsfStreamList.to_json())

# convert the object into a dict
ssf_stream_list_dict = ssf_stream_list_instance.to_dict()
# create an instance of SsfStreamList from a dict
ssf_stream_list_from_dict = SsfStreamList.from_dict(ssf_stream_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


