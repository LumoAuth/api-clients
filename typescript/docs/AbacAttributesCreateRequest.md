# AbacAttributesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**slug** | **string** |  | [default to undefined]
**attributeType** | **string** | Also accepted as attribute_type. | [default to undefined]
**dataType** | **string** | Also accepted as data_type. | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**defaultValue** | **any** |  | [optional] [default to undefined]
**validationRules** | **{ [key: string]: any; }** |  | [optional] [default to undefined]

## Example

```typescript
import { AbacAttributesCreateRequest } from '@lumoauth/api-client';

const instance: AbacAttributesCreateRequest = {
    name,
    slug,
    attributeType,
    dataType,
    description,
    defaultValue,
    validationRules,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
