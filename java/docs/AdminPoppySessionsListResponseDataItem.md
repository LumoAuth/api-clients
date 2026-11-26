

# AdminPoppySessionsListResponseDataItem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  [optional] |
|**clientId** | **URI** |  |  [optional] |
|**clientName** | **String** |  |  [optional] |
|**userId** | **String** |  |  [optional] |
|**agentId** | **String** |  |  [optional] |
|**signedIn** | **Boolean** |  |  [optional] |
|**accountId** | **UUID** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**endedReason** | **String** |  |  [optional] |
|**protocolVersion** | **String** |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**lastSeenAt** | **OffsetDateTime** |  |  [optional] |
|**endedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| ENDED | &quot;ended&quot; |



