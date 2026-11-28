# AdminEmailTemplatesUpsertRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **string** |  | 
**BodyHtml** | **string** | HTML body; placeholders as on the portal page. | 

## Methods

### NewAdminEmailTemplatesUpsertRequest

`func NewAdminEmailTemplatesUpsertRequest(subject string, bodyHtml string, ) *AdminEmailTemplatesUpsertRequest`

NewAdminEmailTemplatesUpsertRequest instantiates a new AdminEmailTemplatesUpsertRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminEmailTemplatesUpsertRequestWithDefaults

`func NewAdminEmailTemplatesUpsertRequestWithDefaults() *AdminEmailTemplatesUpsertRequest`

NewAdminEmailTemplatesUpsertRequestWithDefaults instantiates a new AdminEmailTemplatesUpsertRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSubject

`func (o *AdminEmailTemplatesUpsertRequest) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *AdminEmailTemplatesUpsertRequest) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *AdminEmailTemplatesUpsertRequest) SetSubject(v string)`

SetSubject sets Subject field to given value.


### GetBodyHtml

`func (o *AdminEmailTemplatesUpsertRequest) GetBodyHtml() string`

GetBodyHtml returns the BodyHtml field if non-nil, zero value otherwise.

### GetBodyHtmlOk

`func (o *AdminEmailTemplatesUpsertRequest) GetBodyHtmlOk() (*string, bool)`

GetBodyHtmlOk returns a tuple with the BodyHtml field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBodyHtml

`func (o *AdminEmailTemplatesUpsertRequest) SetBodyHtml(v string)`

SetBodyHtml sets BodyHtml field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


