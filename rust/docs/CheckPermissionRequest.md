# CheckPermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission** | **String** |  | 
**context** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Optional: resource_id and the slugs of defined environment attributes. | [optional]
**subject** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Optional: the user or agent to ask about ({\"type\": \"user\"|\"agent\", \"id\": \"<id>\"}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


