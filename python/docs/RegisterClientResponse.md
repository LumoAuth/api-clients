# RegisterClientResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **str** |  | 
**client_secret** | **str** | Plaintext secret, shown once (confidential clients only). | [optional] 
**client_secret_expires_at** | **int** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional] 
**client_id_issued_at** | **int** | Unix seconds. | 
**registration_access_token** | **str** | Bearer token for the client configuration endpoint, shown once. | [optional] 
**registration_client_uri** | **str** |  | [optional] 
**client_name** | **str** |  | 
**redirect_uris** | **List[str]** |  | 
**response_types** | **List[str]** |  | 
**grant_types** | **List[str]** |  | 
**application_type** | **str** |  | 
**token_endpoint_auth_method** | **str** |  | 
**contacts** | **List[str]** |  | [optional] 
**client_uri** | **str** |  | [optional] 
**logo_uri** | **str** |  | [optional] 
**policy_uri** | **str** |  | [optional] 
**tos_uri** | **str** |  | [optional] 
**sector_identifier_uri** | **str** |  | [optional] 
**subject_type** | **str** | Only when not \&quot;public\&quot;. | [optional] 
**jwks_uri** | **str** |  | [optional] 
**jwks** | **Dict[str, object]** |  | [optional] 
**post_logout_redirect_uris** | **List[str]** |  | [optional] 
**initiate_login_uri** | **str** |  | [optional] 
**request_uris** | **List[str]** |  | [optional] 
**scope** | **str** | Space-separated registered scopes. | [optional] 
**id_token_signed_response_alg** | **str** | Only when not RS256. | [optional] 
**userinfo_signed_response_alg** | **str** |  | [optional] 
**request_object_signing_alg** | **str** |  | [optional] 
**token_endpoint_auth_signing_alg** | **str** |  | [optional] 
**default_max_age** | **int** |  | [optional] 
**require_auth_time** | **bool** | Only when true. | [optional] 
**default_acr_values** | **List[str]** |  | [optional] 
**frontchannel_logout_uri** | **str** |  | [optional] 
**frontchannel_logout_session_required** | **bool** | Only when true. | [optional] 
**backchannel_logout_uri** | **str** |  | [optional] 
**backchannel_logout_session_required** | **bool** | Only when true. | [optional] 
**audience_uris** | **List[str]** | RFC 8707 resource indicators the client may request. | [optional] 

## Example

```python
from lumoauth_api_client.models.register_client_response import RegisterClientResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RegisterClientResponse from a JSON string
register_client_response_instance = RegisterClientResponse.from_json(json)
# print the JSON string representation of the object
print(RegisterClientResponse.to_json())

# convert the object into a dict
register_client_response_dict = register_client_response_instance.to_dict()
# create an instance of RegisterClientResponse from a dict
register_client_response_from_dict = RegisterClientResponse.from_dict(register_client_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


