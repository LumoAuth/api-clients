# WebhookDeliveryDetail


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payload** | **Dict[str, object]** | Event payload as sent to the receiver | [optional] 
**attempts** | [**List[AdminWebhooksDeliveryShowResponseData1AttemptsItem]**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.webhook_delivery_detail import WebhookDeliveryDetail

# TODO update the JSON string below
json = "{}"
# create an instance of WebhookDeliveryDetail from a JSON string
webhook_delivery_detail_instance = WebhookDeliveryDetail.from_json(json)
# print the JSON string representation of the object
print(WebhookDeliveryDetail.to_json())

# convert the object into a dict
webhook_delivery_detail_dict = webhook_delivery_detail_instance.to_dict()
# create an instance of WebhookDeliveryDetail from a dict
webhook_delivery_detail_from_dict = WebhookDeliveryDetail.from_dict(webhook_delivery_detail_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


