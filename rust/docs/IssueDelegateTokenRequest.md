# IssueDelegateTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delegate_sub** | Option<**String**> | Subject identifier of the delegate the agent token is issued to. | [optional]
**delegate_public_key** | Option<[**serde_json::Value**](.md)> | The delegate public key (JWK) bound into the agent token cnf. | [optional]
**audience** | Option<[**serde_json::Value**](.md)> | Optional audience (string or array of strings). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


