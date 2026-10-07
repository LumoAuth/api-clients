# SignedAgentCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_version** | **String** |  | 
**name** | **String** |  | 
**description** | **String** |  | 
**url** | **String** | The agent's A2A endpoint. | 
**preferred_transport** | **String** |  | 
**provider** | [**models::GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  | 
**capabilities** | [**models::GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  | 
**default_input_modes** | **Vec<String>** |  | 
**default_output_modes** | **Vec<String>** |  | 
**security_schemes** | [**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md) | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization's token endpoint and lists the agent's capabilities as scopes. | 
**security** | [**Vec<std::collections::HashMap<String, Vec<String>>>**](std::collections::HashMap.md) | Security requirements: [{\"lumoauth_oauth2\": [<capability scopes>]}]. | 
**skills** | [**Vec<models::GetAgentCardResponseSkillsItem>**](GetAgentCardResponseSkillsItem.md) |  | 
**version** | **String** | Declared metadata version suffixed with a content digest. | 
**signatures** | [**Vec<models::GetAgentCardResponseSignaturesItem>**](GetAgentCardResponseSignaturesItem.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


