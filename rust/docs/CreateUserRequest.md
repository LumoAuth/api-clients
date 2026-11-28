# CreateUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**password** | Option<**String**> | Optional; must meet the organization's password policy. | [optional]
**username** | Option<**String**> |  | [optional]
**name** | Option<**String**> |  | [optional]
**given_name** | Option<**String**> |  | [optional]
**family_name** | Option<**String**> |  | [optional]
**phone_number** | Option<**String**> |  | [optional]
**email_verified** | Option<**bool**> |  | [optional][default to false]
**is_active** | Option<**bool**> |  | [optional][default to true]
**metadata** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**roles** | Option<**Vec<String>**> | Role slugs or ids of this organization. | [optional]
**groups** | Option<**Vec<String>**> | Group slugs or ids of this organization. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


