# AdminWebhooksDeliveryReplayResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_id** | **str** | Id of the new delivery | [optional] 
**replay_of** | **str** | Id of the delivery that was replayed | [optional] 
**webhook_id** | **int** |  | [optional] 
**event_name** | **str** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_delivery_replay_response_data import AdminWebhooksDeliveryReplayResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksDeliveryReplayResponseData from a JSON string
admin_webhooks_delivery_replay_response_data_instance = AdminWebhooksDeliveryReplayResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksDeliveryReplayResponseData.to_json())

# convert the object into a dict
admin_webhooks_delivery_replay_response_data_dict = admin_webhooks_delivery_replay_response_data_instance.to_dict()
# create an instance of AdminWebhooksDeliveryReplayResponseData from a dict
admin_webhooks_delivery_replay_response_data_from_dict = AdminWebhooksDeliveryReplayResponseData.from_dict(admin_webhooks_delivery_replay_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


