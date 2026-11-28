# PutAdminWebhooksUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional] 
**events** | **List[str]** |  | [optional] 
**is_active** | **bool** | Also accepted as active or enabled. | [optional] 
**type** | **str** |  | [optional] 
**configuration** | **Dict[str, object]** |  | [optional] 
**rotate_secret** | **bool** | Issue a new signing secret (returned once). | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_webhooks_update_request import PutAdminWebhooksUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminWebhooksUpdateRequest from a JSON string
put_admin_webhooks_update_request_instance = PutAdminWebhooksUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminWebhooksUpdateRequest.to_json())

# convert the object into a dict
put_admin_webhooks_update_request_dict = put_admin_webhooks_update_request_instance.to_dict()
# create an instance of PutAdminWebhooksUpdateRequest from a dict
put_admin_webhooks_update_request_from_dict = PutAdminWebhooksUpdateRequest.from_dict(put_admin_webhooks_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


