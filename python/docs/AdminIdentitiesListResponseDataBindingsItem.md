# AdminIdentitiesListResponseDataBindingsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**idp_id** | **int** |  | [optional] 
**name_id** | **str** |  | [optional] 
**legacy** | **bool** |  | [optional] 
**ldap_config_id** | **int** |  | [optional] 
**dn** | **str** |  | [optional] 
**provider** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_identities_list_response_data_bindings_item import AdminIdentitiesListResponseDataBindingsItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesListResponseDataBindingsItem from a JSON string
admin_identities_list_response_data_bindings_item_instance = AdminIdentitiesListResponseDataBindingsItem.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesListResponseDataBindingsItem.to_json())

# convert the object into a dict
admin_identities_list_response_data_bindings_item_dict = admin_identities_list_response_data_bindings_item_instance.to_dict()
# create an instance of AdminIdentitiesListResponseDataBindingsItem from a dict
admin_identities_list_response_data_bindings_item_from_dict = AdminIdentitiesListResponseDataBindingsItem.from_dict(admin_identities_list_response_data_bindings_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


