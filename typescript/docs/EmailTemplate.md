# EmailTemplate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** |  | [default to undefined]
**is_custom** | **boolean** |  | [default to undefined]
**subject** | **string** |  | [default to undefined]
**is_active** | **boolean** |  | [default to undefined]
**created_at** | **string** |  | [optional] [default to undefined]
**updated_at** | **string** |  | [optional] [default to undefined]
**variables** | **Array&lt;string&gt;** |  | [default to undefined]
**body_html** | **string** | Single-template responses only | [optional] [default to undefined]

## Example

```typescript
import { EmailTemplate } from '@lumoauth/api-client';

const instance: EmailTemplate = {
    type,
    is_custom,
    subject,
    is_active,
    created_at,
    updated_at,
    variables,
    body_html,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
