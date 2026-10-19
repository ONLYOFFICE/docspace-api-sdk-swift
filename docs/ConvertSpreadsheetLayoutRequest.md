# ConvertSpreadsheetLayoutRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ignorePrintArea** | **Bool** | Whether the print area chosen in the spreadsheet is ignored; false converts only that area. | [optional] 
**orientation** | **String** | The page orientation of the output PDF file: portrait or landscape. | [optional] 
**fitToHeight** | **Int** | The number of pages the converted area is fitted into in height; 0 does not fit it. | [optional] 
**scale** | **Int** | The scale of the output PDF file, in percent. | [optional] 
**fitToWidth** | **Int** | The number of pages the converted area is fitted into in width; 0 does not fit it. | [optional] 
**headings** | **Bool** | Whether the row and column headings are printed in the output PDF file. | [optional] 
**gridLines** | **Bool** | Whether the grid lines are printed in the output PDF file. | [optional] 
**margins** | [**ConvertSpreadsheetMarginsRequest**](ConvertSpreadsheetMarginsRequest.md) | The margins of the output PDF file. | [optional] 
**pageSize** | [**ConvertSpreadsheetPageSizeRequest**](ConvertSpreadsheetPageSizeRequest.md) | The page size of the output PDF file. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


