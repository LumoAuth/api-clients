# BrandingSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**LogoUrl** | Pointer to **NullableString** |  | [optional] 
**FaviconUrl** | Pointer to **NullableString** |  | [optional] 
**BackgroundColor** | Pointer to **string** |  | [optional] 
**PrimaryColor** | Pointer to **string** |  | [optional] 
**ButtonText** | Pointer to **string** |  | [optional] 
**ShowTenantName** | Pointer to **bool** |  | [optional] 
**CustomCss** | Pointer to **NullableString** |  | [optional] 
**CustomHtml** | Pointer to **NullableString** |  | [optional] 
**Theme** | Pointer to **string** |  | [optional] 
**SelfRegistrationEnabled** | Pointer to **bool** |  | [optional] 
**Layout** | Pointer to **string** |  | [optional] 
**BackgroundType** | Pointer to **string** |  | [optional] 
**BackgroundImageUrl** | Pointer to **NullableString** |  | [optional] 
**BackgroundGradient** | Pointer to **string** |  | [optional] 
**BackgroundOverlayOpacity** | Pointer to **int32** |  | [optional] 
**ShowBackgroundPattern** | Pointer to **bool** |  | [optional] 
**BackgroundPatternStyle** | Pointer to **string** |  | [optional] 
**WelcomeTitle** | Pointer to **NullableString** |  | [optional] 
**WelcomeSubtitle** | Pointer to **NullableString** |  | [optional] 
**ShowTenantInSubtitle** | Pointer to **bool** |  | [optional] 
**SplitPanelTitle** | Pointer to **NullableString** |  | [optional] 
**SplitPanelSubtitle** | Pointer to **NullableString** |  | [optional] 
**SplitPanelImageUrl** | Pointer to **NullableString** |  | [optional] 
**TermsUrl** | Pointer to **NullableString** |  | [optional] 
**PrivacyUrl** | Pointer to **NullableString** |  | [optional] 
**FooterText** | Pointer to **NullableString** |  | [optional] 
**ShowPoweredBy** | Pointer to **bool** |  | [optional] 
**InputStyle** | Pointer to **string** |  | [optional] 
**ButtonStyle** | Pointer to **string** |  | [optional] 
**FormCardStyle** | Pointer to **string** |  | [optional] 
**ApplyToRegistration** | Pointer to **bool** |  | [optional] 
**ApplyToConsent** | Pointer to **bool** |  | [optional] 
**MagicLinkEnabled** | Pointer to **bool** |  | [optional] 
**MagicLinkOnly** | Pointer to **bool** |  | [optional] 
**MagicLinkExpiry** | Pointer to **int32** | Magic-link lifetime in seconds. | [optional] 

## Methods

### NewBrandingSettings

`func NewBrandingSettings() *BrandingSettings`

NewBrandingSettings instantiates a new BrandingSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrandingSettingsWithDefaults

`func NewBrandingSettingsWithDefaults() *BrandingSettings`

NewBrandingSettingsWithDefaults instantiates a new BrandingSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *BrandingSettings) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *BrandingSettings) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *BrandingSettings) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *BrandingSettings) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetLogoUrl

`func (o *BrandingSettings) GetLogoUrl() string`

GetLogoUrl returns the LogoUrl field if non-nil, zero value otherwise.

### GetLogoUrlOk

`func (o *BrandingSettings) GetLogoUrlOk() (*string, bool)`

GetLogoUrlOk returns a tuple with the LogoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUrl

`func (o *BrandingSettings) SetLogoUrl(v string)`

SetLogoUrl sets LogoUrl field to given value.

### HasLogoUrl

`func (o *BrandingSettings) HasLogoUrl() bool`

HasLogoUrl returns a boolean if a field has been set.

### SetLogoUrlNil

`func (o *BrandingSettings) SetLogoUrlNil(b bool)`

 SetLogoUrlNil sets the value for LogoUrl to be an explicit nil

### UnsetLogoUrl
`func (o *BrandingSettings) UnsetLogoUrl()`

UnsetLogoUrl ensures that no value is present for LogoUrl, not even an explicit nil
### GetFaviconUrl

