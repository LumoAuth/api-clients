# LumoAuth.ApiClient.Model.CimdCheckResultEffective
The client LumoAuth derives from the document after organization policy.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientName** | **string** |  | [optional] 
**ApplicationType** | **string** |  | [optional] 
**TokenEndpointAuthMethod** | **string** |  | [optional] 
**PublicClient** | **bool** |  | [optional] 
**PkceRequired** | **bool** |  | [optional] 
**RedirectUris** | **List&lt;string&gt;** |  | [optional] 
**DroppedRedirectUris** | **List&lt;string&gt;** | Loopback URIs removed by the organization&#39;s localhost policy. | [optional] 
**GrantTypes** | **List&lt;string&gt;** |  | [optional] 
**Scopes** | **List&lt;string&gt;** |  | [optional] 
**DroppedScopes** | **List&lt;string&gt;** | Scopes the document asked for that are neither identity scopes nor on the organization&#39;s cimd_allowed_scopes list. | [optional] 
**LogoUri** | **string** |  | [optional] 
**ClientUri** | **string** |  | [optional] 
**HasLoopbackRedirect** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

