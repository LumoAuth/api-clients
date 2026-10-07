# ListServersResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**servers** | **List[object]** | Historical key (kept for back-compat). | [optional] 
**data** | [**List[ListServersResponseDataItem]**](ListServersResponseDataItem.md) | Canonical list envelope items. | [optional] 
**pagination** | **object** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_servers_response import ListServersResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListServersResponse from a JSON string
list_servers_response_instance = ListServersResponse.from_json(json)
# print the JSON string representation of the object
print(ListServersResponse.to_json())

# convert the object into a dict
list_servers_response_dict = list_servers_response_instance.to_dict()
# create an instance of ListServersResponse from a dict
list_servers_response_from_dict = ListServersResponse.from_dict(list_servers_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


