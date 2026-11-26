# LumoAuthApiClient::PoppyDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **protocol_version** | **String** |  |  |
| **organization** | [**PoppyDocumentOrganization**](PoppyDocumentOrganization.md) |  |  |
| **auth** | [**PoppyDocumentAuth**](PoppyDocumentAuth.md) |  | [optional] |
| **agent** | [**PoppyDocumentAgent**](PoppyDocumentAgent.md) |  | [optional] |
| **web** | [**PoppyDocumentWeb**](PoppyDocumentWeb.md) |  | [optional] |
| **tasks** | [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] |
| **apis** | [**Array&lt;PoppyDocumentApisInner&gt;**](PoppyDocumentApisInner.md) |  | [optional] |
| **extensions** | **Hash&lt;String, Array&lt;Hash&lt;String, Object&gt;&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyDocument.new(
  protocol_version: 1.0,
  organization: null,
  auth: null,
  agent: null,
  web: null,
  tasks: null,
  apis: null,
  extensions: null
)
```

