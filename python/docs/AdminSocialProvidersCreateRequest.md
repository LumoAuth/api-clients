# AdminSocialProvidersCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **str** | The provider key, for example google, microsoft, github or apple. | 
**client_id** | **str** |  | [optional] 
**client_secret** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**enabled** | **bool** |  | [optional] 
**enable_for_o_auth_apps** | **bool** |  | [optional] 
**requested_scopes** | **List[str]** |  | [optional] 
**claim_mapping** | **Dict[str, object]** |  | [optional] 
**provider_config** | **Dict[str, object]** |  | [optional] 
**default_roles** | **List[str]** | Role slugs; roles that open the portal are refused. | [optional] 
**brand_color** | **str** |  | [optional] 
**icon_url** | **str** |  | [optional] 
**authorization_url** | **str** |  | [optional] 
**token_url** | **str** |  | [optional] 
**user_info_url** | **str** |  | [optional] 
**hosted_domain** | **str** | Google: Workspace domain. | [optional] 
**tenant_id** | **str** | Microsoft: Entra tenant. | [optional] 
**issuer_url** | **str** |  | [optional] 
**team_id** | **str** | Apple. | [optional] 
**key_id** | **str** | Apple. | [optional] 
**private_key** | **str** | Apple: the .p8 key. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_social_providers_create_request import AdminSocialProvidersCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSocialProvidersCreateRequest from a JSON string
admin_social_providers_create_request_instance = AdminSocialProvidersCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminSocialProvidersCreateRequest.to_json())

# convert the object into a dict
admin_social_providers_create_request_dict = admin_social_providers_create_request_instance.to_dict()
# create an instance of AdminSocialProvidersCreateRequest from a dict
admin_social_providers_create_request_from_dict = AdminSocialProvidersCreateRequest.from_dict(admin_social_providers_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


