

# AdminAgentsAgentsRotateKeyRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**apiKeyExpiresInDays** | **Integer** | Days until the new key expires; null for a key that never expires. |  [optional] |
|**apiKeyExpiresAt** | **OffsetDateTime** | Exact expiry of the new key (ISO 8601, in the future); null for never. Ignored when apiKeyExpiresInDays is sent. |  [optional] |



