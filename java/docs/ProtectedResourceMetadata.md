

# ProtectedResourceMetadata


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**resource** | **URI** | The MCP server&#39;s resource identifier. |  |
|**authorizationServers** | **List&lt;URI&gt;** | This organization&#39;s authorization server metadata URL. |  |
|**bearerMethodsSupported** | **List&lt;String&gt;** |  |  |
|**scopesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**dpopBoundAccessTokensRequired** | **Boolean** | Present (true) only when the server accepts DPoP-bound tokens exclusively. |  [optional] |
|**dpopSigningAlgValuesSupported** | **List&lt;String&gt;** | Only with dpop_bound_access_tokens_required. |  [optional] |



