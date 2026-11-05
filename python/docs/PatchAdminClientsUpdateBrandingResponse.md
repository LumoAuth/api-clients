# PatchAdminClientsUpdateBrandingResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, object]** |  | [optional] 
**rejected** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.patch_admin_clients_update_branding_response import PatchAdminClientsUpdateBrandingResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PatchAdminClientsUpdateBrandingResponse from a JSON string
patch_admin_clients_update_branding_response_instance = PatchAdminClientsUpdateBrandingResponse.from_json(json)
# print the JSON string representation of the object
print(PatchAdminClientsUpdateBrandingResponse.to_json())

# convert the object into a dict
patch_admin_clients_update_branding_response_dict = patch_admin_clients_update_branding_response_instance.to_dict()
# create an instance of PatchAdminClientsUpdateBrandingResponse from a dict
patch_admin_clients_update_branding_response_from_dict = PatchAdminClientsUpdateBrandingResponse.from_dict(patch_admin_clients_update_branding_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


