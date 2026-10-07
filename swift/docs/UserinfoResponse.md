# UserinfoResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **String** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. | 
**identityType** | **String** | Only for non-user principals. | [optional] 
**tenant** | **String** | Organization slug. | [optional] 
**name** | **String** | profile scope (users); agent / client display name. | [optional] 
**givenName** | **String** | profile scope. | [optional] 
**familyName** | **String** | profile scope. | [optional] 
**middleName** | **String** | profile scope. | [optional] 
**nickname** | **String** | profile scope. | [optional] 
**preferredUsername** | **String** | profile scope. | [optional] 
**profile** | **String** | profile scope. | [optional] 
**picture** | **String** | profile scope. | [optional] 
**website** | **String** | profile scope. | [optional] 
**gender** | **String** | profile scope. | [optional] 
**birthdate** | **Date** | profile scope (YYYY-MM-DD). | [optional] 
**zoneinfo** | **String** | profile scope. | [optional] 
**locale** | **String** | profile scope. | [optional] 
**updatedAt** | **Int** | profile scope — Unix seconds. | [optional] 
**email** | **String** | email scope. | [optional] 
**emailVerified** | **Bool** | email scope. | [optional] 
**phoneNumber** | **String** | phone scope. | [optional] 
**phoneNumberVerified** | **Bool** | phone scope. | [optional] 
**address** | **[String: AnyCodable]** | address scope — OIDC address claim object. | [optional] 
**roles** | **[String]** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] 
**agentId** | **String** | Agents only. | [optional] 
**workloadIdentity** | **String** | Agents only. | [optional] 
**capabilities** | **[String]** | Agents only. | [optional] 
**clientId** | **String** | Clients only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


