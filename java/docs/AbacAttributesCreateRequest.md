

# AbacAttributesCreateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**slug** | **String** |  |  |
|**attributeType** | [**AttributeTypeEnum**](#AttributeTypeEnum) | Also accepted as attribute_type. |  |
|**dataType** | [**DataTypeEnum**](#DataTypeEnum) | Also accepted as data_type. |  |
|**description** | **String** |  |  [optional] |
|**defaultValue** | **Object** |  |  [optional] |
|**validationRules** | **Map&lt;String, Object&gt;** |  |  [optional] |



## Enum: AttributeTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;user&quot; |
| RESOURCE | &quot;resource&quot; |
| ENVIRONMENT | &quot;environment&quot; |



## Enum: DataTypeEnum

| Name | Value |
|---- | -----|
| STRING | &quot;string&quot; |
| NUMBER | &quot;number&quot; |
| BOOLEAN | &quot;boolean&quot; |
| ARRAY | &quot;array&quot; |
| DATE | &quot;date&quot; |
| DATETIME | &quot;datetime&quot; |



