@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPRU_CMR_HEADER'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_PRU_CMR_HEADER
  as select from zpru_cmr_header
  composition [*] of zr_pru_cmr_item as _cmritems
{
  key cmruuid           as CMRUUID,
      cmrid             as CMRID,
      senderinfo        as SenderInfo,
      consigneeinfo     as ConsigneeInfo,
      deliveryplace     as DeliveryPlace,
      takingoverplace   as TakingOverPlace,
      takingoverdate    as TakingOverDate,
      carrierinfo       as CarrierInfo,
      successivecarrier as SuccessiveCarrier,
      carrierreservice     as Carrierreservice,
      senderinstruction as SenderInstruction,
      @Semantics.amount.currencyCode: 'Currency'
      cashondelivery    as CashOnDelivery,
      currency          as Currency,
      establishedplace  as EstablishedPlace,
      establisheddate   as EstablishedDate,
      @Semantics.user.createdBy: true
      createdby         as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat         as Createdat,
      @Semantics.user.localInstanceLastChangedBy: true
      lastchangedby     as Lastchangedby,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lastchangedat     as Lastchangedat,
      _cmritems
}
