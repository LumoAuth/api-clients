# LumoAuthApiClient::CheckPermissionsBulkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permissions** | **Array&lt;String&gt;** |  |  |
| **context** | **Hash&lt;String, Object&gt;** | Optional: resource_id and the slugs of defined environment attributes. | [optional] |
| **subject** | **Hash&lt;String, Object&gt;** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckPermissionsBulkRequest.new(
  permissions: null,
  context: null,
  subject: null
)
```

