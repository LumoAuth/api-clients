

# AbacAttributeDefinition


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**slug** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**attributeType** | [**AttributeTypeEnum**](#AttributeTypeEnum) |  |  [optional] |
|**dataType** | **String** |  |  [optional] |
|**validationRules** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**defaultValue** | **Object** |  |  [optional] |
|**isRequired** | **Boolean** |  |  [optional] |
|**isSystem** | **Boolean** |  |  [optional] |
|**builtIn** | **Boolean** | True for a definition that LumoAuth provides to every organization. It can be read, but not changed or deleted (403). |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: AttributeTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;user&quot; |
| RESOURCE | &quot;resource&quot; |
| ENVIRONMENT | &quot;environment&quot; |



