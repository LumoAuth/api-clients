# # AdminIdentitiesLinkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** |  |
**idpId** | **int** | SAML IdP config id (type&#x3D;saml) | [optional]
**nameId** | **string** | NameID the IdP asserts for this user (type&#x3D;saml) | [optional]
**ldapConfigId** | **int** | LDAP directory id (type&#x3D;ldap) | [optional]
**dn** | **string** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up | [optional]
**ldapOnly** | **bool** | Also disable the local password (type&#x3D;ldap) | [optional] [default to false]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
