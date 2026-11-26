# LumoAuthApiClient::AdminPoppyGetResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | **Hash&lt;String, Object&gt;** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional] |
| **active** | **Boolean** | The protocol is switched on, in the plan, and the organization is active. | [optional] |
| **in_plan** | **Boolean** |  | [optional] |
| **identifier** | **String** | The Company identifier: the issuer that Session JWTs name as aud. | [optional] |
| **issuer_choices** | [**Array&lt;AdminPoppyGetResponseDataIssuerChoicesItem&gt;**](AdminPoppyGetResponseDataIssuerChoicesItem.md) |  | [optional] |
| **offered_scopes** | **Array&lt;String&gt;** |  | [optional] |
| **offered_resources** | **Array&lt;String&gt;** |  | [optional] |
| **tasks_endpoint** | **String** |  | [optional] |
| **feedback_endpoint** | **String** |  | [optional] |
| **documents** | [**Array&lt;AdminPoppyGetResponseDataDocumentsItem&gt;**](AdminPoppyGetResponseDataDocumentsItem.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppyGetResponseData.new(
  settings: null,
  active: null,
  in_plan: null,
  identifier: null,
  issuer_choices: null,
  offered_scopes: null,
  offered_resources: null,
  tasks_endpoint: null,
  feedback_endpoint: null,
  documents: null
)
```

