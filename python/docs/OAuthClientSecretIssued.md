# OAuthClientSecretIssued


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secret** | **str** | Plaintext client secret — returned only once, never retrievable again | [optional] 
**note** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.o_auth_client_secret_issued import OAuthClientSecretIssued

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthClientSecretIssued from a JSON string
o_auth_client_secret_issued_instance = OAuthClientSecretIssued.from_json(json)
# print the JSON string representation of the object
print(OAuthClientSecretIssued.to_json())

# convert the object into a dict
o_auth_client_secret_issued_dict = o_auth_client_secret_issued_instance.to_dict()
# create an instance of OAuthClientSecretIssued from a dict
o_auth_client_secret_issued_from_dict = OAuthClientSecretIssued.from_dict(o_auth_client_secret_issued_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


