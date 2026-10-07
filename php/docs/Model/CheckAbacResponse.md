# # CheckAbacResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **bool** |  | [optional]
**reason** | **string** |  | [optional]
**matchedPolicies** | [**\LumoAuth\ApiClient\Model\CheckAbacResponseMatchedPoliciesItem[]**](CheckAbacResponseMatchedPoliciesItem.md) | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional]
**userId** | **string** |  | [optional]
**resourceType** | **string** |  | [optional]
**action** | **string** |  | [optional]
**resourceId** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
