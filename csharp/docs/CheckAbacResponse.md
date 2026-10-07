# LumoAuth.ApiClient.Model.CheckAbacResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowed** | **bool** |  | [optional] 
**Reason** | **string** |  | [optional] 
**MatchedPolicies** | [**List&lt;CheckAbacResponseMatchedPoliciesItem&gt;**](CheckAbacResponseMatchedPoliciesItem.md) | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional] 
**UserId** | **Guid** |  | [optional] 
**ResourceType** | **string** |  | [optional] 
**Action** | **string** |  | [optional] 
**ResourceId** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

