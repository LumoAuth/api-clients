# AdminWebhooksRotateSecretResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**secret** | **str** |  | [optional] 
**note** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_rotate_secret_response_data import AdminWebhooksRotateSecretResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksRotateSecretResponseData from a JSON string
admin_webhooks_rotate_secret_response_data_instance = AdminWebhooksRotateSecretResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksRotateSecretResponseData.to_json())

# convert the object into a dict
admin_webhooks_rotate_secret_response_data_dict = admin_webhooks_rotate_secret_response_data_instance.to_dict()
# create an instance of AdminWebhooksRotateSecretResponseData from a dict
admin_webhooks_rotate_secret_response_data_from_dict = AdminWebhooksRotateSecretResponseData.from_dict(admin_webhooks_rotate_secret_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


