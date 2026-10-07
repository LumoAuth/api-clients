# # SignedAgentCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolVersion** | **string** |  |
**name** | **string** |  |
**description** | **string** |  |
**url** | **string** | The agent&#39;s A2A endpoint. |
**preferredTransport** | **string** |  |
**provider** | [**\LumoAuth\ApiClient\Model\GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  |
**capabilities** | [**\LumoAuth\ApiClient\Model\GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  |
**defaultInputModes** | **string[]** |  |
**defaultOutputModes** | **string[]** |  |
**securitySchemes** | **array<string,mixed>** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization&#39;s token endpoint and lists the agent&#39;s capabilities as scopes. |
**security** | **array<string,string[]>[]** | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. |
**skills** | [**\LumoAuth\ApiClient\Model\GetAgentCardResponseSkillsItem[]**](GetAgentCardResponseSkillsItem.md) |  |
**version** | **string** | Declared metadata version suffixed with a content digest. |
**signatures** | [**\LumoAuth\ApiClient\Model\GetAgentCardResponseSignaturesItem[]**](GetAgentCardResponseSignaturesItem.md) |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
