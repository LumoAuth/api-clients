# CheckAbacResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | Option<**bool**> |  | [optional]
**reason** | Option<**String**> |  | [optional]
**matched_policies** | Option<[**Vec<models::CheckAbacResponseMatchedPoliciesItem>**](CheckAbacResponseMatchedPoliciesItem.md)> | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional]
**user_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**resource_type** | Option<**String**> |  | [optional]
**action** | Option<**String**> |  | [optional]
**resource_id** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


