# GetSsfConfigurationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SpecVersion** | Pointer to **string** |  | [optional] 
**Issuer** | Pointer to **string** |  | [optional] 
**JwksUri** | Pointer to **string** |  | [optional] 
**DeliveryMethodsSupported** | Pointer to **[]string** |  | [optional] 
**ConfigurationEndpoint** | Pointer to **string** |  | [optional] 
**VerificationEndpoint** | Pointer to **string** |  | [optional] 
**AuthorizationSchemes** | Pointer to [**[]GetSsfConfigurationResponseAuthorizationSchemesItem**](GetSsfConfigurationResponseAuthorizationSchemesItem.md) |  | [optional] 
**EventsSupported** | Pointer to **[]string** |  | [optional] 

## Methods

### NewGetSsfConfigurationResponse

`func NewGetSsfConfigurationResponse() *GetSsfConfigurationResponse`

NewGetSsfConfigurationResponse instantiates a new GetSsfConfigurationResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetSsfConfigurationResponseWithDefaults

`func NewGetSsfConfigurationResponseWithDefaults() *GetSsfConfigurationResponse`

NewGetSsfConfigurationResponseWithDefaults instantiates a new GetSsfConfigurationResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSpecVersion

`func (o *GetSsfConfigurationResponse) GetSpecVersion() string`

GetSpecVersion returns the SpecVersion field if non-nil, zero value otherwise.

### GetSpecVersionOk

`func (o *GetSsfConfigurationResponse) GetSpecVersionOk() (*string, bool)`

GetSpecVersionOk returns a tuple with the SpecVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpecVersion

`func (o *GetSsfConfigurationResponse) SetSpecVersion(v string)`

SetSpecVersion sets SpecVersion field to given value.

### HasSpecVersion

`func (o *GetSsfConfigurationResponse) HasSpecVersion() bool`

HasSpecVersion returns a boolean if a field has been set.

### GetIssuer

`func (o *GetSsfConfigurationResponse) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *GetSsfConfigurationResponse) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *GetSsfConfigurationResponse) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.

### HasIssuer

`func (o *GetSsfConfigurationResponse) HasIssuer() bool`

HasIssuer returns a boolean if a field has been set.

### GetJwksUri

`func (o *GetSsfConfigurationResponse) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *GetSsfConfigurationResponse) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *GetSsfConfigurationResponse) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *GetSsfConfigurationResponse) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### GetDeliveryMethodsSupported

`func (o *GetSsfConfigurationResponse) GetDeliveryMethodsSupported() []string`

GetDeliveryMethodsSupported returns the DeliveryMethodsSupported field if non-nil, zero value otherwise.

### GetDeliveryMethodsSupportedOk

`func (o *GetSsfConfigurationResponse) GetDeliveryMethodsSupportedOk() (*[]string, bool)`

GetDeliveryMethodsSupportedOk returns a tuple with the DeliveryMethodsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeliveryMethodsSupported

`func (o *GetSsfConfigurationResponse) SetDeliveryMethodsSupported(v []string)`

SetDeliveryMethodsSupported sets DeliveryMethodsSupported field to given value.

### HasDeliveryMethodsSupported

`func (o *GetSsfConfigurationResponse) HasDeliveryMethodsSupported() bool`

HasDeliveryMethodsSupported returns a boolean if a field has been set.

### GetConfigurationEndpoint

`func (o *GetSsfConfigurationResponse) GetConfigurationEndpoint() string`

GetConfigurationEndpoint returns the ConfigurationEndpoint field if non-nil, zero value otherwise.

### GetConfigurationEndpointOk

`func (o *GetSsfConfigurationResponse) GetConfigurationEndpointOk() (*string, bool)`

GetConfigurationEndpointOk returns a tuple with the ConfigurationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfigurationEndpoint

`func (o *GetSsfConfigurationResponse) SetConfigurationEndpoint(v string)`

SetConfigurationEndpoint sets ConfigurationEndpoint field to given value.

### HasConfigurationEndpoint

`func (o *GetSsfConfigurationResponse) HasConfigurationEndpoint() bool`

HasConfigurationEndpoint returns a boolean if a field has been set.

### GetVerificationEndpoint

`func (o *GetSsfConfigurationResponse) GetVerificationEndpoint() string`

GetVerificationEndpoint returns the VerificationEndpoint field if non-nil, zero value otherwise.

### GetVerificationEndpointOk

`func (o *GetSsfConfigurationResponse) GetVerificationEndpointOk() (*string, bool)`

GetVerificationEndpointOk returns a tuple with the VerificationEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerificationEndpoint

`func (o *GetSsfConfigurationResponse) SetVerificationEndpoint(v string)`

SetVerificationEndpoint sets VerificationEndpoint field to given value.

### HasVerificationEndpoint

`func (o *GetSsfConfigurationResponse) HasVerificationEndpoint() bool`

HasVerificationEndpoint returns a boolean if a field has been set.

### GetAuthorizationSchemes

`func (o *GetSsfConfigurationResponse) GetAuthorizationSchemes() []GetSsfConfigurationResponseAuthorizationSchemesItem`

GetAuthorizationSchemes returns the AuthorizationSchemes field if non-nil, zero value otherwise.

### GetAuthorizationSchemesOk

`func (o *GetSsfConfigurationResponse) GetAuthorizationSchemesOk() (*[]GetSsfConfigurationResponseAuthorizationSchemesItem, bool)`

GetAuthorizationSchemesOk returns a tuple with the AuthorizationSchemes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationSchemes

`func (o *GetSsfConfigurationResponse) SetAuthorizationSchemes(v []GetSsfConfigurationResponseAuthorizationSchemesItem)`

SetAuthorizationSchemes sets AuthorizationSchemes field to given value.

### HasAuthorizationSchemes

`func (o *GetSsfConfigurationResponse) HasAuthorizationSchemes() bool`

HasAuthorizationSchemes returns a boolean if a field has been set.

### GetEventsSupported

`func (o *GetSsfConfigurationResponse) GetEventsSupported() []string`

GetEventsSupported returns the EventsSupported field if non-nil, zero value otherwise.

### GetEventsSupportedOk

`func (o *GetSsfConfigurationResponse) GetEventsSupportedOk() (*[]string, bool)`

GetEventsSupportedOk returns a tuple with the EventsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventsSupported

`func (o *GetSsfConfigurationResponse) SetEventsSupported(v []string)`

SetEventsSupported sets EventsSupported field to given value.

### HasEventsSupported

`func (o *GetSsfConfigurationResponse) HasEventsSupported() bool`

HasEventsSupported returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


