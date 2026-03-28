@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZPRU_CMR_HEADER'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_PRU_CMR_HEADER
  provider contract transactional_query
  as projection on ZR_PRU_CMR_HEADER
  association [1..1] to ZR_PRU_CMR_HEADER as _BaseEntity on $projection.CMRUUID = _BaseEntity.CMRUUID
{
  key CMRUUID,
      CMRID,
      SenderInfo,
      ConsigneeInfo,
      DeliveryPlace,
      TakingOverPlace,
      TakingOverDate,
      CarrierInfo,
      SuccessiveCarrier,
      Carrierreservice,
      SenderInstruction,
      @Semantics: {
        amount.currencyCode: 'Currency'
      }
      CashOnDelivery,
      @Consumption: {
        valueHelpDefinition: [ {
          entity.element: 'Currency',
          entity.name: 'I_CurrencyStdVH',
          useForValidation: true
        } ]
      }
      Currency,
      EstablishedPlace,
      EstablishedDate,
      @Semantics: {
        user.createdBy: true
      }
      Createdby,
      @Semantics: {
        systemDateTime.createdAt: true
      }
      Createdat,
      @Semantics: {
        user.localInstanceLastChangedBy: true
      }
      Lastchangedby,
      @Semantics: {
        systemDateTime.localInstanceLastChangedAt: true
      }
      Lastchangedat,
      _BaseEntity,
      _cmritems : redirected to composition child zc_pru_cmr_item
}
