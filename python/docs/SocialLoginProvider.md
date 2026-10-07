# SocialLoginProvider


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**provider** | **str** |  | 
**display_name** | **str** |  | 
**enabled** | **bool** |  | 
**brand_color** | **str** |  | [optional] 
**icon_url** | **str** |  | [optional] 
**jit_provisioning_enabled** | **bool** |  | 
**client_id** | **str** | Detailed responses only | [optional] 
**callback_url** | **str** | Detailed responses only | [optional] 
**requested_scopes** | **List[str]** | Detailed responses only | [optional] 
**custom_claims** | **Dict[str, object]** | Detailed responses only | [optional] 
**claim_mapping** | **Dict[str, object]** | Detailed responses only | [optional] 
**provider_config** | **Dict[str, object]** | Detailed responses only; secrets redacted | [optional] 
**authorization_url** | **str** | Detailed responses only | [optional] 
**token_url** | **str** | Detailed responses only | [optional] 
**user_info_url** | **str** | Detailed responses only | [optional] 
**default_roles** | [**List[RoleRef]**](RoleRef.md) | Detailed responses only | [optional] 

## Example

```python
from lumoauth_api_client.models.social_login_provider import SocialLoginProvider

# TODO update the JSON string below
json = "{}"
# create an instance of SocialLoginProvider from a JSON string
social_login_provider_instance = SocialLoginProvider.from_json(json)
# print the JSON string representation of the object
print(SocialLoginProvider.to_json())

# convert the object into a dict
social_login_provider_dict = social_login_provider_instance.to_dict()
# create an instance of SocialLoginProvider from a dict
social_login_provider_from_dict = SocialLoginProvider.from_dict(social_login_provider_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


