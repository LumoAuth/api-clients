

# GetStreamConfig200Response


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**streamId** | **String** |  |  [optional] |
|**iss** | **String** |  |  [optional] |
|**aud** | **String** |  |  [optional] |
|**delivery** | [**SsfStreamDelivery**](SsfStreamDelivery.md) |  |  [optional] |
|**eventsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**eventsRequested** | **List&lt;String&gt;** |  |  [optional] |
|**eventsDelivered** | **List&lt;String&gt;** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**streams** | [**List&lt;SsfStream&gt;**](SsfStream.md) |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ENABLED | &quot;enabled&quot; |
| PAUSED | &quot;paused&quot; |
| DISABLED | &quot;disabled&quot; |



