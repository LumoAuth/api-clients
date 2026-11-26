# LumoAuthApiClient::AdminPoppyGetResponseDataDocumentsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** |  | [optional] |
| **poppy_json** | **Hash&lt;String, Object&gt;** | The generated poppy.json of the domain. | [optional] |
| **protected_resource_metadata** | **Hash&lt;String, Object&gt;** | The generated RFC 9728 document of the domain. | [optional] |
| **hosted** | [**AdminPoppyGetResponseDataDocumentsItemHosted**](AdminPoppyGetResponseDataDocumentsItemHosted.md) |  | [optional] |
| **serve_at** | [**AdminPoppyGetResponseDataDocumentsItemServeAt**](AdminPoppyGetResponseDataDocumentsItemServeAt.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppyGetResponseDataDocumentsItem.new(
  domain: example.com,
  poppy_json: null,
  protected_resource_metadata: null,
  hosted: null,
  serve_at: null
)
```

