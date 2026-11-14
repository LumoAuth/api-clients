

# AbacPolicy


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**slug** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**resourceType** | **String** |  |  [optional] |
|**action** | **String** | One action, several separated by commas (read, write), or * for every action. The policy decides a request for each action that it names; spaces around the commas are ignored and actions compare case-sensitively. |  [optional] |
|**effect** | [**EffectEnum**](#EffectEnum) |  |  [optional] |
|**priority** | **Integer** |  |  [optional] |
|**conditions** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**isActive** | **Boolean** |  |  [optional] |
|**isSystem** | **Boolean** |  |  [optional] |
|**builtIn** | **Boolean** | True for a policy that LumoAuth provides to every organization. It can be read, but not changed, switched or deleted (403). |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: EffectEnum

| Name | Value |
|---- | -----|
| ALLOW | &quot;allow&quot; |
| DENY | &quot;deny&quot; |



