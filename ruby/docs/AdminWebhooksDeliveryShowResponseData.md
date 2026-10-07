# LumoAuthApiClient::AdminWebhooksDeliveryShowResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **webhook_id** | **Integer** |  | [optional] |
| **delivery_id** | **String** |  | [optional] |
| **event_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **attempt_count** | **Integer** |  | [optional] |
| **last_status_code** | **Integer** |  | [optional] |
| **last_response_body** | **String** |  | [optional] |
| **last_error** | **String** |  | [optional] |
| **next_attempt_at** | **Time** |  | [optional] |
| **succeeded_at** | **Time** |  | [optional] |
| **dead_lettered_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **payload** | **Hash&lt;String, Object&gt;** | Event payload as sent to the receiver | [optional] |
| **attempts** | [**Array&lt;AdminWebhooksDeliveryShowResponseData1AttemptsItem&gt;**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksDeliveryShowResponseData.new(
  id: null,
  webhook_id: null,
  delivery_id: null,
  event_name: null,
  status: null,
  attempt_count: null,
  last_status_code: null,
  last_response_body: null,
  last_error: null,
  next_attempt_at: null,
  succeeded_at: null,
  dead_lettered_at: null,
  created_at: null,
  updated_at: null,
  payload: null,
  attempts: null
)
```

