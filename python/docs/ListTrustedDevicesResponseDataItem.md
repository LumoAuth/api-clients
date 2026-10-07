# ListTrustedDevicesResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**ip_address** | **str** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 
**last_used_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_trusted_devices_response_data_item import ListTrustedDevicesResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of ListTrustedDevicesResponseDataItem from a JSON string
list_trusted_devices_response_data_item_instance = ListTrustedDevicesResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(ListTrustedDevicesResponseDataItem.to_json())

# convert the object into a dict
list_trusted_devices_response_data_item_dict = list_trusted_devices_response_data_item_instance.to_dict()
# create an instance of ListTrustedDevicesResponseDataItem from a dict
list_trusted_devices_response_data_item_from_dict = ListTrustedDevicesResponseDataItem.from_dict(list_trusted_devices_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


