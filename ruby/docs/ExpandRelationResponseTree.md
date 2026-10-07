# LumoAuthApiClient::ExpandRelationResponseTree

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **relation** | **String** |  | [optional] |
| **children** | **Array&lt;Object&gt;** | Nested nodes (same shape); empty for leaves. | [optional] |
| **subjects** | **Array&lt;String&gt;** | Direct subjects; usersets are listed as-is. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ExpandRelationResponseTree.new(
  type: null,
  object: document:123,
  relation: viewer,
  children: null,
  subjects: [&quot;user:1&quot;,&quot;group:2#member&quot;]
)
```