`func (o *BrandingSettings) GetFaviconUrl() string`

GetFaviconUrl returns the FaviconUrl field if non-nil, zero value otherwise.

### GetFaviconUrlOk

`func (o *BrandingSettings) GetFaviconUrlOk() (*string, bool)`

GetFaviconUrlOk returns a tuple with the FaviconUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFaviconUrl

`func (o *BrandingSettings) SetFaviconUrl(v string)`

SetFaviconUrl sets FaviconUrl field to given value.

### HasFaviconUrl

`func (o *BrandingSettings) HasFaviconUrl() bool`

HasFaviconUrl returns a boolean if a field has been set.

### SetFaviconUrlNil

`func (o *BrandingSettings) SetFaviconUrlNil(b bool)`

 SetFaviconUrlNil sets the value for FaviconUrl to be an explicit nil

### UnsetFaviconUrl
`func (o *BrandingSettings) UnsetFaviconUrl()`

UnsetFaviconUrl ensures that no value is present for FaviconUrl, not even an explicit nil
### GetBackgroundColor

`func (o *BrandingSettings) GetBackgroundColor() string`

GetBackgroundColor returns the BackgroundColor field if non-nil, zero value otherwise.

### GetBackgroundColorOk

`func (o *BrandingSettings) GetBackgroundColorOk() (*string, bool)`

GetBackgroundColorOk returns a tuple with the BackgroundColor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackgroundColor

`func (o *BrandingSettings) SetBackgroundColor(v string)`

SetBackgroundColor sets BackgroundColor field to given value.

### HasBackgroundColor

`func (o *BrandingSettings) HasBackgroundColor() bool`

HasBackgroundColor returns a boolean if a field has been set.

### GetPrimaryColor

`func (o *BrandingSettings) GetPrimaryColor() string`

GetPrimaryColor returns the PrimaryColor field if non-nil, zero value otherwise.

### GetPrimaryColorOk

`func (o *BrandingSettings) GetPrimaryColorOk() (*string, bool)`

GetPrimaryColorOk returns a tuple with the PrimaryColor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryColor

`func (o *BrandingSettings) SetPrimaryColor(v string)`

SetPrimaryColor sets PrimaryColor field to given value.

### HasPrimaryColor

`func (o *BrandingSettings) HasPrimaryColor() bool`

HasPrimaryColor returns a boolean if a field has been set.

### GetButtonText

`func (o *BrandingSettings) GetButtonText() string`

GetButtonText returns the ButtonText field if non-nil, zero value otherwise.

### GetButtonTextOk

`func (o *BrandingSettings) GetButtonTextOk() (*string, bool)`

GetButtonTextOk returns a tuple with the ButtonText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetButtonText

`func (o *BrandingSettings) SetButtonText(v string)`

SetButtonText sets ButtonText field to given value.

### HasButtonText

`func (o *BrandingSettings) HasButtonText() bool`

HasButtonText returns a boolean if a field has been set.

### GetShowTenantName

`func (o *BrandingSettings) GetShowTenantName() bool`

GetShowTenantName returns the ShowTenantName field if non-nil, zero value otherwise.

### GetShowTenantNameOk

`func (o *BrandingSettings) GetShowTenantNameOk() (*bool, bool)`

GetShowTenantNameOk returns a tuple with the ShowTenantName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShowTenantName

`func (o *BrandingSettings) SetShowTenantName(v bool)`

SetShowTenantName sets ShowTenantName field to given value.

### HasShowTenantName

`func (o *BrandingSettings) HasShowTenantName() bool`

HasShowTenantName returns a boolean if a field has been set.

### GetCustomCss

`func (o *BrandingSettings) GetCustomCss() string`

GetCustomCss returns the CustomCss field if non-nil, zero value otherwise.

### GetCustomCssOk

`func (o *BrandingSettings) GetCustomCssOk() (*string, bool)`

GetCustomCssOk returns a tuple with the CustomCss field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomCss

`func (o *BrandingSettings) SetCustomCss(v string)`

SetCustomCss sets CustomCss field to given value.

### HasCustomCss

`func (o *BrandingSettings) HasCustomCss() bool`

