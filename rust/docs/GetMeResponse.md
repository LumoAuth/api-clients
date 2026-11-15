# GetMeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject_type** | Option<**String**> |  | [optional]
**id** | Option<**String**> |  | [optional]
**email** | Option<**String**> |  | [optional]
**name** | Option<**String**> |  | [optional]
**mfa_enabled** | Option<**bool**> |  | [optional]
**roles** | Option<**Vec<String>**> |  | [optional]
**capabilities** | Option<**Vec<String>**> |  | [optional]
**scope** | Option<**Vec<String>**> | Agents only: the scope of the presented token. | [optional]
**scope_narrowed** | Option<**bool**> | Agents only: true when the token scope leaves out one of the agent's capabilities. | [optional]
**tenant** | Option<[**models::GroupRef**](GroupRef.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


