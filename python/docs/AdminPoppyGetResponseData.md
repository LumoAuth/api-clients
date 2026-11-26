# AdminPoppyGetResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**settings** | **Dict[str, object]** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional] 
**active** | **bool** | The protocol is switched on, in the plan, and the organization is active. | [optional] 
**in_plan** | **bool** |  | [optional] 
**identifier** | **str** | The Company identifier: the issuer that Session JWTs name as aud. | [optional] 
**issuer_choices** | [**List[AdminPoppyGetResponseDataIssuerChoicesItem]**](AdminPoppyGetResponseDataIssuerChoicesItem.md) |  | [optional] 
**offered_scopes** | **List[str]** |  | [optional] 
**offered_resources** | **List[str]** |  | [optional] 
**tasks_endpoint** | **str** |  | [optional] 
**feedback_endpoint** | **str** |  | [optional] 
**documents** | [**List[AdminPoppyGetResponseDataDocumentsItem]**](AdminPoppyGetResponseDataDocumentsItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_get_response_data import AdminPoppyGetResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyGetResponseData from a JSON string
admin_poppy_get_response_data_instance = AdminPoppyGetResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyGetResponseData.to_json())

# convert the object into a dict
admin_poppy_get_response_data_dict = admin_poppy_get_response_data_instance.to_dict()
# create an instance of AdminPoppyGetResponseData from a dict
admin_poppy_get_response_data_from_dict = AdminPoppyGetResponseData.from_dict(admin_poppy_get_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


