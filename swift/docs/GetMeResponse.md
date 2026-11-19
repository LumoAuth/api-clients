# GetMeResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subjectType** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**mfaEnabled** | **Bool** |  | [optional] 
**roles** | **[String]** |  | [optional] 
**capabilities** | **[String]** |  | [optional] 
**scopes** | **[String]** | Agents only: the OAuth scope values that the agent may request for this organization&#39;s API, as RFC 7591 defines a client&#39;s registered scope. They are its capabilities, each a scope token (RFC 6749 section 3.3). | [optional] 
**scope** | **[String]** | Agents only: the scope of the presented token. | [optional] 
**scopeNarrowed** | **Bool** | Agents only: true when the token scope leaves out one of the agent&#39;s capabilities. | [optional] 
**tenant** | [**GroupRef**](GroupRef.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


