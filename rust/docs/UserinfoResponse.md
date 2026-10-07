# UserinfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **String** | User id; agent_<agent_id> for agents; client_<client_id> for clients. | 
**identity_type** | Option<**String**> | Only for non-user principals. | [optional]
**tenant** | Option<**String**> | Organization slug. | [optional]
**name** | Option<**String**> | profile scope (users); agent / client display name. | [optional]
**given_name** | Option<**String**> | profile scope. | [optional]
**family_name** | Option<**String**> | profile scope. | [optional]
**middle_name** | Option<**String**> | profile scope. | [optional]
**nickname** | Option<**String**> | profile scope. | [optional]
**preferred_username** | Option<**String**> | profile scope. | [optional]
**profile** | Option<**String**> | profile scope. | [optional]
**picture** | Option<**String**> | profile scope. | [optional]
**website** | Option<**String**> | profile scope. | [optional]
**gender** | Option<**String**> | profile scope. | [optional]
**birthdate** | Option<[**String**](string.md)> | profile scope (YYYY-MM-DD). | [optional]
**zoneinfo** | Option<**String**> | profile scope. | [optional]
**locale** | Option<**String**> | profile scope. | [optional]
**updated_at** | Option<**i32**> | profile scope — Unix seconds. | [optional]
**email** | Option<**String**> | email scope. | [optional]
**email_verified** | Option<**bool**> | email scope. | [optional]
**phone_number** | Option<**String**> | phone scope. | [optional]
**phone_number_verified** | Option<**bool**> | phone scope. | [optional]
**address** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | address scope — OIDC address claim object. | [optional]
**roles** | Option<**Vec<String>**> | Only when the token's client explicitly enabled the roles claim. | [optional]
**agent_id** | Option<**String**> | Agents only. | [optional]
**workload_identity** | Option<**String**> | Agents only. | [optional]
**capabilities** | Option<**Vec<String>**> | Agents only. | [optional]
**client_id** | Option<**String**> | Clients only. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


