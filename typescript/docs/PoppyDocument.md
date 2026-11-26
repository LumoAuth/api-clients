# PoppyDocument

The poppy.json of one Company domain (Personal Agent Protocol 3.1), built from the organization\'s settings.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_version** | **string** |  | [default to undefined]
**organization** | [**PoppyDocumentOrganization**](PoppyDocumentOrganization.md) |  | [default to undefined]
**auth** | [**PoppyDocumentAuth**](PoppyDocumentAuth.md) |  | [optional] [default to undefined]
**agent** | [**PoppyDocumentAgent**](PoppyDocumentAgent.md) |  | [optional] [default to undefined]
**web** | [**PoppyDocumentWeb**](PoppyDocumentWeb.md) |  | [optional] [default to undefined]
**tasks** | [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] [default to undefined]
**apis** | [**Array&lt;PoppyDocumentApisInner&gt;**](PoppyDocumentApisInner.md) |  | [optional] [default to undefined]
**extensions** | **{ [key: string]: Array&lt;{ [key: string]: any; }&gt;; }** |  | [optional] [default to undefined]

## Example

```typescript
import { PoppyDocument } from '@lumoauth/api-client';

const instance: PoppyDocument = {
    protocol_version,
    organization,
    auth,
    agent,
    web,
    tasks,
    apis,
    extensions,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
