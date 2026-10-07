

# AdminIdentitiesLinkRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) |  |  |
|**idpId** | **Integer** | SAML IdP config id (type&#x3D;saml) |  [optional] |
|**nameId** | **String** | NameID the IdP asserts for this user (type&#x3D;saml) |  [optional] |
|**ldapConfigId** | **Integer** | LDAP directory id (type&#x3D;ldap) |  [optional] |
|**dn** | **String** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up |  [optional] |
|**ldapOnly** | **Boolean** | Also disable the local password (type&#x3D;ldap) |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| SAML | &quot;saml&quot; |
| LDAP | &quot;ldap&quot; |



