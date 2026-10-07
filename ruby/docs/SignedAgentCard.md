# LumoAuthApiClient::SignedAgentCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **protocol_version** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **url** | **String** | The agent&#39;s A2A endpoint. |  |
| **preferred_transport** | **String** |  |  |
| **provider** | [**GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  |  |
| **capabilities** | [**GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  |  |
| **default_input_modes** | **Array&lt;String&gt;** |  |  |
| **default_output_modes** | **Array&lt;String&gt;** |  |  |
| **security_schemes** | **Hash&lt;String, Object&gt;** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization&#39;s token endpoint and lists the agent&#39;s capabilities as scopes. |  |
| **security** | **Array&lt;Hash&lt;String, Array&lt;String&gt;&gt;&gt;** | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. |  |
| **skills** | [**Array&lt;GetAgentCardResponseSkillsItem&gt;**](GetAgentCardResponseSkillsItem.md) |  |  |
| **version** | **String** | Declared metadata version suffixed with a content digest. |  |
| **signatures** | [**Array&lt;GetAgentCardResponseSignaturesItem&gt;**](GetAgentCardResponseSignaturesItem.md) |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SignedAgentCard.new(
  protocol_version: null,
  name: null,
  description: null,
  url: null,
  preferred_transport: JSONRPC,
  provider: null,
  capabilities: null,
  default_input_modes: [&quot;text/plain&quot;,&quot;application/json&quot;],
  default_output_modes: [&quot;text/plain&quot;,&quot;application/json&quot;],
  security_schemes: null,
  security: null,
  skills: null,
  version: 1.0+3f1c2a9b,
  signatures: null
)
```

