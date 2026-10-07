# AdminWebhooksDeliveryShowResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminWebhooksDeliveryShowResponseData**](AdminWebhooksDeliveryShowResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_delivery_show_response import AdminWebhooksDeliveryShowResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksDeliveryShowResponse from a JSON string
admin_webhooks_delivery_show_response_instance = AdminWebhooksDeliveryShowResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksDeliveryShowResponse.to_json())

# convert the object into a dict
admin_webhooks_delivery_show_response_dict = admin_webhooks_delivery_show_response_instance.to_dict()
# create an instance of AdminWebhooksDeliveryShowResponse from a dict
admin_webhooks_delivery_show_response_from_dict = AdminWebhooksDeliveryShowResponse.from_dict(admin_webhooks_delivery_show_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


