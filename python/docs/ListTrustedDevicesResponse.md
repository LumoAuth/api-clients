# ListTrustedDevicesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[ListTrustedDevicesResponseDataItem]**](ListTrustedDevicesResponseDataItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_trusted_devices_response import ListTrustedDevicesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListTrustedDevicesResponse from a JSON string
list_trusted_devices_response_instance = ListTrustedDevicesResponse.from_json(json)
# print the JSON string representation of the object
print(ListTrustedDevicesResponse.to_json())

# convert the object into a dict
list_trusted_devices_response_dict = list_trusted_devices_response_instance.to_dict()
# create an instance of ListTrustedDevicesResponse from a dict
list_trusted_devices_response_from_dict = ListTrustedDevicesResponse.from_dict(list_trusted_devices_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


