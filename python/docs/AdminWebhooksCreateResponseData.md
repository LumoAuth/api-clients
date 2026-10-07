# AdminWebhooksCreateResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**url** | **str** |  | 
**events** | **List[str]** |  | 
**type** | **str** |  | 
**is_active** | **bool** |  | 
**failure_count** | **int** |  | 
**created_at** | **datetime** |  | 
**last_triggered_at** | **datetime** |  | [optional] 
**configuration** | **Dict[str, object]** | Detailed responses only | [optional] 
**secret** | **str** | HMAC signing secret, returned only at creation | [optional] 
**note** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_create_response_data import AdminWebhooksCreateResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksCreateResponseData from a JSON string
admin_webhooks_create_response_data_instance = AdminWebhooksCreateResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksCreateResponseData.to_json())

# convert the object into a dict
admin_webhooks_create_response_data_dict = admin_webhooks_create_response_data_instance.to_dict()
# create an instance of AdminWebhooksCreateResponseData from a dict
admin_webhooks_create_response_data_from_dict = AdminWebhooksCreateResponseData.from_dict(admin_webhooks_create_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


