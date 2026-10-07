

# BrandingSettings

Login page / branding settings (entity defaults merged with the stored values).

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**enabled** | **Boolean** |  |  [optional] |
|**logoUrl** | **String** |  |  [optional] |
|**faviconUrl** | **String** |  |  [optional] |
|**backgroundColor** | **String** |  |  [optional] |
|**primaryColor** | **String** |  |  [optional] |
|**buttonText** | **String** |  |  [optional] |
|**showTenantName** | **Boolean** |  |  [optional] |
|**customCss** | **String** |  |  [optional] |
|**customHtml** | **String** |  |  [optional] |
|**theme** | [**ThemeEnum**](#ThemeEnum) |  |  [optional] |
|**selfRegistrationEnabled** | **Boolean** |  |  [optional] |
|**layout** | [**LayoutEnum**](#LayoutEnum) |  |  [optional] |
|**backgroundType** | [**BackgroundTypeEnum**](#BackgroundTypeEnum) |  |  [optional] |
|**backgroundImageUrl** | **String** |  |  [optional] |
|**backgroundGradient** | **String** |  |  [optional] |
|**backgroundOverlayOpacity** | **Integer** |  |  [optional] |
|**showBackgroundPattern** | **Boolean** |  |  [optional] |
|**backgroundPatternStyle** | [**BackgroundPatternStyleEnum**](#BackgroundPatternStyleEnum) |  |  [optional] |
|**welcomeTitle** | **String** |  |  [optional] |
|**welcomeSubtitle** | **String** |  |  [optional] |
|**showTenantInSubtitle** | **Boolean** |  |  [optional] |
|**splitPanelTitle** | **String** |  |  [optional] |
|**splitPanelSubtitle** | **String** |  |  [optional] |
|**splitPanelImageUrl** | **String** |  |  [optional] |
|**termsUrl** | **String** |  |  [optional] |
|**privacyUrl** | **String** |  |  [optional] |
|**footerText** | **String** |  |  [optional] |
|**showPoweredBy** | **Boolean** |  |  [optional] |
|**inputStyle** | [**InputStyleEnum**](#InputStyleEnum) |  |  [optional] |
|**buttonStyle** | [**ButtonStyleEnum**](#ButtonStyleEnum) |  |  [optional] |
|**formCardStyle** | [**FormCardStyleEnum**](#FormCardStyleEnum) |  |  [optional] |
|**applyToRegistration** | **Boolean** |  |  [optional] |
|**applyToConsent** | **Boolean** |  |  [optional] |
|**magicLinkEnabled** | **Boolean** |  |  [optional] |
|**magicLinkOnly** | **Boolean** |  |  [optional] |
|**magicLinkExpiry** | **Integer** | Magic-link lifetime in seconds. |  [optional] |



## Enum: ThemeEnum

| Name | Value |
|---- | -----|
| AUTO | &quot;auto&quot; |
| LIGHT | &quot;light&quot; |
| DARK | &quot;dark&quot; |



## Enum: LayoutEnum

| Name | Value |
|---- | -----|
| CENTERED | &quot;centered&quot; |
| SPLIT_LEFT | &quot;split-left&quot; |
| SPLIT_RIGHT | &quot;split-right&quot; |



## Enum: BackgroundTypeEnum

| Name | Value |
|---- | -----|
| SOLID | &quot;solid&quot; |
| GRADIENT | &quot;gradient&quot; |
| IMAGE | &quot;image&quot; |
| PATTERN | &quot;pattern&quot; |



## Enum: BackgroundPatternStyleEnum

| Name | Value |
|---- | -----|
| HEXAGONAL | &quot;hexagonal&quot; |
| DIAMOND | &quot;diamond&quot; |
| CROSSHATCH | &quot;crosshatch&quot; |
| ISOMETRIC | &quot;isometric&quot; |
| CONCENTRIC | &quot;concentric&quot; |



## Enum: InputStyleEnum

| Name | Value |
|---- | -----|
| ROUNDED | &quot;rounded&quot; |
| SQUARE | &quot;square&quot; |
| PILL | &quot;pill&quot; |



## Enum: ButtonStyleEnum

| Name | Value |
|---- | -----|
| FILLED | &quot;filled&quot; |
| OUTLINE | &quot;outline&quot; |
| PILL | &quot;pill&quot; |



## Enum: FormCardStyleEnum

| Name | Value |
|---- | -----|
| CARD | &quot;card&quot; |
| FLAT | &quot;flat&quot; |
| GLASS | &quot;glass&quot; |



