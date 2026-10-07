# AdminWebhooksListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[Webhook]**](Webhook.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_list_response import AdminWebhooksListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksListResponse from a JSON string
admin_webhooks_list_response_instance = AdminWebhooksListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksListResponse.to_json())

# convert the object into a dict
admin_webhooks_list_response_dict = admin_webhooks_list_response_instance.to_dict()
# create an instance of AdminWebhooksListResponse from a dict
admin_webhooks_list_response_from_dict = AdminWebhooksListResponse.from_dict(admin_webhooks_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


