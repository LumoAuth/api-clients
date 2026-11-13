# LumoAuth.ApiClient.Model.AdminIdentitiesLinkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**IdpId** | **int** | SAML IdP config id (type&#x3D;saml) or OpenID Connect connection id (type&#x3D;oidc) | [optional] 
**Subject** | **string** | Subject the OpenID Connect provider issues for this user (type&#x3D;oidc) | [optional] 
**NameId** | **string** | NameID the IdP asserts for this user (type&#x3D;saml) | [optional] 
**LdapConfigId** | **int** | LDAP directory id (type&#x3D;ldap) | [optional] 
**Dn** | **string** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up | [optional] 
**LdapOnly** | **bool** | Also disable the local password (type&#x3D;ldap) | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

