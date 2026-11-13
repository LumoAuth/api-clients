

# CreateClientResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  |
|**clientId** | **String** |  |  |
|**name** | **String** |  |  |
|**isConfidential** | **Boolean** |  |  |
|**isPublic** | **Boolean** |  |  |
|**isActive** | **Boolean** |  |  |
|**requiresPkce** | **Boolean** |  |  |
|**createdAt** | **OffsetDateTime** |  |  |
|**redirectUris** | **List&lt;String&gt;** | Detailed responses only |  [optional] |
|**scopes** | **List&lt;String&gt;** | Detailed responses only |  [optional] |
|**grantTypes** | **List&lt;String&gt;** | Detailed responses only |  [optional] |
|**cibaEnabled** | **Boolean** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). |  [optional] |
|**secret** | **String** | Plaintext client secret — returned only once, never retrievable again. Absent for a public client |  [optional] |
|**note** | **String** |  |  [optional] |



