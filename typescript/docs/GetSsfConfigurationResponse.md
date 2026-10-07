# GetSsfConfigurationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**spec_version** | **string** |  | [optional] [default to undefined]
**issuer** | **string** |  | [optional] [default to undefined]
**jwks_uri** | **string** |  | [optional] [default to undefined]
**delivery_methods_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**configuration_endpoint** | **string** |  | [optional] [default to undefined]
**verification_endpoint** | **string** |  | [optional] [default to undefined]
**authorization_schemes** | [**Array&lt;GetSsfConfigurationResponseAuthorizationSchemesItem&gt;**](GetSsfConfigurationResponseAuthorizationSchemesItem.md) |  | [optional] [default to undefined]
**events_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]

## Example

```typescript
import { GetSsfConfigurationResponse } from '@lumoauth/api-client';

const instance: GetSsfConfigurationResponse = {
    spec_version,
    issuer,
    jwks_uri,
    delivery_methods_supported,
    configuration_endpoint,
    verification_endpoint,
    authorization_schemes,
    events_supported,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
