# CreateClientResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**client_id** | **str** |  | 
**name** | **str** |  | 
**is_confidential** | **bool** |  | 
**is_public** | **bool** |  | 
**is_active** | **bool** |  | 
**requires_pkce** | **bool** |  | 
**created_at** | **datetime** |  | 
**redirect_uris** | **List[str]** | Detailed responses only | [optional] 
**scopes** | **List[str]** | Detailed responses only | [optional] 
**grant_types** | **List[str]** | Detailed responses only | [optional] 
**ciba_enabled** | **bool** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional] 
**allowed_origins** | **List[str]** | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional] 
**post_logout_redirect_uris** | **List[str]** | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional] 
**frontchannel_logout_uri** | **str** | Detailed responses only. OIDC Front-Channel Logout address. | [optional] 
**backchannel_logout_uri** | **str** | Detailed responses only. OIDC Back-Channel Logout address. | [optional] 
**access_token_format** | **str** | Detailed responses only. Format of the access tokens that the client receives. | [optional] 
**token_endpoint_auth_method** | **str** | Detailed responses only. | [optional] 
**jwks_uri** | **str** | Detailed responses only. https address of the client&#39;s public keys. | [optional] 
**jwks** | **Dict[str, object]** | Detailed responses only. The client&#39;s public keys, inline. | [optional] 
**fapi_mode** | **str** | Detailed responses only. FAPI 2.0 security profile. | [optional] 
**require_par** | **bool** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional] 
**dpop_bound_access_tokens** | **bool** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional] 
**attestation_based_auth_enabled** | **bool** | Detailed responses only. | [optional] 
**attester_issuer** | **str** | Detailed responses only. | [optional] 
**attester_jwks_uri** | **str** | Detailed responses only. | [optional] 
**token_exchange_enabled** | **bool** | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional] 
**secret** | **str** | Plaintext client secret — returned only once, never retrievable again. Absent for a public client | [optional] 
**note** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.create_client_response_data import CreateClientResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of CreateClientResponseData from a JSON string
create_client_response_data_instance = CreateClientResponseData.from_json(json)
# print the JSON string representation of the object
print(CreateClientResponseData.to_json())

# convert the object into a dict
create_client_response_data_dict = create_client_response_data_instance.to_dict()
# create an instance of CreateClientResponseData from a dict
create_client_response_data_from_dict = CreateClientResponseData.from_dict(create_client_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


