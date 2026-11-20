# LumoAuthApiClient::StartAgentEnrollmentRequestCapabilitiesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). |  |
| **risk** | **String** |  |  |
| **label** | **String** |  | [optional] |
| **checked** | **Boolean** | Pre-ticked on the approval page. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::StartAgentEnrollmentRequestCapabilitiesItem.new(
  scope: files:read,
  risk: null,
  label: Read files,
  checked: null
)
```

