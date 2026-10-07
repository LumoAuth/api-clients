# AdminIdentitiesLegacySamlRelinkResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dry_run** | **bool** |  | [optional] 
**idp_id** | **int** |  | [optional] 
**relinked** | **List[object]** |  | [optional] 
**skipped** | **List[object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_identities_legacy_saml_relink_response_data import AdminIdentitiesLegacySamlRelinkResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesLegacySamlRelinkResponseData from a JSON string
admin_identities_legacy_saml_relink_response_data_instance = AdminIdentitiesLegacySamlRelinkResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesLegacySamlRelinkResponseData.to_json())

# convert the object into a dict
admin_identities_legacy_saml_relink_response_data_dict = admin_identities_legacy_saml_relink_response_data_instance.to_dict()
# create an instance of AdminIdentitiesLegacySamlRelinkResponseData from a dict
admin_identities_legacy_saml_relink_response_data_from_dict = AdminIdentitiesLegacySamlRelinkResponseData.from_dict(admin_identities_legacy_saml_relink_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


