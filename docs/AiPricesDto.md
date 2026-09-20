# AiPricesDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chat** | [AiEntryPricingDtoAiChatPriceDto] | The chat models on offer, each priced per million prompt and completion tokens. A model listed here is one  the installation can bill for, not necessarily one this portal may use -  `GET api/2.0/portal/payment/ai-model/restrictions` says which are allowed. | 
**embedding** | [AiEntryPricingDtoAiEmbeddingPriceDto] | The embedding models on offer, priced per million tokens of input; an embedding model has no completion  side, so its price object carries `prompt` alone. | 
**image** | [AiEntryPricingDtoAiImagePriceDto] | The image models on offer, priced per million prompt and completion tokens plus a price for each image  produced. | 
**webSearch** | [AiEntryPricingDtoDecimal] | The web search providers on offer. Their `price` is a bare number - the cost of one search - rather than  an object, because there are no tokens to distinguish. | 
**currency** | [**CurrencyInfo**](CurrencyInfo.md) | The currency every price above is expressed in, with its ISO code and symbol. One answer never mixes  currencies, so this is the only place to read it. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


