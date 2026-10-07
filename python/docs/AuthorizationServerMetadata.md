# AuthorizationServerMetadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **str** |  | 
**authorization_endpoint** | **str** |  | 
**token_endpoint** | **str** |  | 
**response_types_supported** | **List[str]** |  | 
**jwks_uri** | **str** |  | 
**registration_endpoint** | **str** |  | [optional] 
**scopes_supported** | **List[str]** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**response_modes_supported** | **List[str]** |  | [optional] 
**authorization_signing_alg_values_supported** | **List[str]** | JARM signing algorithms. | [optional] 
**grant_types_supported** | **List[str]** |  | [optional] 
**token_endpoint_auth_methods_supported** | **List[str]** |  | [optional] 
**token_endpoint_auth_signing_alg_values_supported** | **List[str]** |  | [optional] 
**service_documentation** | **str** |  | [optional] 
**ui_locales_supported** | **List[str]** |  | [optional] 
**revocation_endpoint** | **str** |  | [optional] 
**revocation_endpoint_auth_methods_supported** | **List[str]** |  | [optional] 
**introspection_endpoint** | **str** |  | [optional] 
**introspection_endpoint_auth_methods_supported** | **List[str]** |  | [optional] 
**code_challenge_methods_supported** | **List[str]** |  | [optional] 
**authorization_response_iss_parameter_supported** | **bool** |  | [optional] 
**request_parameter_supported** | **bool** |  | [optional] 
**request_uri_parameter_supported** | **bool** |  | [optional] 
**require_request_uri_registration** | **bool** |  | [optional] 
**require_signed_request_object** | **bool** |  | [optional] 
**request_object_signing_alg_values_supported** | **List[str]** |  | [optional] 
**device_authorization_endpoint** | **str** |  | [optional] 
**pushed_authorization_request_endpoint** | **str** |  | [optional] 
**require_pushed_authorization_requests** | **bool** |  | [optional] 
**dpop_signing_alg_values_supported** | **List[str]** |  | [optional] 
**tls_client_certificate_bound_access_tokens** | **bool** |  | [optional] 
**backchannel_authentication_endpoint** | **str** |  | [optional] 
**backchannel_token_delivery_modes_supported** | **List[str]** |  | [optional] 
**backchannel_user_code_parameter_supported** | **bool** |  | [optional] 
**entity_profiles_supported** | **List[str]** |  | [optional] 
**client_id_metadata_document_supported** | **bool** | Only when CIMD is enabled for the organization. | [optional] 
**authorization_grant_profiles_supported** | **List[str]** | Only when the organization accepts ID-JAGs. | [optional] 
**op_policy_uri** | **str** | Only when configured. | [optional] 
**op_tos_uri** | **str** | Only when configured. | [optional] 

## Example

```python
from lumoauth_api_client.models.authorization_server_metadata import AuthorizationServerMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizationServerMetadata from a JSON string
authorization_server_metadata_instance = AuthorizationServerMetadata.from_json(json)
# print the JSON string representation of the object
print(AuthorizationServerMetadata.to_json())

# convert the object into a dict
authorization_server_metadata_dict = authorization_server_metadata_instance.to_dict()
# create an instance of AuthorizationServerMetadata from a dict
authorization_server_metadata_from_dict = AuthorizationServerMetadata.from_dict(authorization_server_metadata_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


