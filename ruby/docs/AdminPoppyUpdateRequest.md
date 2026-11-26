# LumoAuthApiClient::AdminPoppyUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **issuer** | **String** | null for the platform address, or one of the active custom domains. | [optional] |
| **organization** | [**AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  | [optional] |
| **domains** | **Array&lt;String&gt;** |  | [optional] |
| **sign_in** | [**AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  | [optional] |
| **scopes** | [**Hash&lt;String, AdminPoppyUpdateRequestScopesValue&gt;**](AdminPoppyUpdateRequestScopesValue.md) | Scope name &#x3D;&gt; {description, changes, personal_data}. | [optional] |
| **resources** | **Array&lt;String&gt;** |  | [optional] |
| **apis** | [**Array&lt;AdminPoppyUpdateRequestApisItem&gt;**](AdminPoppyUpdateRequestApisItem.md) |  | [optional] |
| **agent** | [**Array&lt;AdminPoppyUpdateRequestAgentItem&gt;**](AdminPoppyUpdateRequestAgentItem.md) |  | [optional] |
| **web** | [**AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  | [optional] |
| **tasks** | [**AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  | [optional] |
| **extensions** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **sessions** | [**AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppyUpdateRequest.new(
  enabled: null,
  issuer: null,
  organization: null,
  domains: null,
  sign_in: null,
  scopes: null,
  resources: null,
  apis: null,
  agent: null,
  web: null,
  tasks: null,
  extensions: null,
  sessions: null
)
```

