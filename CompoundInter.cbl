       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 P           PIC 9(5)V99 VALUE 0.
       01 R           PIC 9(2)V99 VALUE 0.
       01 T           PIC 9(2)    VALUE 0.
       01 AMT         PIC 9(10)V99 VALUE 0.
       01 CI          PIC 9(10)V99 VALUE 0.
       01 AMT-DISP    PIC Z(5)9.99.
       01 CI-DISP     PIC Z(5)9.99.

       PROCEDURE DIVISION.
           DISPLAY "ENTER THE PRINCIPAL:".
           ACCEPT P.
           DISPLAY "ENTER THE RATE:".
           ACCEPT R.
           DISPLAY "ENTER THE TIME:".
           ACCEPT T.
           COMPUTE AMT = P * ( (1 + R / 100) ** T ).
           SUBTRACT P FROM AMT GIVING CI.
           MOVE AMT TO AMT-DISP.
           MOVE CI  TO CI-DISP.
           DISPLAY "COMPOUND INTEREST: " CI-DISP.
           DISPLAY "TOTAL AMOUNT: " AMT-DISP.
           STOP RUN.
