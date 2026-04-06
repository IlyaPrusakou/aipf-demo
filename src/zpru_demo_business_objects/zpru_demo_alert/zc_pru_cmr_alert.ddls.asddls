@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZPRU_CMR_ALERT'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_PRU_CMR_ALERT
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_PRU_CMR_ALERT
  association [1..1] to ZR_PRU_CMR_ALERT as _BaseEntity on $projection.ALERTUUID = _BaseEntity.ALERTUUID
{
  key Alertuuid,
  Cmruuid,
  Cmrid,
  Cmritemuuid,
  Itemposition,
  Natureofgoods,
  Alerttype,
  Alertmessage,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  Createdat,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  Lastchangedby,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Lastchangedat,
  _BaseEntity
}
