# GetIssuerMetadataResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aauth_version** | **str** |  | [optional] 
**issuer** | **str** |  | [optional] 
**jwks_uri** | **str** |  | [optional] 
**agent_token_endpoint** | **str** |  | [optional] 
**agent_auth_endpoint** | **str** |  | [optional] 
**agent_signing_algs_supported** | **List[str]** |  | [optional] 
**token_signing_algs_supported** | **List[str]** |  | [optional] 
**request_types_supported** | **List[str]** |  | [optional] 
**scopes_supported** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_issuer_metadata_response import GetIssuerMetadataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetIssuerMetadataResponse from a JSON string
get_issuer_metadata_response_instance = GetIssuerMetadataResponse.from_json(json)
# print the JSON string representation of the object
print(GetIssuerMetadataResponse.to_json())

# convert the object into a dict
get_issuer_metadata_response_dict = get_issuer_metadata_response_instance.to_dict()
# create an instance of GetIssuerMetadataResponse from a dict
get_issuer_metadata_response_from_dict = GetIssuerMetadataResponse.from_dict(get_issuer_metadata_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


