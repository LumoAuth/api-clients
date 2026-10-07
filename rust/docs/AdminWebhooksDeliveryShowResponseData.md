# AdminWebhooksDeliveryShowResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**String**> |  | [optional]
**webhook_id** | Option<**i32**> |  | [optional]
**delivery_id** | Option<**String**> |  | [optional]
**event_name** | Option<**String**> |  | [optional]
**status** | Option<**String**> |  | [optional]
**attempt_count** | Option<**i32**> |  | [optional]
**last_status_code** | Option<**i32**> |  | [optional]
**last_response_body** | Option<**String**> |  | [optional]
**last_error** | Option<**String**> |  | [optional]
**next_attempt_at** | Option<**String**> |  | [optional]
**succeeded_at** | Option<**String**> |  | [optional]
**dead_lettered_at** | Option<**String**> |  | [optional]
**created_at** | Option<**String**> |  | [optional]
**updated_at** | Option<**String**> |  | [optional]
**payload** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Event payload as sent to the receiver | [optional]
**attempts** | Option<[**Vec<models::AdminWebhooksDeliveryShowResponseData1AttemptsItem>**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


