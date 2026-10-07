# LumoAuthApiClient::AdminAnalyticsDashboardResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**AdminAnalyticsDashboardResponseDataUsers**](AdminAnalyticsDashboardResponseDataUsers.md) |  | [optional] |
| **clients** | [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] |
| **authentication** | [**AdminAnalyticsDashboardResponseDataAuthentication**](AdminAnalyticsDashboardResponseDataAuthentication.md) |  | [optional] |
| **audit** | [**AdminAnalyticsDashboardResponseDataAudit**](AdminAnalyticsDashboardResponseDataAudit.md) |  | [optional] |
| **generated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAnalyticsDashboardResponseData.new(
  users: null,
  clients: null,
  authentication: null,
  audit: null,
  generated_at: null
)
```