HasCustomCss returns a boolean if a field has been set.

### SetCustomCssNil

`func (o *BrandingSettings) SetCustomCssNil(b bool)`

 SetCustomCssNil sets the value for CustomCss to be an explicit nil

### UnsetCustomCss
`func (o *BrandingSettings) UnsetCustomCss()`

UnsetCustomCss ensures that no value is present for CustomCss, not even an explicit nil
### GetCustomHtml

`func (o *BrandingSettings) GetCustomHtml() string`

GetCustomHtml returns the CustomHtml field if non-nil, zero value otherwise.

### GetCustomHtmlOk

`func (o *BrandingSettings) GetCustomHtmlOk() (*string, bool)`

GetCustomHtmlOk returns a tuple with the CustomHtml field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomHtml

`func (o *BrandingSettings) SetCustomHtml(v string)`

SetCustomHtml sets CustomHtml field to given value.

### HasCustomHtml

`func (o *BrandingSettings) HasCustomHtml() bool`

HasCustomHtml returns a boolean if a field has been set.

### SetCustomHtmlNil

`func (o *BrandingSettings) SetCustomHtmlNil(b bool)`

 SetCustomHtmlNil sets the value for CustomHtml to be an explicit nil

### UnsetCustomHtml
`func (o *BrandingSettings) UnsetCustomHtml()`

UnsetCustomHtml ensures that no value is present for CustomHtml, not even an explicit nil
### GetTheme

`func (o *BrandingSettings) GetTheme() string`

GetTheme returns the Theme field if non-nil, zero value otherwise.

### GetThemeOk

`func (o *BrandingSettings) GetThemeOk() (*string, bool)`

GetThemeOk returns a tuple with the Theme field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTheme

`func (o *BrandingSettings) SetTheme(v string)`

SetTheme sets Theme field to given value.

### HasTheme

`func (o *BrandingSettings) HasTheme() bool`

HasTheme returns a boolean if a field has been set.

### GetSelfRegistrationEnabled

`func (o *BrandingSettings) GetSelfRegistrationEnabled() bool`

GetSelfRegistrationEnabled returns the SelfRegistrationEnabled field if non-nil, zero value otherwise.

### GetSelfRegistrationEnabledOk

`func (o *BrandingSettings) GetSelfRegistrationEnabledOk() (*bool, bool)`

GetSelfRegistrationEnabledOk returns a tuple with the SelfRegistrationEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSelfRegistrationEnabled

`func (o *BrandingSettings) SetSelfRegistrationEnabled(v bool)`

SetSelfRegistrationEnabled sets SelfRegistrationEnabled field to given value.

### HasSelfRegistrationEnabled

`func (o *BrandingSettings) HasSelfRegistrationEnabled() bool`

HasSelfRegistrationEnabled returns a boolean if a field has been set.

### GetLayout

`func (o *BrandingSettings) GetLayout() string`

GetLayout returns the Layout field if non-nil, zero value otherwise.

### GetLayoutOk

`func (o *BrandingSettings) GetLayoutOk() (*string, bool)`

GetLayoutOk returns a tuple with the Layout field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLayout

`func (o *BrandingSettings) SetLayout(v string)`

SetLayout sets Layout field to given value.

### HasLayout

`func (o *BrandingSettings) HasLayout() bool`

HasLayout returns a boolean if a field has been set.

### GetBackgroundType

`func (o *BrandingSettings) GetBackgroundType() string`

GetBackgroundType returns the BackgroundType field if non-nil, zero value otherwise.

### GetBackgroundTypeOk

`func (o *BrandingSettings) GetBackgroundTypeOk() (*string, bool)`

GetBackgroundTypeOk returns a tuple with the BackgroundType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackgroundType

`func (o *BrandingSettings) SetBackgroundType(v string)`

SetBackgroundType sets BackgroundType field to given value.

### HasBackgroundType

`func (o *BrandingSettings) HasBackgroundType() bool`

HasBackgroundType returns a boolean if a field has been set.

### GetBackgroundImageUrl

`func (o *BrandingSettings) GetBackgroundImageUrl() string`

