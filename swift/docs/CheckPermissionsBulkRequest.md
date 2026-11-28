# CheckPermissionsBulkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | **[String]** |  | 
**context** | **[String: AnyCodable]** | Optional: resource_id and the slugs of defined environment attributes. | [optional] 
**subject** | **[String: AnyCodable]** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


