

# ExpandRelationResponseTree

Userset tree node. Leaves carry subjects; union/intersection nodes carry children of the same shape.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) |  |  [optional] |
|**_object** | **String** |  |  [optional] |
|**relation** | **String** |  |  [optional] |
|**children** | **List&lt;Object&gt;** | Nested nodes (same shape); empty for leaves. |  [optional] |
|**subjects** | **List&lt;String&gt;** | Direct subjects; usersets are listed as-is. |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| UNION | &quot;union&quot; |
| INTERSECTION | &quot;intersection&quot; |
| LEAF | &quot;leaf&quot; |



