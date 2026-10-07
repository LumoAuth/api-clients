

# AbacPolicy


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**slug** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**resourceType** | **String** |  |  [optional] |
|**action** | **String** |  |  [optional] |
|**effect** | [**EffectEnum**](#EffectEnum) |  |  [optional] |
|**priority** | **Integer** |  |  [optional] |
|**conditions** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**isActive** | **Boolean** |  |  [optional] |
|**isSystem** | **Boolean** |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: EffectEnum

| Name | Value |
|---- | -----|
| ALLOW | &quot;allow&quot; |
| DENY | &quot;deny&quot; |