GetBackgroundImageUrl returns the BackgroundImageUrl field if non-nil, zero value otherwise.

### GetBackgroundImageUrlOk

`func (o *BrandingSettings) GetBackgroundImageUrlOk() (*string, bool)`

GetBackgroundImageUrlOk returns a tuple with the BackgroundImageUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackgroundImageUrl

`func (o *BrandingSettings) SetBackgroundImageUrl(v string)`

SetBackgroundImageUrl sets BackgroundImageUrl field to given value.

### HasBackgroundImageUrl

`func (o *BrandingSettings) HasBackgroundImageUrl() bool`

HasBackgroundImageUrl returns a boolean if a field has been set.

### SetBackgroundImageUrlNil

`func (o *BrandingSettings) SetBackgroundImageUrlNil(b bool)`

 SetBackgroundImageUrlNil sets the value for BackgroundImageUrl to be an explicit nil

### UnsetBackgroundImageUrl
`func (o *BrandingSettings) UnsetBackgroundImageUrl()`

UnsetBackgroundImageUrl ensures that no value is present for BackgroundImageUrl, not even an explicit nil
### GetBackgroundGradient

`func (o *BrandingSettings) GetBackgroundGradient() string`

GetBackgroundGradient returns the BackgroundGradient field if non-nil, zero value otherwise.

### GetBackgroundGradientOk

`func (o *BrandingSettings) GetBackgroundGradientOk() (*string, bool)`

GetBackgroundGradientOk returns a tuple with the BackgroundGradient field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackgroundGradient

`func (o *BrandingSettings) SetBackgroundGradient(v string)`

SetBackgroundGradient sets BackgroundGradient field to given value.

### HasBackgroundGradient

`func (o *BrandingSettings) HasBackgroundGradient() bool`

HasBackgroundGradient returns a boolean if a field has been set.

### GetBackgroundOverlayOpacity

`func (o *BrandingSettings) GetBackgroundOverlayOpacity() int32`

GetBackgroundOverlayOpacity returns the BackgroundOverlayOpacity field if non-nil, zero value otherwise.

### GetBackgroundOverlayOpacityOk

`func (o *BrandingSettings) GetBackgroundOverlayOpacityOk() (*int32, bool)`

GetBackgroundOverlayOpacityOk returns a tuple with the BackgroundOverlayOpacity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackgroundOverlayOpacity

`func (o *BrandingSettings) SetBackgroundOverlayOpacity(v int32)`

SetBackgroundOverlayOpacity sets BackgroundOverlayOpacity field to given value.

### HasBackgroundOverlayOpacity

`func (o *BrandingSettings) HasBackgroundOverlayOpacity() bool`

HasBackgroundOverlayOpacity returns a boolean if a field has been set.

### GetShowBackgroundPattern

`func (o *BrandingSettings) GetShowBackgroundPattern() bool`

GetShowBackgroundPattern returns the ShowBackgroundPattern field if non-nil, zero value otherwise.

### GetShowBackgroundPatternOk

`func (o *BrandingSettings) GetShowBackgroundPatternOk() (*bool, bool)`

GetShowBackgroundPatternOk returns a tuple with the ShowBackgroundPattern field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShowBackgroundPattern

`func (o *BrandingSettings) SetShowBackgroundPattern(v bool)`

SetShowBackgroundPattern sets ShowBackgroundPattern field to given value.

### HasShowBackgroundPattern

`func (o *BrandingSettings) HasShowBackgroundPattern() bool`

HasShowBackgroundPattern returns a boolean if a field has been set.

### GetBackgroundPatternStyle

`func (o *BrandingSettings) GetBackgroundPatternStyle() string`

GetBackgroundPatternStyle returns the BackgroundPatternStyle field if non-nil, zero value otherwise.

### GetBackgroundPatternStyleOk

`func (o *BrandingSettings) GetBackgroundPatternStyleOk() (*string, bool)`

GetBackgroundPatternStyleOk returns a tuple with the BackgroundPatternStyle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackgroundPatternStyle

`func (o *BrandingSettings) SetBackgroundPatternStyle(v string)`

SetBackgroundPatternStyle sets BackgroundPatternStyle field to given value.

