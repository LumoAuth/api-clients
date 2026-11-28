# OAuthClient


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

## Example

```python
from lumoauth_api_client.models.o_auth_client import OAuthClient

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthClient from a JSON string
o_auth_client_instance = OAuthClient.from_json(json)
# print the JSON string representation of the object
print(OAuthClient.to_json())

# convert the object into a dict
o_auth_client_dict = o_auth_client_instance.to_dict()
# create an instance of OAuthClient from a dict
o_auth_client_from_dict = OAuthClient.from_dict(o_auth_client_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


