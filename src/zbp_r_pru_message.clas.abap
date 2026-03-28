CLASS zbp_r_pru_message DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  FOR BEHAVIOR OF zr_pru_message .

  PUBLIC SECTION.

    TYPES tt_message TYPE STANDARD TABLE OF zpru_message WITH EMPTY KEY.
    TYPES tt_attachment TYPE STANDARD TABLE OF zpru_attachment WITH EMPTY KEY.

    TYPES: BEGIN OF ts_doc_recognition,
             message    TYPE tt_message,
             attachment TYPE tt_attachment,
           END OF ts_doc_recognition.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_r_pru_message IMPLEMENTATION.
ENDCLASS.
