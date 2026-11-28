# RegisterAgentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | **{ [key: string]: any; }** | The agent to register or update (name, description, identity, capabilities, ...). The same fields may also be sent at the top level. | [optional] [default to undefined]
**email** | **string** | Optional inline sign-in of the person who registers the agent; a session or access token is preferred. | [optional] [default to undefined]
**password** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { RegisterAgentRequest } from '@lumoauth/api-client';

const instance: RegisterAgentRequest = {
    agent,
    email,
    password,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
