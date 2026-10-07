# ListServersResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**server_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**resource_uri** | **str** |  | [optional] 
**transport** | **str** |  | [optional] 
**auth_mode** | **str** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_servers_response_data_item import ListServersResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of ListServersResponseDataItem from a JSON string
list_servers_response_data_item_instance = ListServersResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(ListServersResponseDataItem.to_json())

# convert the object into a dict
list_servers_response_data_item_dict = list_servers_response_data_item_instance.to_dict()
# create an instance of ListServersResponseDataItem from a dict
list_servers_response_data_item_from_dict = ListServersResponseDataItem.from_dict(list_servers_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


