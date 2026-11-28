

# CheckPermissionRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**permission** | **String** |  |  |
|**context** | **Map&lt;String, Object&gt;** | Optional: resource_id and the slugs of defined environment attributes. |  [optional] |
|**subject** | **Map&lt;String, Object&gt;** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. |  [optional] |



