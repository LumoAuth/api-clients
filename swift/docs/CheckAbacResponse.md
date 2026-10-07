# CheckAbacResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **Bool** |  | [optional] 
**reason** | **String** |  | [optional] 
**matchedPolicies** | [CheckAbacResponseMatchedPoliciesItem] | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional] 
**userId** | **UUID** |  | [optional] 
**resourceType** | **String** |  | [optional] 
**action** | **String** |  | [optional] 
**resourceId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


