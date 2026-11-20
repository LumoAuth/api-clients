

# CreateApprovalRequestMeta

Optional structured details shown on the approval card. Only the keys below are kept (others are dropped); every string is cleaned and shortened.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | **String** |  |  [optional] |
|**host** | **String** |  |  [optional] |
|**tool** | **String** |  |  [optional] |
|**server** | **String** |  |  [optional] |
|**capability** | **String** |  |  [optional] |
|**risk** | **String** |  |  [optional] |
|**why** | **String** |  |  [optional] |
|**title** | **String** |  |  [optional] |
|**args** | **List&lt;String&gt;** | Argument lines; at most 5 are kept, each cut to 240 characters. |  [optional] |
|**argumentsSha256** | **String** |  |  [optional] |



