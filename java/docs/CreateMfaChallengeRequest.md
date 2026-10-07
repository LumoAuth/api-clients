

# CreateMfaChallengeRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**purpose** | [**PurposeEnum**](#PurposeEnum) |  |  [optional] |
|**authenticatorId** | **String** |  |  [optional] |
|**minTier** | **Integer** | Require a factor at least this strong (1 &#x3D; passkey only) |  [optional] |
|**actionDescription** | **String** |  |  [optional] |



## Enum: PurposeEnum

| Name | Value |
|---- | -----|
| STEP_UP | &quot;step_up&quot; |
| LOGIN | &quot;login&quot; |



