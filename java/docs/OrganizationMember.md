

# OrganizationMember


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  [optional] |
|**user** | [**UserRef**](UserRef.md) |  |  [optional] |
|**role** | [**OrganizationMemberRole**](OrganizationMemberRole.md) |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**joinedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| SUSPENDED | &quot;suspended&quot; |



