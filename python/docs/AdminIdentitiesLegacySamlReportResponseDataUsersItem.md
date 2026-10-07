# AdminIdentitiesLegacySamlReportResponseDataUsersItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**name_id** | **str** |  | [optional] 
**candidate_idp_ids** | **List[int]** |  | [optional] 
**suggested_idp_id** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_identities_legacy_saml_report_response_data_users_item import AdminIdentitiesLegacySamlReportResponseDataUsersItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesLegacySamlReportResponseDataUsersItem from a JSON string
admin_identities_legacy_saml_report_response_data_users_item_instance = AdminIdentitiesLegacySamlReportResponseDataUsersItem.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesLegacySamlReportResponseDataUsersItem.to_json())

# convert the object into a dict
admin_identities_legacy_saml_report_response_data_users_item_dict = admin_identities_legacy_saml_report_response_data_users_item_instance.to_dict()
# create an instance of AdminIdentitiesLegacySamlReportResponseDataUsersItem from a dict
admin_identities_legacy_saml_report_response_data_users_item_from_dict = AdminIdentitiesLegacySamlReportResponseDataUsersItem.from_dict(admin_identities_legacy_saml_report_response_data_users_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


