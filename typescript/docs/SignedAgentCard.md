# SignedAgentCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolVersion** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**description** | **string** |  | [default to undefined]
**url** | **string** | The agent\&#39;s A2A endpoint. | [default to undefined]
**preferredTransport** | **string** |  | [default to undefined]
**provider** | [**GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  | [default to undefined]
**capabilities** | [**GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  | [default to undefined]
**defaultInputModes** | **Array&lt;string&gt;** |  | [default to undefined]
**defaultOutputModes** | **Array&lt;string&gt;** |  | [default to undefined]
**securitySchemes** | **{ [key: string]: any; }** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization\&#39;s token endpoint and lists the agent\&#39;s capabilities as scopes. | [default to undefined]
**security** | **Array&lt;{ [key: string]: Array&lt;string&gt;; }&gt;** | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. | [default to undefined]
**skills** | [**Array&lt;GetAgentCardResponseSkillsItem&gt;**](GetAgentCardResponseSkillsItem.md) |  | [default to undefined]
**version** | **string** | Declared metadata version suffixed with a content digest. | [default to undefined]
**signatures** | [**Array&lt;GetAgentCardResponseSignaturesItem&gt;**](GetAgentCardResponseSignaturesItem.md) |  | [default to undefined]

## Example

```typescript
import { SignedAgentCard } from '@lumoauth/api-client';

const instance: SignedAgentCard = {
    protocolVersion,
    name,
    description,
    url,
    preferredTransport,
    provider,
    capabilities,
    defaultInputModes,
    defaultOutputModes,
    securitySchemes,
    security,
    skills,
    version,
    signatures,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
