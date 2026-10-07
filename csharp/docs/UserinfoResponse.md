# LumoAuth.ApiClient.Model.UserinfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sub** | **string** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. | 
**IdentityType** | **string** | Only for non-user principals. | [optional] 
**Tenant** | **string** | Organization slug. | [optional] 
**Name** | **string** | profile scope (users); agent / client display name. | [optional] 
**GivenName** | **string** | profile scope. | [optional] 
**FamilyName** | **string** | profile scope. | [optional] 
**MiddleName** | **string** | profile scope. | [optional] 
**Nickname** | **string** | profile scope. | [optional] 
**PreferredUsername** | **string** | profile scope. | [optional] 
**Profile** | **string** | profile scope. | [optional] 
**Picture** | **string** | profile scope. | [optional] 
**Website** | **string** | profile scope. | [optional] 
**Gender** | **string** | profile scope. | [optional] 
**Birthdate** | **DateOnly** | profile scope (YYYY-MM-DD). | [optional] 
**Zoneinfo** | **string** | profile scope. | [optional] 
**Locale** | **string** | profile scope. | [optional] 
**UpdatedAt** | **int** | profile scope — Unix seconds. | [optional] 
**Email** | **string** | email scope. | [optional] 
**EmailVerified** | **bool** | email scope. | [optional] 
**PhoneNumber** | **string** | phone scope. | [optional] 
**PhoneNumberVerified** | **bool** | phone scope. | [optional] 
**Address** | **Dictionary&lt;string, Object&gt;** | address scope — OIDC address claim object. | [optional] 
**Roles** | **List&lt;string&gt;** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] 
**AgentId** | **string** | Agents only. | [optional] 
**WorkloadIdentity** | **string** | Agents only. | [optional] 
**Capabilities** | **List&lt;string&gt;** | Agents only. | [optional] 
**ClientId** | **string** | Clients only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

