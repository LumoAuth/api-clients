# LumoAuthApiClient::AdminOrgInvitationsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **role_id** | **Integer** | Optional: a role of the customer organization. | [optional] |
| **message** | **String** | Optional text for the invitation email. | [optional] |
| **skip_email** | **Boolean** | true creates the invitation without sending the email. | [optional][default to false] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminOrgInvitationsCreateRequest.new(
  email: null,
  role_id: null,
  message: null,
  skip_email: null
)
```

