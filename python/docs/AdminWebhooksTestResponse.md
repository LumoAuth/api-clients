# AdminWebhooksTestResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**status_code** | **int** | HTTP status returned by the receiver | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_webhooks_test_response import AdminWebhooksTestResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminWebhooksTestResponse from a JSON string
admin_webhooks_test_response_instance = AdminWebhooksTestResponse.from_json(json)
# print the JSON string representation of the object
print(AdminWebhooksTestResponse.to_json())

# convert the object into a dict
admin_webhooks_test_response_dict = admin_webhooks_test_response_instance.to_dict()
# create an instance of AdminWebhooksTestResponse from a dict
admin_webhooks_test_response_from_dict = AdminWebhooksTestResponse.from_dict(admin_webhooks_test_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


