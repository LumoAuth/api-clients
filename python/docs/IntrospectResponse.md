# IntrospectResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  | 
**token_type** | **str** | Bearer for access tokens; refresh_token for refresh tokens. | [optional] 
**scope** | **str** | Space-separated scopes. | [optional] 
**client_id** | **str** |  | [optional] 
**sub** | **str** | User id, or client_… / agent_… for non-user subjects. | [optional] 
**username** | **str** | The user&#39;s email (user-bound tokens only). | [optional] 
**exp** | **int** | Expiry, Unix seconds. | [optional] 
**iat** | **int** | Issued-at, Unix seconds. | [optional] 
**nbf** | **int** | Not-before, Unix seconds (JWT tokens only). | [optional] 
**iss** | **str** | Issuer identifier of this organization. | [optional] 
**aud** | [**IntrospectResponseAud**](IntrospectResponseAud.md) |  | [optional] 
**jti** | **str** | JWT id (JWT tokens only). | [optional] 

## Example

```python
from lumoauth_api_client.models.introspect_response import IntrospectResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IntrospectResponse from a JSON string
introspect_response_instance = IntrospectResponse.from_json(json)
# print the JSON string representation of the object
print(IntrospectResponse.to_json())

# convert the object into a dict
introspect_response_dict = introspect_response_instance.to_dict()
# create an instance of IntrospectResponse from a dict
introspect_response_from_dict = IntrospectResponse.from_dict(introspect_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


