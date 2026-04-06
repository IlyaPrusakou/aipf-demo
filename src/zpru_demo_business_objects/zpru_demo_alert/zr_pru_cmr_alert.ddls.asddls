@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPRU_CMR_ALERT'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_PRU_CMR_ALERT
  as select from ZPRU_CMR_ALERT
{
  key alertuuid as Alertuuid,
  cmruuid as Cmruuid,
  cmrid as Cmrid,
  cmritemuuid as Cmritemuuid,
  itemposition as Itemposition,
  natureofgoods as Natureofgoods,
  alerttype as Alerttype,
  alertmessage as Alertmessage,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.localInstanceLastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  lastchangedat as Lastchangedat
}
