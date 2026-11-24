

# StartAgentEnrollmentRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**host** | [**HostEnum**](#HostEnum) |  |  |
|**hostLabel** | **String** |  |  [optional] |
|**jwks** | [**StartAgentEnrollmentRequestJwks**](StartAgentEnrollmentRequestJwks.md) |  |  |
|**capabilities** | [**List&lt;StartAgentEnrollmentRequestCapabilitiesItem&gt;**](StartAgentEnrollmentRequestCapabilitiesItem.md) |  |  |
|**delegation** | **Boolean** | The agent asks to act on behalf of the approving person (needed for push approvals). |  [optional] |
|**inventory** | [**StartAgentEnrollmentRequestInventory**](StartAgentEnrollmentRequestInventory.md) |  |  [optional] |



## Enum: HostEnum

| Name | Value |
|---- | -----|
| OPENCLAW | &quot;openclaw&quot; |
| HERMES | &quot;hermes&quot; |
| OTHER | &quot;other&quot; |



