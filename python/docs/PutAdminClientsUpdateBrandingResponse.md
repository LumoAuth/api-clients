# PutAdminClientsUpdateBrandingResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, object]** |  | [optional] 
**rejected** | **List[str]** | Keys whose value was refused by validation and not saved | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_clients_update_branding_response import PutAdminClientsUpdateBrandingResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminClientsUpdateBrandingResponse from a JSON string
put_admin_clients_update_branding_response_instance = PutAdminClientsUpdateBrandingResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminClientsUpdateBrandingResponse.to_json())

# convert the object into a dict
put_admin_clients_update_branding_response_dict = put_admin_clients_update_branding_response_instance.to_dict()
# create an instance of PutAdminClientsUpdateBrandingResponse from a dict
put_admin_clients_update_branding_response_from_dict = PutAdminClientsUpdateBrandingResponse.from_dict(put_admin_clients_update_branding_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


