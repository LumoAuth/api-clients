# AdminIdentitiesLinkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**idp_id** | **int** | SAML IdP config id (type&#x3D;saml) | [optional] 
**name_id** | **str** | NameID the IdP asserts for this user (type&#x3D;saml) | [optional] 
**ldap_config_id** | **int** | LDAP directory id (type&#x3D;ldap) | [optional] 
**dn** | **str** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up | [optional] 
**ldap_only** | **bool** | Also disable the local password (type&#x3D;ldap) | [optional] [default to False]

## Example

```python
from lumoauth_api_client.models.admin_identities_link_request import AdminIdentitiesLinkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminIdentitiesLinkRequest from a JSON string
admin_identities_link_request_instance = AdminIdentitiesLinkRequest.from_json(json)
# print the JSON string representation of the object
print(AdminIdentitiesLinkRequest.to_json())

# convert the object into a dict
admin_identities_link_request_dict = admin_identities_link_request_instance.to_dict()
# create an instance of AdminIdentitiesLinkRequest from a dict
admin_identities_link_request_from_dict = AdminIdentitiesLinkRequest.from_dict(admin_identities_link_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


