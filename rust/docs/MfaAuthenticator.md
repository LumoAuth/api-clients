# MfaAuthenticator

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**String**> |  | [optional]
**r#type** | Option<**String**> |  | [optional]
**display_name** | Option<**String**> |  | [optional]
**state** | Option<**String**> |  | [optional]
**is_default** | Option<**bool**> |  | [optional]
**tier** | Option<**i32**> | 1 strongest (passkey) … 4 basic (SMS/email); 5 = recovery only | [optional]
**tier_label** | Option<**String**> |  | [optional]
**amr** | Option<**Vec<String>**> |  | [optional]
**created_at** | Option<**String**> |  | [optional]
**activated_at** | Option<**String**> |  | [optional]
**last_used_at** | Option<**String**> |  | [optional]
**last_used_context** | Option<[**models::MfaAuthenticatorLastUsedContext**](MfaAuthenticator_last_used_context.md)> |  | [optional]
**metadata** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


