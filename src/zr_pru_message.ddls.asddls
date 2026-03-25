@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPRU_MESSAGE'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_PRU_MESSAGE
  as select from zpru_message
  composition [*] of ZR_PRU_ATTACHMENT as _attachment
{
  key messageid       as Messageid,
      query           as Query,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at as LastChangedAt,
      _attachment
}
