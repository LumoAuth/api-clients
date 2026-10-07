# AdminIdentitiesListResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_source** | **str** |  | [optional] 
**ldap_only** | **bool** |  | [optional] 
**bindings** | [**List[AdminIdentitiesListResponseDataBindingsItem]**](AdminIdentitiesListResponseDataBindingsItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_identities_list_response_data import AdminIdentitiesListResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesListResponseData from a JSON string
admin_identities_list_response_data_instance = AdminIdentitiesListResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesListResponseData.to_json())

# convert the object into a dict
admin_identities_list_response_data_dict = admin_identities_list_response_data_instance.to_dict()
# create an instance of AdminIdentitiesListResponseData from a dict
admin_identities_list_response_data_from_dict = AdminIdentitiesListResponseData.from_dict(admin_identities_list_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