### HasBackgroundPatternStyle

`func (o *BrandingSettings) HasBackgroundPatternStyle() bool`

HasBackgroundPatternStyle returns a boolean if a field has been set.

### GetWelcomeTitle

`func (o *BrandingSettings) GetWelcomeTitle() string`

GetWelcomeTitle returns the WelcomeTitle field if non-nil, zero value otherwise.

### GetWelcomeTitleOk

`func (o *BrandingSettings) GetWelcomeTitleOk() (*string, bool)`

GetWelcomeTitleOk returns a tuple with the WelcomeTitle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWelcomeTitle

`func (o *BrandingSettings) SetWelcomeTitle(v string)`

SetWelcomeTitle sets WelcomeTitle field to given value.

### HasWelcomeTitle

`func (o *BrandingSettings) HasWelcomeTitle() bool`

HasWelcomeTitle returns a boolean if a field has been set.

### SetWelcomeTitleNil

`func (o *BrandingSettings) SetWelcomeTitleNil(b bool)`

 SetWelcomeTitleNil sets the value for WelcomeTitle to be an explicit nil

### UnsetWelcomeTitle
`func (o *BrandingSettings) UnsetWelcomeTitle()`

UnsetWelcomeTitle ensures that no value is present for WelcomeTitle, not even an explicit nil
### GetWelcomeSubtitle

`func (o *BrandingSettings) GetWelcomeSubtitle() string`

GetWelcomeSubtitle returns the WelcomeSubtitle field if non-nil, zero value otherwise.

### GetWelcomeSubtitleOk

`func (o *BrandingSettings) GetWelcomeSubtitleOk() (*string, bool)`

GetWelcomeSubtitleOk returns a tuple with the WelcomeSubtitle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWelcomeSubtitle

`func (o *BrandingSettings) SetWelcomeSubtitle(v string)`

SetWelcomeSubtitle sets WelcomeSubtitle field to given value.

### HasWelcomeSubtitle

`func (o *BrandingSettings) HasWelcomeSubtitle() bool`

HasWelcomeSubtitle returns a boolean if a field has been set.

### SetWelcomeSubtitleNil

`func (o *BrandingSettings) SetWelcomeSubtitleNil(b bool)`

 SetWelcomeSubtitleNil sets the value for WelcomeSubtitle to be an explicit nil

### UnsetWelcomeSubtitle
`func (o *BrandingSettings) UnsetWelcomeSubtitle()`

UnsetWelcomeSubtitle ensures that no value is present for WelcomeSubtitle, not even an explicit nil
### GetShowTenantInSubtitle

`func (o *BrandingSettings) GetShowTenantInSubtitle() bool`

GetShowTenantInSubtitle returns the ShowTenantInSubtitle field if non-nil, zero value otherwise.

### GetShowTenantInSubtitleOk

`func (o *BrandingSettings) GetShowTenantInSubtitleOk() (*bool, bool)`

GetShowTenantInSubtitleOk returns a tuple with the ShowTenantInSubtitle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShowTenantInSubtitle

`func (o *BrandingSettings) SetShowTenantInSubtitle(v bool)`

SetShowTenantInSubtitle sets ShowTenantInSubtitle field to given value.

### HasShowTenantInSubtitle

`func (o *BrandingSettings) HasShowTenantInSubtitle() bool`

HasShowTenantInSubtitle returns a boolean if a field has been set.

### GetSplitPanelTitle

`func (o *BrandingSettings) GetSplitPanelTitle() string`

GetSplitPanelTitle returns the SplitPanelTitle field if non-nil, zero value otherwise.

### GetSplitPanelTitleOk

`func (o *BrandingSettings) GetSplitPanelTitleOk() (*string, bool)`

GetSplitPanelTitleOk returns a tuple with the SplitPanelTitle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSplitPanelTitle

`func (o *BrandingSettings) SetSplitPanelTitle(v string)`

SetSplitPanelTitle sets SplitPanelTitle field to given value.

### HasSplitPanelTitle

`func (o *BrandingSettings) HasSplitPanelTitle() bool`

HasSplitPanelTitle returns a boolean if a field has been set.

