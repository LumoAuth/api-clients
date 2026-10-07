# AdminIdentitiesLegacySamlReportResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idp_count** | **int** |  | [optional] 
**ambiguous** | **bool** |  | [optional] 
**users** | [**List[AdminIdentitiesLegacySamlReportResponseDataUsersItem]**](AdminIdentitiesLegacySamlReportResponseDataUsersItem.md) |  | [optional] 
**idps** | **List[object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_identities_legacy_saml_report_response_data import AdminIdentitiesLegacySamlReportResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesLegacySamlReportResponseData from a JSON string
admin_identities_legacy_saml_report_response_data_instance = AdminIdentitiesLegacySamlReportResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesLegacySamlReportResponseData.to_json())

# convert the object into a dict
admin_identities_legacy_saml_report_response_data_dict = admin_identities_legacy_saml_report_response_data_instance.to_dict()
# create an instance of AdminIdentitiesLegacySamlReportResponseData from a dict
admin_identities_legacy_saml_report_response_data_from_dict = AdminIdentitiesLegacySamlReportResponseData.from_dict(admin_identities_legacy_saml_report_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


