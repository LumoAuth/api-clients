# PutAdminWebhooksUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Webhook**](Webhook.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_webhooks_update_response import PutAdminWebhooksUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminWebhooksUpdateResponse from a JSON string
put_admin_webhooks_update_response_instance = PutAdminWebhooksUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminWebhooksUpdateResponse.to_json())

# convert the object into a dict
put_admin_webhooks_update_response_dict = put_admin_webhooks_update_response_instance.to_dict()
# create an instance of PutAdminWebhooksUpdateResponse from a dict
put_admin_webhooks_update_response_from_dict = PutAdminWebhooksUpdateResponse.from_dict(put_admin_webhooks_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


