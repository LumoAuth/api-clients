# # AdminRolesCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**slug** | **string** | Optional; derived from the name when left out. 1 to 100 lowercase letters, digits and underscores, in parts joined by \&quot;.\&quot; or \&quot;-\&quot;. Reserved slugs (admin, root, ...) are refused. | [optional]
**description** | **string** |  | [optional]
**permissions** | **string[]** | Optional permission slugs (needs roles.assign-permissions). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
