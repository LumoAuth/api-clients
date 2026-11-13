# ScimSettingsOutbound

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | Option<**bool**> |  | [optional]
**endpoint_url** | Option<**String**> |  | [optional]
**bearer_token** | Option<[**models::RedactedSecret**](RedactedSecret.md)> |  | [optional]
**auth_type** | Option<**String**> |  | [optional]
**basic_username** | Option<**String**> |  | [optional]
**basic_password** | Option<[**models::RedactedSecret**](RedactedSecret.md)> |  | [optional]
**oauth2_client_id** | Option<**String**> |  | [optional]
**oauth2_client_secret** | Option<[**models::RedactedSecret**](RedactedSecret.md)> |  | [optional]
**oauth2_token_url** | Option<**String**> |  | [optional]
**oauth2_scope** | Option<**String**> |  | [optional]
**tls_certificate** | Option<**String**> | Optional PEM CA certificate used for TLS verification. Send null or an empty string to remove it. Changing it requires re-entering the stored secrets. | [optional]
**verify_tls** | Option<**bool**> | Always true. The endpoint certificate is always verified; false is rejected with 400. | [optional]
**push_user_creates** | Option<**bool**> |  | [optional]
**push_user_updates** | Option<**bool**> |  | [optional]
**push_user_deletes** | Option<**bool**> |  | [optional]
**push_group_changes** | Option<**bool**> |  | [optional]
**sync_on_login** | Option<**bool**> |  | [optional]
**batch_sync_enabled** | Option<**bool**> |  | [optional]
**batch_sync_interval** | Option<**String**> |  | [optional]
**last_sync_at** | Option<**String**> |  | [optional]
**last_sync_status** | Option<**String**> |  | [optional]
**last_sync_error** | Option<**String**> |  | [optional]
**last_batch_sync_at** | Option<**String**> |  | [optional]
**last_batch_sync_status** | Option<**String**> |  | [optional]
**last_batch_sync_error** | Option<**String**> |  | [optional]
**last_batch_sync_counts** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Free-form counters of the last batch reconcile. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


