# AdminWebhooksTunnelStartResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhook_id** | **int** |  | [optional] 
**session_id** | **str** |  | [optional] 
**tunnel_url** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_tunnel_start_response_data import AdminWebhooksTunnelStartResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksTunnelStartResponseData from a JSON string
admin_webhooks_tunnel_start_response_data_instance = AdminWebhooksTunnelStartResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksTunnelStartResponseData.to_json())

# convert the object into a dict
admin_webhooks_tunnel_start_response_data_dict = admin_webhooks_tunnel_start_response_data_instance.to_dict()
# create an instance of AdminWebhooksTunnelStartResponseData from a dict
admin_webhooks_tunnel_start_response_data_from_dict = AdminWebhooksTunnelStartResponseData.from_dict(admin_webhooks_tunnel_start_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


