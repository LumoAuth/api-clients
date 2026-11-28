# OAuthClientWrite

Fields of POST /admin/clients (name is required there) and PUT|PATCH /admin/clients/{clientId} (only the fields that are sent change). The browser and sign-out fields follow the rules of the portal forms; null clears one.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**redirect_uris** | **List[str]** | https, an http loopback address, or a custom native scheme. | [optional] 
**scopes** | **List[str]** |  | [optional] 
**grant_types** | **List[str]** | At least one grant type. | [optional] 
**is_confidential** | **bool** | false makes a public client (no secret, PKCE). | [optional] 
**requires_pkce** | **bool** |  | [optional] 
**ciba_enabled** | **bool** | Needs a confidential client and the ciba plan feature. | [optional] 
**allowed_origins** | **List[str]** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional] 
**post_logout_redirect_uris** | **List[str]** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional] 
**frontchannel_logout_uri** | **str** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional] 
**backchannel_logout_uri** | **str** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional] 
**access_token_format** | **str** | Format of the access tokens that the client receives. | [optional] 
**token_endpoint_auth_method** | **str** | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional] 
**jwks_uri** | **str** | https address of the client&#39;s public keys. | [optional] 
**jwks** | **Dict[str, object]** | The client&#39;s public keys, inline (a JWKS with public keys only). | [optional] 
**fapi_mode** | **str** | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, requires PAR and DPoP and turns requirePar and dpopBoundAccessTokens on. Setting it to disabled turns both off again unless the same request sets them. | [optional] 
**require_par** | **bool** | Require pushed authorization requests (RFC 9126). | [optional] 
**dpop_bound_access_tokens** | **bool** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional] 
**attestation_based_auth_enabled** | **bool** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional] 
**attester_issuer** | **str** |  | [optional] 
**attester_jwks_uri** | **str** | https address of the attester&#39;s public keys. | [optional] 
**token_exchange_enabled** | **bool** | Allow token exchange (RFC 8693) for this client. | [optional] 

## Example

```python
from lumoauth_api_client.models.o_auth_client_write import OAuthClientWrite

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthClientWrite from a JSON string
o_auth_client_write_instance = OAuthClientWrite.from_json(json)
# print the JSON string representation of the object
print(OAuthClientWrite.to_json())

# convert the object into a dict
o_auth_client_write_dict = o_auth_client_write_instance.to_dict()
# create an instance of OAuthClientWrite from a dict
o_auth_client_write_from_dict = OAuthClientWrite.from_dict(o_auth_client_write_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


