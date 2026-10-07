# LumoAuthApiClient::OrganizationInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **email** | **String** |  | [optional] |
| **role** | [**OrganizationInvitationRole**](OrganizationInvitationRole.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **invited_by** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::OrganizationInvitation.new(
  id: null,
  email: null,
  role: null,
  status: null,
  invited_by: null,
  created_at: null,
  expires_at: null
)
```

