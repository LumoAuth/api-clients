# AdminWebhooksWebhooksEnableResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**webhook** | [**Webhook**](Webhook.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_webhooks_enable_response import AdminWebhooksWebhooksEnableResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksWebhooksEnableResponse from a JSON string
admin_webhooks_webhooks_enable_response_instance = AdminWebhooksWebhooksEnableResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksWebhooksEnableResponse.to_json())

# convert the object into a dict
admin_webhooks_webhooks_enable_response_dict = admin_webhooks_webhooks_enable_response_instance.to_dict()
# create an instance of AdminWebhooksWebhooksEnableResponse from a dict
admin_webhooks_webhooks_enable_response_from_dict = AdminWebhooksWebhooksEnableResponse.from_dict(admin_webhooks_webhooks_enable_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


