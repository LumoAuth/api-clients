# AdminSocialProvidersCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **String** | The provider key, for example google, microsoft, github or apple. | 
**client_id** | Option<**String**> |  | [optional]
**client_secret** | Option<**String**> |  | [optional]
**display_name** | Option<**String**> |  | [optional]
**enabled** | Option<**bool**> |  | [optional]
**enable_for_o_auth_apps** | Option<**bool**> |  | [optional]
**requested_scopes** | Option<**Vec<String>**> |  | [optional]
**claim_mapping** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**provider_config** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**default_roles** | Option<**Vec<String>**> | Role slugs; roles that open the portal are refused. | [optional]
**brand_color** | Option<**String**> |  | [optional]
**icon_url** | Option<**String**> |  | [optional]
**authorization_url** | Option<**String**> |  | [optional]
**token_url** | Option<**String**> |  | [optional]
**user_info_url** | Option<**String**> |  | [optional]
**hosted_domain** | Option<**String**> | Google: Workspace domain. | [optional]
**tenant_id** | Option<**String**> | Microsoft: Entra tenant. | [optional]
**issuer_url** | Option<**String**> |  | [optional]
**team_id** | Option<**String**> | Apple. | [optional]
**key_id** | Option<**String**> | Apple. | [optional]
**private_key** | Option<**String**> | Apple: the .p8 key. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


