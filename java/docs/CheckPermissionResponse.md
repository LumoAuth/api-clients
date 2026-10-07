

# CheckPermissionResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**allowed** | **Boolean** |  |  [optional] |
|**permission** | **String** |  |  [optional] |
|**subjectType** | [**SubjectTypeEnum**](#SubjectTypeEnum) |  |  [optional] |
|**subjectId** | **String** |  |  [optional] |
|**userId** | **UUID** | Only present when the subject is a user (legacy alias of subject_id) |  [optional] |
|**context** | **Map&lt;String, Object&gt;** | The request context echoed back |  [optional] |



## Enum: SubjectTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;user&quot; |
| AGENT | &quot;agent&quot; |