### SetSplitPanelTitleNil

`func (o *BrandingSettings) SetSplitPanelTitleNil(b bool)`

 SetSplitPanelTitleNil sets the value for SplitPanelTitle to be an explicit nil

### UnsetSplitPanelTitle
`func (o *BrandingSettings) UnsetSplitPanelTitle()`

UnsetSplitPanelTitle ensures that no value is present for SplitPanelTitle, not even an explicit nil
### GetSplitPanelSubtitle

`func (o *BrandingSettings) GetSplitPanelSubtitle() string`

GetSplitPanelSubtitle returns the SplitPanelSubtitle field if non-nil, zero value otherwise.

### GetSplitPanelSubtitleOk

`func (o *BrandingSettings) GetSplitPanelSubtitleOk() (*string, bool)`

GetSplitPanelSubtitleOk returns a tuple with the SplitPanelSubtitle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSplitPanelSubtitle

`func (o *BrandingSettings) SetSplitPanelSubtitle(v string)`

SetSplitPanelSubtitle sets SplitPanelSubtitle field to given value.

### HasSplitPanelSubtitle

`func (o *BrandingSettings) HasSplitPanelSubtitle() bool`

HasSplitPanelSubtitle returns a boolean if a field has been set.

### SetSplitPanelSubtitleNil

`func (o *BrandingSettings) SetSplitPanelSubtitleNil(b bool)`

 SetSplitPanelSubtitleNil sets the value for SplitPanelSubtitle to be an explicit nil

### UnsetSplitPanelSubtitle
`func (o *BrandingSettings) UnsetSplitPanelSubtitle()`

UnsetSplitPanelSubtitle ensures that no value is present for SplitPanelSubtitle, not even an explicit nil
### GetSplitPanelImageUrl

`func (o *BrandingSettings) GetSplitPanelImageUrl() string`

GetSplitPanelImageUrl returns the SplitPanelImageUrl field if non-nil, zero value otherwise.

### GetSplitPanelImageUrlOk

`func (o *BrandingSettings) GetSplitPanelImageUrlOk() (*string, bool)`

GetSplitPanelImageUrlOk returns a tuple with the SplitPanelImageUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSplitPanelImageUrl

`func (o *BrandingSettings) SetSplitPanelImageUrl(v string)`

SetSplitPanelImageUrl sets SplitPanelImageUrl field to given value.

### HasSplitPanelImageUrl

`func (o *BrandingSettings) HasSplitPanelImageUrl() bool`

HasSplitPanelImageUrl returns a boolean if a field has been set.

### SetSplitPanelImageUrlNil

`func (o *BrandingSettings) SetSplitPanelImageUrlNil(b bool)`

 SetSplitPanelImageUrlNil sets the value for SplitPanelImageUrl to be an explicit nil

### UnsetSplitPanelImageUrl
`func (o *BrandingSettings) UnsetSplitPanelImageUrl()`

UnsetSplitPanelImageUrl ensures that no value is present for SplitPanelImageUrl, not even an explicit nil
### GetTermsUrl

`func (o *BrandingSettings) GetTermsUrl() string`

GetTermsUrl returns the TermsUrl field if non-nil, zero value otherwise.

### GetTermsUrlOk

`func (o *BrandingSettings) GetTermsUrlOk() (*string, bool)`

GetTermsUrlOk returns a tuple with the TermsUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTermsUrl

`func (o *BrandingSettings) SetTermsUrl(v string)`

SetTermsUrl sets TermsUrl field to given value.

### HasTermsUrl

`func (o *BrandingSettings) HasTermsUrl() bool`

HasTermsUrl returns a boolean if a field has been set.

### SetTermsUrlNil

`func (o *BrandingSettings) SetTermsUrlNil(b bool)`

 SetTermsUrlNil sets the value for TermsUrl to be an explicit nil

### UnsetTermsUrl
`func (o *BrandingSettings) UnsetTermsUrl()`

UnsetTermsUrl ensures that no value is present for TermsUrl, not even an explicit nil
### GetPrivacyUrl

`func (o *BrandingSettings) GetPrivacyUrl() string`

