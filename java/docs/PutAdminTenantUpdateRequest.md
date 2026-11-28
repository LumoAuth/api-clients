

# PutAdminTenantUpdateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | Name of the organization. |  [optional] |
|**settings** | **Map&lt;String, Object&gt;** | General settings; keys merge with the stored ones and null clears a key. Writable keys: security, audit_log_retention_days, audit_log_auto_delete, agent_governance, b2b_org_admins_may_invite_new_accounts (boolean) and authz, whose only key is audit_allow_decisions (boolean: also write an audit entry, authzen.evaluation_allowed, for every ALLOW of the AuthZEN evaluation endpoints; denials are always audited). Any other key is refused with 400. |  [optional] |



