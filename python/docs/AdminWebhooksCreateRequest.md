# AdminWebhooksCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** | Public https URL. | 
**events** | **List[str]** | Event names from the catalogue. | 
**is_active** | **bool** | Also accepted as active or enabled. | [optional] [default to True]
**type** | **str** | custom (default), slack, discord or teams. | [optional] 
**configuration** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_create_request import AdminWebhooksCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksCreateRequest from a JSON string
admin_webhooks_create_request_instance = AdminWebhooksCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksCreateRequest.to_json())

# convert the object into a dict
admin_webhooks_create_request_dict = admin_webhooks_create_request_instance.to_dict()
# create an instance of AdminWebhooksCreateRequest from a dict
admin_webhooks_create_request_from_dict = AdminWebhooksCreateRequest.from_dict(admin_webhooks_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


