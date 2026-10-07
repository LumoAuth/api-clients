

# GetJwksResponseKeysItem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kty** | [**KtyEnum**](#KtyEnum) |  |  |
|**kid** | **String** |  |  |
|**use** | **String** |  |  [optional] |
|**alg** | **String** |  |  [optional] |
|**n** | **String** | RSA modulus, base64url (RSA keys). |  [optional] |
|**e** | **String** | RSA exponent, base64url (RSA keys). |  [optional] |
|**crv** | **String** | Curve name (EC keys). |  [optional] |
|**x** | **String** | EC x coordinate, base64url (EC keys). |  [optional] |
|**y** | **String** | EC y coordinate, base64url (EC keys). |  [optional] |



## Enum: KtyEnum

| Name | Value |
|---- | -----|
| RSA | &quot;RSA&quot; |
| EC | &quot;EC&quot; |



