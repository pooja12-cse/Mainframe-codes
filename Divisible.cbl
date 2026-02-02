       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVISIBLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(4) VALUE 1.
       01 LMT PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "ENTER THE LIMIT:".
           ACCEPT LMT.

           PERFORM VARYING NUM FROM 1 BY 1 UNTIL NUM > LMT
               IF FUNCTION MOD(NUM, 2) = 0
                  AND FUNCTION MOD(NUM, 3) = 0
                  AND FUNCTION MOD(NUM, 17) = 0
                   DISPLAY NUM
               END-IF
           END-PERFORM.

           STOP RUN.
