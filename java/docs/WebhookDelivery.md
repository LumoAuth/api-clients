

# WebhookDelivery


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



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| SUCCESS | &quot;success&quot; |
| FAILED | &quot;failed&quot; |
| DEAD_LETTERED | &quot;dead_lettered&quot; |



