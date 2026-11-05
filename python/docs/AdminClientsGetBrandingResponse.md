# AdminClientsGetBrandingResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminClientsGetBrandingResponseData**](AdminClientsGetBrandingResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_clients_get_branding_response import AdminClientsGetBrandingResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminClientsGetBrandingResponse from a JSON string
admin_clients_get_branding_response_instance = AdminClientsGetBrandingResponse.from_json(json)
# print the JSON string representation of the object
print(AdminClientsGetBrandingResponse.to_json())

# convert the object into a dict
admin_clients_get_branding_response_dict = admin_clients_get_branding_response_instance.to_dict()
# create an instance of AdminClientsGetBrandingResponse from a dict
admin_clients_get_branding_response_from_dict = AdminClientsGetBrandingResponse.from_dict(admin_clients_get_branding_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


