# AdminWebhooksGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Webhook**](Webhook.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_get_response import AdminWebhooksGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksGetResponse from a JSON string
admin_webhooks_get_response_instance = AdminWebhooksGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksGetResponse.to_json())

# convert the object into a dict
admin_webhooks_get_response_dict = admin_webhooks_get_response_instance.to_dict()
# create an instance of AdminWebhooksGetResponse from a dict
admin_webhooks_get_response_from_dict = AdminWebhooksGetResponse.from_dict(admin_webhooks_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


