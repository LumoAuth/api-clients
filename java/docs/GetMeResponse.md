

# GetMeResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**subjectType** | [**SubjectTypeEnum**](#SubjectTypeEnum) |  |  [optional] |
|**id** | **String** |  |  [optional] |
|**email** | **String** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**mfaEnabled** | **Boolean** |  |  [optional] |
|**roles** | **List&lt;String&gt;** |  |  [optional] |
|**capabilities** | **List&lt;String&gt;** |  |  [optional] |
|**tenant** | [**GroupRef**](GroupRef.md) |  |  [optional] |



## Enum: SubjectTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;user&quot; |
| AGENT | &quot;agent&quot; |



