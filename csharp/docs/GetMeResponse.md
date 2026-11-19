# LumoAuth.ApiClient.Model.GetMeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubjectType** | **string** |  | [optional] 
**Id** | **string** |  | [optional] 
**Email** | **string** |  | [optional] 
**Name** | **string** |  | [optional] 
**MfaEnabled** | **bool?** |  | [optional] 
**Roles** | **List&lt;string&gt;** |  | [optional] 
**Capabilities** | **List&lt;string&gt;** |  | [optional] 
**Scopes** | **List&lt;string&gt;** | Agents only: the OAuth scope values that the agent may request for this organization&#39;s API, as RFC 7591 defines a client&#39;s registered scope. They are its capabilities, each a scope token (RFC 6749 section 3.3). | [optional] 
**Scope** | **List&lt;string&gt;** | Agents only: the scope of the presented token. | [optional] 
**ScopeNarrowed** | **bool?** | Agents only: true when the token scope leaves out one of the agent&#39;s capabilities. | [optional] 
**Tenant** | [**GroupRef**](GroupRef.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

