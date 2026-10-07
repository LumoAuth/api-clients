# GetStreamConfig200Response


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
**streams** | [**List[SsfStream]**](SsfStream.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_stream_config200_response import GetStreamConfig200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetStreamConfig200Response from a JSON string
get_stream_config200_response_instance = GetStreamConfig200Response.from_json(json)
# print the JSON string representation of the object
print(GetStreamConfig200Response.to_json())

# convert the object into a dict
get_stream_config200_response_dict = get_stream_config200_response_instance.to_dict()
# create an instance of GetStreamConfig200Response from a dict
get_stream_config200_response_from_dict = GetStreamConfig200Response.from_dict(get_stream_config200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


