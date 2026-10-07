# AdminIdentitiesLinkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**idpId** | **Int** | SAML IdP config id (type&#x3D;saml) | [optional] 
**nameId** | **String** | NameID the IdP asserts for this user (type&#x3D;saml) | [optional] 
**ldapConfigId** | **Int** | LDAP directory id (type&#x3D;ldap) | [optional] 
**dn** | **String** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up | [optional] 
**ldapOnly** | **Bool** | Also disable the local password (type&#x3D;ldap) | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


