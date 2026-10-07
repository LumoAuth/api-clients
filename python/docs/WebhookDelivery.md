# WebhookDelivery


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**webhook_id** | **int** |  | [optional] 
**delivery_id** | **str** |  | [optional] 
**event_name** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**attempt_count** | **int** |  | [optional] 
**last_status_code** | **int** |  | [optional] 
**last_response_body** | **str** |  | [optional] 
**last_error** | **str** |  | [optional] 
**next_attempt_at** | **datetime** |  | [optional] 
**succeeded_at** | **datetime** |  | [optional] 
**dead_lettered_at** | **datetime** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**updated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.webhook_delivery import WebhookDelivery

# TODO update the JSON string below
json = "{}"
# create an instance of WebhookDelivery from a JSON string
webhook_delivery_instance = WebhookDelivery.from_json(json)
# print the JSON string representation of the object
print(WebhookDelivery.to_json())

# convert the object into a dict
webhook_delivery_dict = webhook_delivery_instance.to_dict()
# create an instance of WebhookDelivery from a dict
webhook_delivery_from_dict = WebhookDelivery.from_dict(webhook_delivery_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


