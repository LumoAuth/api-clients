# PoppyError

An error with a JSON body, as Personal Agent Protocol defines it (invalid_session, session_ended, version_unsupported, invalid_request).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **string** |  | [default to undefined]
**error_description** | **string** | For the developer of the personal agent. | [optional] [default to undefined]

## Example

```typescript
import { PoppyError } from '@lumoauth/api-client';

const instance: PoppyError = {
    error,
    error_description,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