GetPrivacyUrl returns the PrivacyUrl field if non-nil, zero value otherwise.

### GetPrivacyUrlOk

`func (o *BrandingSettings) GetPrivacyUrlOk() (*string, bool)`

GetPrivacyUrlOk returns a tuple with the PrivacyUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrivacyUrl

`func (o *BrandingSettings) SetPrivacyUrl(v string)`

SetPrivacyUrl sets PrivacyUrl field to given value.

### HasPrivacyUrl

`func (o *BrandingSettings) HasPrivacyUrl() bool`

HasPrivacyUrl returns a boolean if a field has been set.

### SetPrivacyUrlNil

`func (o *BrandingSettings) SetPrivacyUrlNil(b bool)`

 SetPrivacyUrlNil sets the value for PrivacyUrl to be an explicit nil

### UnsetPrivacyUrl
`func (o *BrandingSettings) UnsetPrivacyUrl()`

UnsetPrivacyUrl ensures that no value is present for PrivacyUrl, not even an explicit nil
### GetFooterText

`func (o *BrandingSettings) GetFooterText() string`

GetFooterText returns the FooterText field if non-nil, zero value otherwise.

### GetFooterTextOk

`func (o *BrandingSettings) GetFooterTextOk() (*string, bool)`

GetFooterTextOk returns a tuple with the FooterText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFooterText

`func (o *BrandingSettings) SetFooterText(v string)`

SetFooterText sets FooterText field to given value.

### HasFooterText

`func (o *BrandingSettings) HasFooterText() bool`

HasFooterText returns a boolean if a field has been set.

### SetFooterTextNil

`func (o *BrandingSettings) SetFooterTextNil(b bool)`

 SetFooterTextNil sets the value for FooterText to be an explicit nil

### UnsetFooterText
`func (o *BrandingSettings) UnsetFooterText()`

UnsetFooterText ensures that no value is present for FooterText, not even an explicit nil
### GetShowPoweredBy

`func (o *BrandingSettings) GetShowPoweredBy() bool`

GetShowPoweredBy returns the ShowPoweredBy field if non-nil, zero value otherwise.

### GetShowPoweredByOk

`func (o *BrandingSettings) GetShowPoweredByOk() (*bool, bool)`

GetShowPoweredByOk returns a tuple with the ShowPoweredBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShowPoweredBy

`func (o *BrandingSettings) SetShowPoweredBy(v bool)`

SetShowPoweredBy sets ShowPoweredBy field to given value.

### HasShowPoweredBy

`func (o *BrandingSettings) HasShowPoweredBy() bool`

HasShowPoweredBy returns a boolean if a field has been set.

### GetInputStyle

`func (o *BrandingSettings) GetInputStyle() string`

GetInputStyle returns the InputStyle field if non-nil, zero value otherwise.

### GetInputStyleOk

`func (o *BrandingSettings) GetInputStyleOk() (*string, bool)`

GetInputStyleOk returns a tuple with the InputStyle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInputStyle

`func (o *BrandingSettings) SetInputStyle(v string)`

SetInputStyle sets InputStyle field to given value.

### HasInputStyle

`func (o *BrandingSettings) HasInputStyle() bool`

HasInputStyle returns a boolean if a field has been set.

### GetButtonStyle

`func (o *BrandingSettings) GetButtonStyle() string`

GetButtonStyle returns the ButtonStyle field if non-nil, zero value otherwise.

### GetButtonStyleOk

`func (o *BrandingSettings) GetButtonStyleOk() (*string, bool)`

GetButtonStyleOk returns a tuple with the ButtonStyle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetButtonStyle

`func (o *BrandingSettings) SetButtonStyle(v string)`

SetButtonStyle sets ButtonStyle field to given value.

### HasButtonStyle

`func (o *BrandingSettings) HasButtonStyle() bool`

HasButtonStyle returns a boolean if a field has been set.

### GetFormCardStyle

`func (o *BrandingSettings) GetFormCardStyle() string`

GetFormCardStyle returns the FormCardStyle field if non-nil, zero value otherwise.

### GetFormCardStyleOk

`func (o *BrandingSettings) GetFormCardStyleOk() (*string, bool)`

