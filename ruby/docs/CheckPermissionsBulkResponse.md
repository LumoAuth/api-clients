# LumoAuthApiClient::CheckPermissionsBulkResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | **Hash&lt;String, Boolean&gt;** | Map of permission slug to decision | [optional] |
| **subject_type** | **String** |  | [optional] |
| **subject_id** | **String** |  | [optional] |
| **user_id** | **String** | Only present when the subject is a user (legacy alias of subject_id) | [optional] |
| **context** | **Hash&lt;String, Object&gt;** | The request context echoed back | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckPermissionsBulkResponse.new(
  results: {&quot;document.edit&quot;:true,&quot;document.delete&quot;:false},
  subject_type: null,
  subject_id: null,
  user_id: null,
  context: null
)
```

