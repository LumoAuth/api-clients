

# CreateApprovalResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**approvalToken** | **String** |  |  [optional] |
|**status** | **String** |  |  [optional] |
|**expiresAt** | **OffsetDateTime** |  |  [optional] |
|**taskId** | **String** |  |  [optional] |
|**impact** | **String** |  |  [optional] |
|**delivery** | [**List&lt;DeliveryEnum&gt;**](#List&lt;DeliveryEnum&gt;) | Where the request went: &#x60;push&#x60; (the LumoAuth app), &#x60;slack&#x60;, &#x60;discord&#x60;. |  [optional] |



## Enum: List&lt;DeliveryEnum&gt;

| Name | Value |
|---- | -----|
| PUSH | &quot;push&quot; |
| SLACK | &quot;slack&quot; |
| DISCORD | &quot;discord&quot; |



