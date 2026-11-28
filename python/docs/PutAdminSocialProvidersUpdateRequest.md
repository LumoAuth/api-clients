# PutAdminSocialProvidersUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **str** |  | [optional] 
**client_secret** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**enabled** | **bool** |  | [optional] 
**enable_for_o_auth_apps** | **bool** |  | [optional] 
**requested_scopes** | **List[str]** |  | [optional] 
**claim_mapping** | **Dict[str, object]** |  | [optional] 
**provider_config** | **Dict[str, object]** |  | [optional] 
**default_roles** | **List[str]** |  | [optional] 
**brand_color** | **str** |  | [optional] 
**icon_url** | **str** |  | [optional] 
**authorization_url** | **str** |  | [optional] 
**token_url** | **str** |  | [optional] 
**user_info_url** | **str** |  | [optional] 
**hosted_domain** | **str** |  | [optional] 
**tenant_id** | **str** |  | [optional] 
**issuer_url** | **str** |  | [optional] 
**team_id** | **str** |  | [optional] 
**key_id** | **str** |  | [optional] 
**private_key** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_social_providers_update_request import PutAdminSocialProvidersUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSocialProvidersUpdateRequest from a JSON string
put_admin_social_providers_update_request_instance = PutAdminSocialProvidersUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminSocialProvidersUpdateRequest.to_json())

# convert the object into a dict
put_admin_social_providers_update_request_dict = put_admin_social_providers_update_request_instance.to_dict()
# create an instance of PutAdminSocialProvidersUpdateRequest from a dict
put_admin_social_providers_update_request_from_dict = PutAdminSocialProvidersUpdateRequest.from_dict(put_admin_social_providers_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


