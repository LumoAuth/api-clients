# User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**email** | **String** |  | 
**username** | Option<**String**> |  | [optional]
**name** | Option<**String**> |  | [optional]
**given_name** | Option<**String**> |  | [optional]
**family_name** | Option<**String**> |  | [optional]
**picture** | Option<**String**> |  | [optional]
**email_verified** | **bool** |  | 
**phone_number** | Option<**String**> |  | [optional]
**phone_number_verified** | Option<**bool**> |  | [optional]
**is_active** | **bool** |  | 
**blocked** | **bool** |  | 
**mfa_enabled** | **bool** |  | 
**is_admin** | **bool** |  | 
**created_at** | **String** |  | 
**last_login_at** | Option<**String**> |  | [optional]
**login_count** | **i32** |  | 
**roles** | Option<[**Vec<models::RoleRef>**](RoleRef.md)> | Detailed (single-user) responses only | [optional]
**groups** | Option<[**Vec<models::GroupRef>**](GroupRef.md)> | Detailed responses only | [optional]
**locale** | Option<**String**> | Detailed responses only | [optional]
**zoneinfo** | Option<**String**> | Detailed responses only | [optional]
**updated_at** | Option<**String**> | Detailed responses only | [optional]
**blocked_at** | Option<**String**> | Detailed responses only | [optional]
**is_jit_provisioned** | Option<**bool**> | Detailed responses only | [optional]
**jit_provisioned_by** | Option<**String**> | Detailed responses only | [optional]
**social_provider** | Option<**String**> | Detailed responses only | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


