# PutAdminClientsUpdateBrandingRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **Dict[str, object]** |  | [optional] 
**consent** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_clients_update_branding_request import PutAdminClientsUpdateBrandingRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminClientsUpdateBrandingRequest from a JSON string
put_admin_clients_update_branding_request_instance = PutAdminClientsUpdateBrandingRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminClientsUpdateBrandingRequest.to_json())

# convert the object into a dict
put_admin_clients_update_branding_request_dict = put_admin_clients_update_branding_request_instance.to_dict()
# create an instance of PutAdminClientsUpdateBrandingRequest from a dict
put_admin_clients_update_branding_request_from_dict = PutAdminClientsUpdateBrandingRequest.from_dict(put_admin_clients_update_branding_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


