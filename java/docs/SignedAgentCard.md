

# SignedAgentCard


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**protocolVersion** | **String** |  |  |
|**name** | **String** |  |  |
|**description** | **String** |  |  |
|**url** | **URI** | The agent&#39;s A2A endpoint. |  |
|**preferredTransport** | **String** |  |  |
|**provider** | [**GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  |  |
|**capabilities** | [**GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  |  |
|**defaultInputModes** | **List&lt;String&gt;** |  |  |
|**defaultOutputModes** | **List&lt;String&gt;** |  |  |
|**securitySchemes** | **Map&lt;String, Object&gt;** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization&#39;s token endpoint and lists the agent&#39;s capabilities as scopes. |  |
|**security** | **List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt;** | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. |  |
|**skills** | [**List&lt;GetAgentCardResponseSkillsItem&gt;**](GetAgentCardResponseSkillsItem.md) |  |  |
|**version** | **String** | Declared metadata version suffixed with a content digest. |  |
|**signatures** | [**List&lt;GetAgentCardResponseSignaturesItem&gt;**](GetAgentCardResponseSignaturesItem.md) |  |  |



