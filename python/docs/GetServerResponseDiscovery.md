# GetServerResponseDiscovery


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authorization_server_metadata** | **str** |  | [optional] 
**protected_resource_metadata** | **str** |  | [optional] 
**www_authenticate_example** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_server_response_discovery import GetServerResponseDiscovery

# TODO update the JSON string below
json = "{}"
# create an instance of GetServerResponseDiscovery from a JSON string
get_server_response_discovery_instance = GetServerResponseDiscovery.from_json(json)
# print the JSON string representation of the object
print(GetServerResponseDiscovery.to_json())

# convert the object into a dict
get_server_response_discovery_dict = get_server_response_discovery_instance.to_dict()
# create an instance of GetServerResponseDiscovery from a dict
get_server_response_discovery_from_dict = GetServerResponseDiscovery.from_dict(get_server_response_discovery_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


