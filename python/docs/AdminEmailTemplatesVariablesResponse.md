# AdminEmailTemplatesVariablesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**variables** | **Dict[str, str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_email_templates_variables_response import AdminEmailTemplatesVariablesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminEmailTemplatesVariablesResponse from a JSON string
admin_email_templates_variables_response_instance = AdminEmailTemplatesVariablesResponse.from_json(json)
# print the JSON string representation of the object
print(AdminEmailTemplatesVariablesResponse.to_json())

# convert the object into a dict
admin_email_templates_variables_response_dict = admin_email_templates_variables_response_instance.to_dict()
# create an instance of AdminEmailTemplatesVariablesResponse from a dict
admin_email_templates_variables_response_from_dict = AdminEmailTemplatesVariablesResponse.from_dict(admin_email_templates_variables_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


