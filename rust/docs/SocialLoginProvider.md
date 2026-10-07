# SocialLoginProvider

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** |  | 
**provider** | **String** |  | 
**display_name** | **String** |  | 
**enabled** | **bool** |  | 
**brand_color** | Option<**String**> |  | [optional]
**icon_url** | Option<**String**> |  | [optional]
**jit_provisioning_enabled** | **bool** |  | 
**client_id** | Option<**String**> | Detailed responses only | [optional]
**callback_url** | Option<**String**> | Detailed responses only | [optional]
**requested_scopes** | Option<**Vec<String>**> | Detailed responses only | [optional]
**custom_claims** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only | [optional]
**claim_mapping** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only | [optional]
**provider_config** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only; secrets redacted | [optional]
**authorization_url** | Option<**String**> | Detailed responses only | [optional]
**token_url** | Option<**String**> | Detailed responses only | [optional]
**user_info_url** | Option<**String**> | Detailed responses only | [optional]
**default_roles** | Option<[**Vec<models::RoleRef>**](RoleRef.md)> | Detailed responses only | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


