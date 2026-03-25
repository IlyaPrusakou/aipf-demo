@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZPRU_MESSAGE'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_PRU_MESSAGE
  provider contract transactional_query
  as projection on ZR_PRU_MESSAGE
  association [1..1] to ZR_PRU_MESSAGE as _BaseEntity on $projection.Messageid = _BaseEntity.Messageid
{
  key Messageid,
  Query,
  @Semantics: {
    user.createdBy: true
  }
  CreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  CreatedAt,
  @Semantics: {
    user.localInstanceLastChangedBy: true
  }
  LastChangedBy,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LastChangedAt,
  _attachment : redirected to composition child ZC_PRU_ATTACHMENT,
  _BaseEntity
}
