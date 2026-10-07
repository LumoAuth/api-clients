# AdminWebhooksRotateSecretResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminWebhooksRotateSecretResponseData**](AdminWebhooksRotateSecretResponseData.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_rotate_secret_response import AdminWebhooksRotateSecretResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksRotateSecretResponse from a JSON string
admin_webhooks_rotate_secret_response_instance = AdminWebhooksRotateSecretResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksRotateSecretResponse.to_json())

# convert the object into a dict
admin_webhooks_rotate_secret_response_dict = admin_webhooks_rotate_secret_response_instance.to_dict()
# create an instance of AdminWebhooksRotateSecretResponse from a dict
admin_webhooks_rotate_secret_response_from_dict = AdminWebhooksRotateSecretResponse.from_dict(admin_webhooks_rotate_secret_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


