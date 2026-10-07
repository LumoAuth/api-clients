# AdminWebhooksTunnelStartResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminWebhooksTunnelStartResponseData**](AdminWebhooksTunnelStartResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_tunnel_start_response import AdminWebhooksTunnelStartResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksTunnelStartResponse from a JSON string
admin_webhooks_tunnel_start_response_instance = AdminWebhooksTunnelStartResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksTunnelStartResponse.to_json())

# convert the object into a dict
admin_webhooks_tunnel_start_response_dict = admin_webhooks_tunnel_start_response_instance.to_dict()
# create an instance of AdminWebhooksTunnelStartResponse from a dict
admin_webhooks_tunnel_start_response_from_dict = AdminWebhooksTunnelStartResponse.from_dict(admin_webhooks_tunnel_start_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


