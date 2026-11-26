

# GetPoppySessionStatusResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**status** | [**StatusEnum**](#StatusEnum) | unknown: no Session with this sid (never started, or forgotten after the idle period). |  |
|**userId** | **String** |  |  [optional] |
|**agentId** | **String** |  |  [optional] |
|**account** | **String** | The id of the account that the Session used, if any. |  [optional] |
|**signedIn** | **Boolean** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. |  |
|**lastSeenAt** | **OffsetDateTime** |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| ENDED | &quot;ended&quot; |
| UNKNOWN | &quot;unknown&quot; |



