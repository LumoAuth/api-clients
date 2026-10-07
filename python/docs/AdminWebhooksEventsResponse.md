# AdminWebhooksEventsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_events_response import AdminWebhooksEventsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksEventsResponse from a JSON string
admin_webhooks_events_response_instance = AdminWebhooksEventsResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksEventsResponse.to_json())

# convert the object into a dict
admin_webhooks_events_response_dict = admin_webhooks_events_response_instance.to_dict()
# create an instance of AdminWebhooksEventsResponse from a dict
admin_webhooks_events_response_from_dict = AdminWebhooksEventsResponse.from_dict(admin_webhooks_events_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


