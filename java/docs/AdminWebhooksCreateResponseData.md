

# AdminWebhooksCreateResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  |
|**url** | **URI** |  |  |
|**events** | **List&lt;String&gt;** |  |  |
|**type** | **String** |  |  |
|**isActive** | **Boolean** |  |  |
|**failureCount** | **Integer** |  |  |
|**createdAt** | **OffsetDateTime** |  |  |
|**lastTriggeredAt** | **OffsetDateTime** |  |  [optional] |
|**_configuration** | **Map&lt;String, Object&gt;** | Detailed responses only |  [optional] |
|**secret** | **String** | HMAC signing secret, returned only at creation |  [optional] |
|**note** | **String** |  |  [optional] |



