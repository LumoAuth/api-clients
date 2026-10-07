

# AdminWebhooksDeliveryShowResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  [optional] |
|**webhookId** | **Integer** |  |  [optional] |
|**deliveryId** | **String** |  |  [optional] |
|**eventName** | **String** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**attemptCount** | **Integer** |  |  [optional] |
|**lastStatusCode** | **Integer** |  |  [optional] |
|**lastResponseBody** | **String** |  |  [optional] |
|**lastError** | **String** |  |  [optional] |
|**nextAttemptAt** | **OffsetDateTime** |  |  [optional] |
|**succeededAt** | **OffsetDateTime** |  |  [optional] |
|**deadLetteredAt** | **OffsetDateTime** |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |
|**payload** | **Map&lt;String, Object&gt;** | Event payload as sent to the receiver |  [optional] |
|**attempts** | [**List&lt;AdminWebhooksDeliveryShowResponseData1AttemptsItem&gt;**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| SUCCESS | &quot;success&quot; |
| FAILED | &quot;failed&quot; |
| DEAD_LETTERED | &quot;dead_lettered&quot; |



