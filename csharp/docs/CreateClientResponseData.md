# LumoAuth.ApiClient.Model.CreateClientResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int** |  | 
**ClientId** | **string** |  | 
**Name** | **string** |  | 
**IsConfidential** | **bool** |  | 
**IsPublic** | **bool** |  | 
**IsActive** | **bool** |  | 
**RequiresPkce** | **bool** |  | 
**CreatedAt** | **DateTime** |  | 
**RedirectUris** | **List&lt;string&gt;** | Detailed responses only | [optional] 
**Scopes** | **List&lt;string&gt;** | Detailed responses only | [optional] 
**GrantTypes** | **List&lt;string&gt;** | Detailed responses only | [optional] 
**Secret** | **string** | Plaintext client secret — returned only once, never retrievable again | [optional] 
**Note** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

