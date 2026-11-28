

# BackchannelAuthorizeResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**authReqId** | **String** |  |  |
|**expiresIn** | **Integer** | Lifetime of the auth_req_id in seconds: for an application 120, or a shorter requested_expiry (at least 30); for an agent-initiated request 300, or a requested_expiry between 30 and 600. |  |
|**interval** | **Integer** | Minimum polling interval in seconds (poll / ping modes). |  [optional] |



