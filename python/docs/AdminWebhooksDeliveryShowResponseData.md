# AdminWebhooksDeliveryShowResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**webhook_id** | **int** |  | [optional] 
**delivery_id** | **str** |  | [optional] 
**event_name** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**attempt_count** | **int** |  | [optional] 
**last_status_code** | **int** |  | [optional] 
**last_response_body** | **str** |  | [optional] 
**last_error** | **str** |  | [optional] 
**next_attempt_at** | **datetime** |  | [optional] 
**succeeded_at** | **datetime** |  | [optional] 
**dead_lettered_at** | **datetime** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**updated_at** | **datetime** |  | [optional] 
**payload** | **Dict[str, object]** | Event payload as sent to the receiver | [optional] 
**attempts** | [**List[AdminWebhooksDeliveryShowResponseData1AttemptsItem]**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_delivery_show_response_data import AdminWebhooksDeliveryShowResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksDeliveryShowResponseData from a JSON string
admin_webhooks_delivery_show_response_data_instance = AdminWebhooksDeliveryShowResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksDeliveryShowResponseData.to_json())

# convert the object into a dict
admin_webhooks_delivery_show_response_data_dict = admin_webhooks_delivery_show_response_data_instance.to_dict()
# create an instance of AdminWebhooksDeliveryShowResponseData from a dict
admin_webhooks_delivery_show_response_data_from_dict = AdminWebhooksDeliveryShowResponseData.from_dict(admin_webhooks_delivery_show_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


