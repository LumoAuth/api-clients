# AdminRolesCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**slug** | Option<**String**> | Optional; derived from the name when left out. 1 to 100 lowercase letters, digits and underscores, in parts joined by \".\" or \"-\". Reserved slugs (admin, root, ...) are refused. | [optional]
**description** | Option<**String**> |  | [optional]
**permissions** | Option<**Vec<String>**> | Optional permission slugs (needs roles.assign-permissions). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


