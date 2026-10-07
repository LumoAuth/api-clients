# AdminIdentitiesLinkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#type** | **String** |  | 
**idp_id** | Option<**i32**> | SAML IdP config id (type=saml) | [optional]
**name_id** | Option<**String**> | NameID the IdP asserts for this user (type=saml) | [optional]
**ldap_config_id** | Option<**i32**> | LDAP directory id (type=ldap) | [optional]
**dn** | Option<**String**> | Distinguished name (type=ldap); omitted = look up | [optional]
**ldap_only** | Option<**bool**> | Also disable the local password (type=ldap) | [optional][default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


