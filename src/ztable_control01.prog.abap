REPORT ZTABLE_CONTROL01.
*15/12/2023

DATA: gt_stravelag TYPE STANDARD TABLE OF stravelag.
DATA: gs_stravelag TYPE stravelag.


SELECTION-SCREEN BEGIN OF BLOCK b1.
    PARAMETERS  p_count TYPE stravelag-country.
SELECTION-SCREEN END OF BLOCK  b1.
*&SPWizard: Data incl. inserted by SP Wizard. DO NOT CHANGE THIS LINE!
INCLUDE ZTABLE_CONTROL01_TOP.

INCLUDE ztable_control01_e01.

START-OF-SELECTION.
    SELECT *
      INTO TABLE gt_stravelag
      FROM stravelag
      WHERE country = p_count.
      CALL SCREEN 9000.


*BREAK-POINT.
