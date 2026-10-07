# AdminWebhooksWebhooksDisableResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**webhook** | [**Webhook**](Webhook.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_webhooks_disable_response import AdminWebhooksWebhooksDisableResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksWebhooksDisableResponse from a JSON string
admin_webhooks_webhooks_disable_response_instance = AdminWebhooksWebhooksDisableResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksWebhooksDisableResponse.to_json())

# convert the object into a dict
admin_webhooks_webhooks_disable_response_dict = admin_webhooks_webhooks_disable_response_instance.to_dict()
# create an instance of AdminWebhooksWebhooksDisableResponse from a dict
admin_webhooks_webhooks_disable_response_from_dict = AdminWebhooksWebhooksDisableResponse.from_dict(admin_webhooks_webhooks_disable_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


