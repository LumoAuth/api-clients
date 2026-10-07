# AdminWebhooksDeliveryShowResponseData1AttemptsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**at** | **datetime** |  | [optional] 
**status_code** | **int** |  | [optional] 
**error** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_delivery_show_response_data1_attempts_item import AdminWebhooksDeliveryShowResponseData1AttemptsItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksDeliveryShowResponseData1AttemptsItem from a JSON string
admin_webhooks_delivery_show_response_data1_attempts_item_instance = AdminWebhooksDeliveryShowResponseData1AttemptsItem.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksDeliveryShowResponseData1AttemptsItem.to_json())

# convert the object into a dict
admin_webhooks_delivery_show_response_data1_attempts_item_dict = admin_webhooks_delivery_show_response_data1_attempts_item_instance.to_dict()
# create an instance of AdminWebhooksDeliveryShowResponseData1AttemptsItem from a dict
admin_webhooks_delivery_show_response_data1_attempts_item_from_dict = AdminWebhooksDeliveryShowResponseData1AttemptsItem.from_dict(admin_webhooks_delivery_show_response_data1_attempts_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


