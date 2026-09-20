# WhiteLabelItemSizeDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aspectRatio** | **Bool** | Whether the numbers are to be read as an aspect ratio rather than as pixels. Always `false` on the sizes  this API reports. | [optional] 
**fillArea** | **Bool** | Whether an image would be scaled to cover the box rather than to fit inside it. Always `false` here. | [optional] 
**greater** | **Bool** | Whether scaling would apply only to an image larger than the box. Always `false` here. | [optional] 
**height** | **Int** | The height of the box in pixels - one of the two fields of this object that carry information. | [optional] 
**ignoreAspectRatio** | **Bool** | Whether scaling would be allowed to distort the image. Always `false` here. | [optional] 
**isPercentage** | **Bool** | Whether `width` and `height` are to be read as percentages. Always `false` here, so both are pixels. | [optional] 
**less** | **Bool** | Whether scaling would apply only to an image smaller than the box. Always `false` here. | [optional] 
**limitPixels** | **Bool** | Whether the box is to be read as a total pixel-area budget instead of as two dimensions. Always `false`  here. | [optional] 
**width** | **Int** | The width of the box in pixels - the other field of this object that carries information. | [optional] 
**x** | **Int** | The horizontal offset of the box from the origin. Always `0` here. | [optional] 
**y** | **Int** | The vertical offset of the box from the origin. Always `0` here. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


