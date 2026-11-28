

# PutAbacPoliciesUpdateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**resourceType** | **String** |  |  [optional] |
|**action** | **String** |  |  [optional] |
|**effect** | [**EffectEnum**](#EffectEnum) |  |  [optional] |
|**priority** | **Integer** |  |  [optional] |
|**conditions** | **Map&lt;String, Object&gt;** |  |  [optional] |



## Enum: EffectEnum

| Name | Value |
|---- | -----|
| ALLOW | &quot;allow&quot; |
| DENY | &quot;deny&quot; |



