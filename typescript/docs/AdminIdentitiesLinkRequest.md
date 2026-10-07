# AdminIdentitiesLinkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** |  | [default to undefined]
**idp_id** | **number** | SAML IdP config id (type&#x3D;saml) | [optional] [default to undefined]
**name_id** | **string** | NameID the IdP asserts for this user (type&#x3D;saml) | [optional] [default to undefined]
**ldap_config_id** | **number** | LDAP directory id (type&#x3D;ldap) | [optional] [default to undefined]
**dn** | **string** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up | [optional] [default to undefined]
**ldap_only** | **boolean** | Also disable the local password (type&#x3D;ldap) | [optional] [default to false]

## Example

```typescript
import { AdminIdentitiesLinkRequest } from '@lumoauth/api-client';

const instance: AdminIdentitiesLinkRequest = {
    type,
    idp_id,
    name_id,
    ldap_config_id,
    dn,
    ldap_only,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
