

# CheckAbacResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**allowed** | **Boolean** |  |  [optional] |
|**reason** | **String** |  |  [optional] |
|**matchedPolicies** | [**List&lt;CheckAbacResponseMatchedPoliciesItem&gt;**](CheckAbacResponseMatchedPoliciesItem.md) | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. |  [optional] |
|**userId** | **UUID** |  |  [optional] |
|**resourceType** | **String** |  |  [optional] |
|**action** | **String** |  |  [optional] |
|**resourceId** | **String** |  |  [optional] |



