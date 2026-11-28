# LumoAuthApiClient::CheckAbacBulkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checks** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Each {\&quot;resourceType\&quot;, \&quot;action\&quot;, \&quot;resourceId\&quot;}. |  |
| **environment** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckAbacBulkRequest.new(
  checks: null,
  environment: null
)
```

