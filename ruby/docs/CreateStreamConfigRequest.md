# LumoAuthApiClient::CreateStreamConfigRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery** | **Hash&lt;String, Object&gt;** | RFC 8935 push ({\&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;https://...\&quot;}) or RFC 8936 poll. | [optional] |
| **events_requested** | **Array&lt;String&gt;** | Event type URIs. | [optional] |
| **audience** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateStreamConfigRequest.new(
  delivery: null,
  events_requested: null,
  audience: null
)
```

