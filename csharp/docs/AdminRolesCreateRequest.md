# LumoAuth.ApiClient.Model.AdminRolesCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Slug** | **string** | Optional; derived from the name when left out. 1 to 100 lowercase letters, digits and underscores, in parts joined by \&quot;.\&quot; or \&quot;-\&quot;. Reserved slugs (admin, root, ...) are refused. | [optional] 
**Description** | **string** |  | [optional] 
**Permissions** | **List&lt;string&gt;** | Optional permission slugs (needs roles.assign-permissions). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

