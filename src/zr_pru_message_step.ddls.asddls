@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Message Step'
@Metadata.ignorePropagatedAnnotations: true
define view entity zr_pru_message_step
  as select from zpru_message_stp
  association to parent ZR_PRU_MESSAGE as _message on $projection.Messageid = _message.Messageid
  association of one to one ZR_PRU_AGENT_TOOL as _tool on _tool.AIPF7ToolUuid = $projection.Tooluuid
  
{
  key stepassignmentuuid as Stepassignmentuuid,
      stepuuid           as Stepuuid,
      stepnumber         as Stepnumber,
      messageid          as Messageid,
      queryuuid          as Queryuuid,
      runuuid            as Runuuid,
      tooluuid           as Tooluuid,
      stepsequence       as Stepsequence,
      stepstatus         as Stepstatus,
      stepstartdatetime  as Stepstartdatetime,
      stependdatetime    as Stependdatetime,
      stepinputprompt    as Stepinputprompt,
      stepoutputresponse as Stepoutputresponse,
      _message,
      _tool 
}
