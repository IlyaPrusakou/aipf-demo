@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CMR Items'
@Metadata.allowExtensions: true
define view entity zc_pru_cmr_item 
as projection on zr_pru_cmr_item
{
    key CMRItemUUID,
    CMRUUID,
    CMRID,
    ItemPosition,
    MarksNumbers,
    PackageCount,
    PackingMethod,
    NatureOfGoods,
    StatisticalNumber,
      @Consumption.valueHelpDefinition: [ {
        entity.name: 'I_UnitOfMeasureStdVH',
        entity.element: 'UnitOfMeasure',
        useForValidation: true
      } ]       
    WeightUnitField,
      @Consumption.valueHelpDefinition: [ {
        entity.name: 'I_UnitOfMeasureStdVH',
        entity.element: 'UnitOfMeasure',
        useForValidation: true
      } ]         
    VolumeUnitField,
      @Semantics.quantity.unitOfMeasure : 'Weightunitfield'    
    GrossWeight,
      @Semantics.quantity.unitOfMeasure : 'Volumeunitfield'    
    Volume,
    UnitedNationNumber,
    HazardClass,
    PackingGroup,
    /* Associations */
     _CMRHeader : redirected to parent ZC_PRU_CMR_HEADER
}
