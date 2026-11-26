# AdminPoppyGetResponseDataDocumentsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **str** |  | [optional] 
**poppy_json** | **Dict[str, object]** | The generated poppy.json of the domain. | [optional] 
**protected_resource_metadata** | **Dict[str, object]** | The generated RFC 9728 document of the domain. | [optional] 
**hosted** | [**AdminPoppyGetResponseDataDocumentsItemHosted**](AdminPoppyGetResponseDataDocumentsItemHosted.md) |  | [optional] 
**serve_at** | [**AdminPoppyGetResponseDataDocumentsItemServeAt**](AdminPoppyGetResponseDataDocumentsItemServeAt.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_get_response_data_documents_item import AdminPoppyGetResponseDataDocumentsItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyGetResponseDataDocumentsItem from a JSON string
admin_poppy_get_response_data_documents_item_instance = AdminPoppyGetResponseDataDocumentsItem.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyGetResponseDataDocumentsItem.to_json())

# convert the object into a dict
admin_poppy_get_response_data_documents_item_dict = admin_poppy_get_response_data_documents_item_instance.to_dict()
# create an instance of AdminPoppyGetResponseDataDocumentsItem from a dict
admin_poppy_get_response_data_documents_item_from_dict = AdminPoppyGetResponseDataDocumentsItem.from_dict(admin_poppy_get_response_data_documents_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