GetFormCardStyleOk returns a tuple with the FormCardStyle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFormCardStyle

`func (o *BrandingSettings) SetFormCardStyle(v string)`

SetFormCardStyle sets FormCardStyle field to given value.

### HasFormCardStyle

`func (o *BrandingSettings) HasFormCardStyle() bool`

HasFormCardStyle returns a boolean if a field has been set.

### GetApplyToRegistration

`func (o *BrandingSettings) GetApplyToRegistration() bool`

GetApplyToRegistration returns the ApplyToRegistration field if non-nil, zero value otherwise.

### GetApplyToRegistrationOk

`func (o *BrandingSettings) GetApplyToRegistrationOk() (*bool, bool)`

GetApplyToRegistrationOk returns a tuple with the ApplyToRegistration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplyToRegistration

`func (o *BrandingSettings) SetApplyToRegistration(v bool)`

SetApplyToRegistration sets ApplyToRegistration field to given value.

### HasApplyToRegistration

`func (o *BrandingSettings) HasApplyToRegistration() bool`

HasApplyToRegistration returns a boolean if a field has been set.

### GetApplyToConsent

`func (o *BrandingSettings) GetApplyToConsent() bool`

GetApplyToConsent returns the ApplyToConsent field if non-nil, zero value otherwise.

### GetApplyToConsentOk

`func (o *BrandingSettings) GetApplyToConsentOk() (*bool, bool)`

GetApplyToConsentOk returns a tuple with the ApplyToConsent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplyToConsent

`func (o *BrandingSettings) SetApplyToConsent(v bool)`

SetApplyToConsent sets ApplyToConsent field to given value.

### HasApplyToConsent

`func (o *BrandingSettings) HasApplyToConsent() bool`

HasApplyToConsent returns a boolean if a field has been set.

### GetMagicLinkEnabled

`func (o *BrandingSettings) GetMagicLinkEnabled() bool`

GetMagicLinkEnabled returns the MagicLinkEnabled field if non-nil, zero value otherwise.

### GetMagicLinkEnabledOk

`func (o *BrandingSettings) GetMagicLinkEnabledOk() (*bool, bool)`

GetMagicLinkEnabledOk returns a tuple with the MagicLinkEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMagicLinkEnabled

`func (o *BrandingSettings) SetMagicLinkEnabled(v bool)`

SetMagicLinkEnabled sets MagicLinkEnabled field to given value.

### HasMagicLinkEnabled

`func (o *BrandingSettings) HasMagicLinkEnabled() bool`

HasMagicLinkEnabled returns a boolean if a field has been set.

### GetMagicLinkOnly

`func (o *BrandingSettings) GetMagicLinkOnly() bool`

GetMagicLinkOnly returns the MagicLinkOnly field if non-nil, zero value otherwise.

### GetMagicLinkOnlyOk

`func (o *BrandingSettings) GetMagicLinkOnlyOk() (*bool, bool)`

GetMagicLinkOnlyOk returns a tuple with the MagicLinkOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMagicLinkOnly

`func (o *BrandingSettings) SetMagicLinkOnly(v bool)`

SetMagicLinkOnly sets MagicLinkOnly field to given value.

### HasMagicLinkOnly

`func (o *BrandingSettings) HasMagicLinkOnly() bool`

HasMagicLinkOnly returns a boolean if a field has been set.

### GetMagicLinkExpiry

`func (o *BrandingSettings) GetMagicLinkExpiry() int32`

GetMagicLinkExpiry returns the MagicLinkExpiry field if non-nil, zero value otherwise.

### GetMagicLinkExpiryOk

`func (o *BrandingSettings) GetMagicLinkExpiryOk() (*int32, bool)`

GetMagicLinkExpiryOk returns a tuple with the MagicLinkExpiry field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMagicLinkExpiry

`func (o *BrandingSettings) SetMagicLinkExpiry(v int32)`

SetMagicLinkExpiry sets MagicLinkExpiry field to given value.

### HasMagicLinkExpiry

`func (o *BrandingSettings) HasMagicLinkExpiry() bool`

HasMagicLinkExpiry returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


