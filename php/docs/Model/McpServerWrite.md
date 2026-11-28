# # McpServerWrite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional]
**resourceUri** | **string** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional]
**description** | **string** |  | [optional]
**endpointUrl** | **string** | Address that the server is reached at, when it differs from resource_uri. | [optional]
**transport** | **string** |  | [optional] [default to 'http_streamable']
**authMode** | **string** |  | [optional] [default to 'oauth']
**status** | **string** | Update only; a new server is active. | [optional]
**scopesSupported** | [**\LumoAuth\ApiClient\Model\McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  | [optional]
**basicScopes** | [**\LumoAuth\ApiClient\Model\McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  | [optional]
**scopeDescriptions** | **array<string,string>** | Text per scope of scopes_supported, for the portal and the consent page. | [optional]
**allowedClientIds** | **string[]** | Clients of this organization that may get tokens for the server; every client when empty. | [optional]
**toolAuthorizerClientIds** | **string[]** | The server&#39;s own clients that may call the per-tool authorization endpoint. | [optional]
**tokenLifetime** | **int** |  | [optional] [default to 3600]
**requirePkce** | **bool** |  | [optional] [default to true]
**requireResourceParam** | **bool** |  | [optional] [default to true]
**requireDpop** | **bool** |  | [optional] [default to false]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
