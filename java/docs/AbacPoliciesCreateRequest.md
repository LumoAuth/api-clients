

# AbacPoliciesCreateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**slug** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**resourceType** | **String** |  |  |
|**action** | **String** | One action, a comma-separated list of actions, or *. |  |
|**effect** | [**EffectEnum**](#EffectEnum) |  |  |
|**priority** | **Integer** |  |  [optional] |
|**conditions** | **Map&lt;String, Object&gt;** | A condition group: {\&quot;operator\&quot;: \&quot;AND\&quot;|\&quot;OR\&quot;, \&quot;conditions\&quot;: [...]}. |  |



## Enum: EffectEnum

| Name | Value |
|---- | -----|
| ALLOW | &quot;allow&quot; |
| DENY | &quot;deny&quot; |



