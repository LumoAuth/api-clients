# LumoAuth.ApiClient.Model.AuthenticationSettingsPasswordPolicy
The password rules that apply. A write is merged with the stored object. A named template sets its own rules; rules sent without a template make the policy custom.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Template** | **string** |  | [optional] 
**MinLength** | **int** |  | [optional] 
**RequireSpecial** | **bool** |  | [optional] 
**RequireNumbers** | **bool** |  | [optional] 
**RequireUppercase** | **bool** |  | [optional] 
**RequireLowercase** | **bool** |  | [optional] 
**RejectBreachedPasswords** | **bool** |  | [optional] 
**BreachedPasswordMinCount** | **int** |  | [optional] 
**CheckBreachedOnLogin** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

