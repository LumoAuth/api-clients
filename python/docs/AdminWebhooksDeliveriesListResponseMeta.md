# AdminWebhooksDeliveriesListResponseMeta


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** | Number of rows returned | [optional] 
**dead_lettered_count** | **int** | Dead-lettered deliveries for this webhook (unfiltered) | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_deliveries_list_response_meta import AdminWebhooksDeliveriesListResponseMeta

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksDeliveriesListResponseMeta from a JSON string
admin_webhooks_deliveries_list_response_meta_instance = AdminWebhooksDeliveriesListResponseMeta.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksDeliveriesListResponseMeta.to_json())

# convert the object into a dict
admin_webhooks_deliveries_list_response_meta_dict = admin_webhooks_deliveries_list_response_meta_instance.to_dict()
# create an instance of AdminWebhooksDeliveriesListResponseMeta from a dict
admin_webhooks_deliveries_list_response_meta_from_dict = AdminWebhooksDeliveriesListResponseMeta.from_dict(admin_webhooks_deliveries_list_response_meta_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


