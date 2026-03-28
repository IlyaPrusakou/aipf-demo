@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CMR Items'

define view entity zr_pru_cmr_item
  as select from zpru_cmr_item
  association to parent ZR_PRU_CMR_HEADER as _CMRHeader on $projection.CMRUUID = _CMRHeader.CMRUUID
{
  key cmritemuuid     as CMRItemUUID,
      cmruuid         as CMRUUID,
      cmrid           as CMRID,
      itemposition    as ItemPosition,
      marksnumbers    as MarksNumbers,
      packagecount    as PackageCount,
      packingmethod   as PackingMethod,
      natureofgoods   as NatureOfGoods,
      StatisticalNumber   as StatisticalNumber,   
      weightunitfield as WeightUnitField,    
      volumeunitfield as VolumeUnitField,
      @Semantics.quantity.unitOfMeasure : 'WeightUnitField'
      grossweight     as GrossWeight,
      @Semantics.quantity.unitOfMeasure : 'VolumeUnitField'
      volume        as Volume,
      UnitedNationNumber        as UnitedNationNumber,
      hazardclass     as HazardClass,
      packinggroup    as PackingGroup,
      _CMRHeader // Make association public
}
