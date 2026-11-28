

# PutAdminWebhooksUpdateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**url** | **URI** | A new URL for a webhook that has a signing secret needs rotateSecret: true. |  [optional] |
|**events** | **List&lt;String&gt;** |  |  [optional] |
|**isActive** | **Boolean** | Also accepted as active or enabled. |  [optional] |
|**type** | **String** |  |  [optional] |
|**_configuration** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**rotateSecret** | **Boolean** | Issue a new signing secret (returned once). |  [optional] |



