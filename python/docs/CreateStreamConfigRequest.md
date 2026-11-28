# CreateStreamConfigRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery** | **Dict[str, object]** | RFC 8935 push ({\&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;https://...\&quot;}) or RFC 8936 poll. | [optional] 
**events_requested** | **List[str]** | Event type URIs. | [optional] 
**audience** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.create_stream_config_request import CreateStreamConfigRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateStreamConfigRequest from a JSON string
create_stream_config_request_instance = CreateStreamConfigRequest.from_json(json)
# print the JSON string representation of the object
print(CreateStreamConfigRequest.to_json())

# convert the object into a dict
create_stream_config_request_dict = create_stream_config_request_instance.to_dict()
# create an instance of CreateStreamConfigRequest from a dict
create_stream_config_request_from_dict = CreateStreamConfigRequest.from_dict(create_stream_config_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


