# SignedAgentCard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolVersion** | **String** |  | 
**name** | **String** |  | 
**description** | **String** |  | 
**url** | **String** | The agent&#39;s A2A endpoint. | 
**preferredTransport** | **String** |  | 
**provider** | [**GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  | 
**capabilities** | [**GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  | 
**defaultInputModes** | **[String]** |  | 
**defaultOutputModes** | **[String]** |  | 
**securitySchemes** | **[String: AnyCodable]** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization&#39;s token endpoint and lists the agent&#39;s capabilities as scopes. | 
**security** | [[String: [String]]] | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. | 
**skills** | [GetAgentCardResponseSkillsItem] |  | 
**version** | **String** | Declared metadata version suffixed with a content digest. | 
**signatures** | [GetAgentCardResponseSignaturesItem] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


