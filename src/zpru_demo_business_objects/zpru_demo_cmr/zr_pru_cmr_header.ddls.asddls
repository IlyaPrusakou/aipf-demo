@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPRU_CMR_HEADER'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_PRU_CMR_HEADER
  as select from zpru_cmr_header
  composition [*] of zr_pru_cmr_item as _cmritems
{
  key cmruuid           as Cmruuid,
      cmrid             as Cmrid,
      senderinfo        as Senderinfo,
      consigneeinfo     as Consigneeinfo,
      deliveryplace     as Deliveryplace,
      takingoverplace   as Takingoverplace,
      takingoverdate    as Takingoverdate,
      docsattached      as Docsattached,
      carrierinfo       as Carrierinfo,
      successivecarrier as Successivecarrier,
      carrierreserv     as Carrierreserv,
      senderinstruction as Senderinstruction,
      @Semantics.amount.currencyCode: 'Currency'
      cashondelivery    as Cashondelivery,
      currency          as Currency,
      specialagreements as Specialagreements,
      establishedplace  as Establishedplace,
      establisheddate   as Establisheddate,
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
