# TokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | 
**token_type** | **str** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). | 
**expires_in** | **int** |  | 
**scope** | **str** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional] 
**refresh_token** | **str** | Only when the client is registered for the refresh_token grant. | [optional] 
**id_token** | **str** | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional] 
**issued_token_type** | **str** | Token exchange only (RFC 8693). | [optional] 
**authorization_details** | **List[Dict[str, object]]** | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional] 
**jit_request_id** | **str** | Agent-initiated CIBA only. | [optional] 
**task_id** | **str** | Agent-initiated CIBA only. | [optional] 

## Example

```python
from lumoauth_api_client.models.token_response import TokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TokenResponse from a JSON string
token_response_instance = TokenResponse.from_json(json)
# print the JSON string representation of the object
print(TokenResponse.to_json())

# convert the object into a dict
token_response_dict = token_response_instance.to_dict()
# create an instance of TokenResponse from a dict
token_response_from_dict = TokenResponse.from_dict(token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


