# WebhookSecretIssued


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secret** | **str** | HMAC signing secret, returned only at creation | [optional] 
**note** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.webhook_secret_issued import WebhookSecretIssued

# TODO update the JSON string below
json = "{}"
# create an instance of WebhookSecretIssued from a JSON string
webhook_secret_issued_instance = WebhookSecretIssued.from_json(json)
# print the JSON string representation of the object
print(WebhookSecretIssued.to_json())

# convert the object into a dict
webhook_secret_issued_dict = webhook_secret_issued_instance.to_dict()
# create an instance of WebhookSecretIssued from a dict
webhook_secret_issued_from_dict = WebhookSecretIssued.from_dict(webhook_secret_issued_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


