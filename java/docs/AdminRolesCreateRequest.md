

# AdminRolesCreateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**slug** | **String** | Optional; derived from the name when left out. 1 to 100 lowercase letters, digits and underscores, in parts joined by \&quot;.\&quot; or \&quot;-\&quot;. Reserved slugs (admin, root, ...) are refused. |  [optional] |
|**description** | **String** |  |  [optional] |
|**permissions** | **List&lt;String&gt;** | Optional permission slugs (needs roles.assign-permissions). |  [optional] |



