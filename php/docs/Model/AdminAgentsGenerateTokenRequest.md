# # AdminAgentsGenerateTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expiresIn** | **int** | Token lifetime in seconds. Default 3600, at most 2592000 (30 days). | [optional]
**scopes** | **string[]** | Optional subset of the agent&#39;s capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
