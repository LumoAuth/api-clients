# PutAdminSettingsSecurityUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dpop_require_nonce** | **bool** | Require a server nonce in DPoP proofs. | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_security_update_request import PutAdminSettingsSecurityUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsSecurityUpdateRequest from a JSON string
put_admin_settings_security_update_request_instance = PutAdminSettingsSecurityUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsSecurityUpdateRequest.to_json())

# convert the object into a dict
put_admin_settings_security_update_request_dict = put_admin_settings_security_update_request_instance.to_dict()
# create an instance of PutAdminSettingsSecurityUpdateRequest from a dict
put_admin_settings_security_update_request_from_dict = PutAdminSettingsSecurityUpdateRequest.from_dict(put_admin_settings_security_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


