# AdminIdentitiesLegacySamlRelinkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idp_id** | **int** |  | 
**user_ids** | **List[str]** |  | [optional] 
**all_matching_domains** | **bool** |  | [optional] [default to False]
**dry_run** | **bool** |  | [optional] [default to True]

## Example

```python
from lumoauth_api_client.models.admin_identities_legacy_saml_relink_request import AdminIdentitiesLegacySamlRelinkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesLegacySamlRelinkRequest from a JSON string
admin_identities_legacy_saml_relink_request_instance = AdminIdentitiesLegacySamlRelinkRequest.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesLegacySamlRelinkRequest.to_json())

# convert the object into a dict
admin_identities_legacy_saml_relink_request_dict = admin_identities_legacy_saml_relink_request_instance.to_dict()
# create an instance of AdminIdentitiesLegacySamlRelinkRequest from a dict
admin_identities_legacy_saml_relink_request_from_dict = AdminIdentitiesLegacySamlRelinkRequest.from_dict(admin_identities_legacy_saml_relink_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


