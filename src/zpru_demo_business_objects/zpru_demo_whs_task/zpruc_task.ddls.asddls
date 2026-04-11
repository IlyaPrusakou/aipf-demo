@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZPRUTASK', 
  Semantickey: [ 'Tanum' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZPRUC_TASK
  provider contract TRANSACTIONAL_QUERY
  as projection on ZPRUR_TASK
  association [1..1] to ZPRUR_TASK as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  Tanum,
  DeliveryID,
  ItemPos,
  Material,
  @Semantics: {
    Quantity.Unitofmeasure: 'Unit'
  }
  Quantity,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  Unit,
  SourceBin,
  DestBin,
  ConfStatus,
  CreatedAt,
  ConfirmedAt,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
