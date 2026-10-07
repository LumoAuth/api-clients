# LumoAuth.ApiClient.Model.SignedAgentCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtocolVersion** | **string** |  | 
**Name** | **string** |  | 
**Description** | **string** |  | 
**Url** | **string** | The agent&#39;s A2A endpoint. | 
**PreferredTransport** | **string** |  | 
**Provider** | [**GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  | 
**Capabilities** | [**GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  | 
**DefaultInputModes** | **List&lt;string&gt;** |  | 
**DefaultOutputModes** | **List&lt;string&gt;** |  | 
**SecuritySchemes** | **Dictionary&lt;string, Object&gt;** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization&#39;s token endpoint and lists the agent&#39;s capabilities as scopes. | 
**Security** | **List&lt;Dictionary&lt;string, List&lt;string&gt;&gt;&gt;** | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. | 
**Skills** | [**List&lt;GetAgentCardResponseSkillsItem&gt;**](GetAgentCardResponseSkillsItem.md) |  | 
**VarVersion** | **string** | Declared metadata version suffixed with a content digest. | 
**Signatures** | [**List&lt;GetAgentCardResponseSignaturesItem&gt;**](GetAgentCardResponseSignaturesItem.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

