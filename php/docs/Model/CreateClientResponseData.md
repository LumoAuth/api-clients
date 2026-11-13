# # CreateClientResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**clientId** | **string** |  |
**name** | **string** |  |
**isConfidential** | **bool** |  |
**isPublic** | **bool** |  |
**isActive** | **bool** |  |
**requiresPkce** | **bool** |  |
**createdAt** | **\DateTime** |  |
**redirectUris** | **string[]** | Detailed responses only | [optional]
**scopes** | **string[]** | Detailed responses only | [optional]
**grantTypes** | **string[]** | Detailed responses only | [optional]
**cibaEnabled** | **bool** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional]
**secret** | **string** | Plaintext client secret — returned only once, never retrievable again. Absent for a public client | [optional]
**note** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
