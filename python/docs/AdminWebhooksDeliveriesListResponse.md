# AdminWebhooksDeliveriesListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[WebhookDelivery]**](WebhookDelivery.md) |  | [optional] 
**meta** | [**AdminWebhooksDeliveriesListResponseMeta**](AdminWebhooksDeliveriesListResponseMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_deliveries_list_response import AdminWebhooksDeliveriesListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksDeliveriesListResponse from a JSON string
admin_webhooks_deliveries_list_response_instance = AdminWebhooksDeliveriesListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksDeliveriesListResponse.to_json())

# convert the object into a dict
admin_webhooks_deliveries_list_response_dict = admin_webhooks_deliveries_list_response_instance.to_dict()
# create an instance of AdminWebhooksDeliveriesListResponse from a dict
admin_webhooks_deliveries_list_response_from_dict = AdminWebhooksDeliveriesListResponse.from_dict(admin_webhooks_deliveries_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


