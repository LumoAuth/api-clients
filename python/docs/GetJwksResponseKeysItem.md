# GetJwksResponseKeysItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kty** | **str** |  | 
**kid** | **str** |  | 
**use** | **str** |  | [optional] 
**alg** | **str** |  | [optional] 
**n** | **str** | RSA modulus, base64url (RSA keys). | [optional] 
**e** | **str** | RSA exponent, base64url (RSA keys). | [optional] 
**crv** | **str** | Curve name (EC keys). | [optional] 
**x** | **str** | EC x coordinate, base64url (EC keys). | [optional] 
**y** | **str** | EC y coordinate, base64url (EC keys). | [optional] 

## Example

```python
from lumoauth_api_client.models.get_jwks_response_keys_item import GetJwksResponseKeysItem

# TODO update the JSON string below
json = "{}"
# create an instance of GetJwksResponseKeysItem from a JSON string
get_jwks_response_keys_item_instance = GetJwksResponseKeysItem.from_json(json)
# print the JSON string representation of the object
print(GetJwksResponseKeysItem.to_json())

# convert the object into a dict
get_jwks_response_keys_item_dict = get_jwks_response_keys_item_instance.to_dict()
# create an instance of GetJwksResponseKeysItem from a dict
get_jwks_response_keys_item_from_dict = GetJwksResponseKeysItem.from_dict(get_jwks_response_keys_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


