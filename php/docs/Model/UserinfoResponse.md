# # UserinfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **string** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. |
**identityType** | **string** | Only for non-user principals. | [optional]
**tenant** | **string** | Organization slug. | [optional]
**name** | **string** | profile scope (users); agent / client display name. | [optional]
**givenName** | **string** | profile scope. | [optional]
**familyName** | **string** | profile scope. | [optional]
**middleName** | **string** | profile scope. | [optional]
**nickname** | **string** | profile scope. | [optional]
**preferredUsername** | **string** | profile scope. | [optional]
**profile** | **string** | profile scope. | [optional]
**picture** | **string** | profile scope. | [optional]
**website** | **string** | profile scope. | [optional]
**gender** | **string** | profile scope. | [optional]
**birthdate** | **\DateTime** | profile scope (YYYY-MM-DD). | [optional]
**zoneinfo** | **string** | profile scope. | [optional]
**locale** | **string** | profile scope. | [optional]
**updatedAt** | **int** | profile scope — Unix seconds. | [optional]
**email** | **string** | email scope. | [optional]
**emailVerified** | **bool** | email scope. | [optional]
**phoneNumber** | **string** | phone scope. | [optional]
**phoneNumberVerified** | **bool** | phone scope. | [optional]
**address** | **array<string,mixed>** | address scope — OIDC address claim object. | [optional]
**roles** | **string[]** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional]
**agentId** | **string** | Agents only. | [optional]
**workloadIdentity** | **string** | Agents only. | [optional]
**capabilities** | **string[]** | Agents only. | [optional]
**clientId** | **string** | Clients only. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
