# PoppyVerifyResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  | 
**client_id** | Option<**String**> | The personal agent (the URL of its metadata document). | [optional]
**client_name** | Option<**String**> |  | [optional]
**user_id** | Option<**String**> | The User ID — the personal agent's stable pseudonym for its user at your organization. | [optional]
**agent_id** | Option<**String**> |  | [optional]
**session** | Option<[**models::PoppyVerifyResultSession**](PoppyVerifyResult_session.md)> |  | [optional]
**signed_in** | Option<**bool**> |  | [optional]
**account** | Option<[**models::PoppyVerifyResultAccount**](PoppyVerifyResult_account.md)> |  | [optional]
**version** | Option<**String**> |  | [optional]
**extensions** | Option<**std::collections::HashMap<String, String>**> | The extensions that the request declares, name to version. | [optional]
**error** | Option<**String**> |  | [optional]
**error_description** | Option<**String**> |  | [optional]
**scope** | Option<**String**> | The scopes that a refusal asks for. | [optional]
**response** | Option<[**models::PoppyVerifyResultResponse**](PoppyVerifyResult_response.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


