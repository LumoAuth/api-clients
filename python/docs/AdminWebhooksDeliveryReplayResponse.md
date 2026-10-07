# AdminWebhooksDeliveryReplayResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**WebhookDelivery**](WebhookDelivery.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_delivery_replay_response import AdminWebhooksDeliveryReplayResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksDeliveryReplayResponse from a JSON string
admin_webhooks_delivery_replay_response_instance = AdminWebhooksDeliveryReplayResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksDeliveryReplayResponse.to_json())

# convert the object into a dict
admin_webhooks_delivery_replay_response_dict = admin_webhooks_delivery_replay_response_instance.to_dict()
# create an instance of AdminWebhooksDeliveryReplayResponse from a dict
admin_webhooks_delivery_replay_response_from_dict = AdminWebhooksDeliveryReplayResponse.from_dict(admin_webhooks_delivery_replay_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


