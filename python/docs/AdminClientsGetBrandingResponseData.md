# AdminClientsGetBrandingResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **Dict[str, object]** |  | [optional] 
**consent** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_clients_get_branding_response_data import AdminClientsGetBrandingResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminClientsGetBrandingResponseData from a JSON string
admin_clients_get_branding_response_data_instance = AdminClientsGetBrandingResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminClientsGetBrandingResponseData.to_json())

# convert the object into a dict
admin_clients_get_branding_response_data_dict = admin_clients_get_branding_response_data_instance.to_dict()
# create an instance of AdminClientsGetBrandingResponseData from a dict
admin_clients_get_branding_response_data_from_dict = AdminClientsGetBrandingResponseData.from_dict(admin_clients_get_branding_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


