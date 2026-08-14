

# RequestPermissionRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskId** | **String** | Required. Task context. |  [optional] |
|**authorizationDetails** | **Object** | Required. RFC 9396 authorization_details object (needs a type). |  [optional] |
|**justification** | **String** | Optional human-readable justification. |  [optional] |
|**requestedTtl** | **Integer** | Optional TTL in seconds (default 600). |  [optional] |
|**callbackUrl** | **String** | Optional HITL notification webhook. |  [optional] |



