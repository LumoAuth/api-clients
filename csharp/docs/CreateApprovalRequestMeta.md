# LumoAuth.ApiClient.Model.CreateApprovalRequestMeta
Optional structured details shown on the approval card. Only the keys below are kept (others are dropped); every string is cleaned and shortened.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | [optional] 
**Host** | **string** |  | [optional] 
**Tool** | **string** |  | [optional] 
**Server** | **string** |  | [optional] 
**Capability** | **string** |  | [optional] 
**Risk** | **string** |  | [optional] 
**Why** | **string** |  | [optional] 
**Title** | **string** |  | [optional] 
**Args** | **List&lt;string&gt;** | Argument lines; at most 5 are kept, each cut to 240 characters. | [optional] 
**ArgumentsSha256** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

