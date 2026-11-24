

# PollAgentEnrollmentResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**agentId** | **String** |  |  |
|**clientId** | **String** | The agent id, as the client_id of its token requests. |  |
|**issuer** | **URI** | The value a client assertion&#39;s aud must equal. |  |
|**tokenEndpoint** | **URI** |  |  |
|**keyId** | **String** | kid of the registered key (the first one). |  [optional] |
|**capabilities** | **List&lt;String&gt;** | The capabilities the person granted. |  |
|**canActOnBehalfOfUsers** | **Boolean** |  |  |
|**ownerUserId** | **String** | The approving person, the agent&#39;s owner. |  [optional] |
|**agentUrl** | **URI** | The agent&#39;s page in the portal. |  |



