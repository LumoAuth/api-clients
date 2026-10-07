# AdminWebhooksCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminWebhooksCreateResponseData**](AdminWebhooksCreateResponseData.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_create_response import AdminWebhooksCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksCreateResponse from a JSON string
admin_webhooks_create_response_instance = AdminWebhooksCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksCreateResponse.to_json())

# convert the object into a dict
admin_webhooks_create_response_dict = admin_webhooks_create_response_instance.to_dict()
# create an instance of AdminWebhooksCreateResponse from a dict
admin_webhooks_create_response_from_dict = AdminWebhooksCreateResponse.from_dict(admin_webhooks_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


