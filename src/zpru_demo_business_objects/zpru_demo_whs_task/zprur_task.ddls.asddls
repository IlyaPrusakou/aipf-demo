@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPRUTASK'
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'Tanum' ]
define root view entity ZPRUR_TASK
  as select from ZPRUTASK as TASK
{
  key uuid as UUID,
  tanum as Tanum,
  delivery_id as DeliveryID,
  item_pos as ItemPos,
  material as Material,
  @Semantics.quantity.unitOfMeasure: 'Unit'
  quantity as Quantity,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  unit as Unit,
  source_bin as SourceBin,
  dest_bin as DestBin,
  conf_status as ConfStatus,
  created_at as CreatedAt,
  confirmed_at as ConfirmedAt,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
