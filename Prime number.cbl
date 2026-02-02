       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME-NUMBER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
         01 NUM        PIC 9(3).
         01 DIVISOR    PIC 9(3).
         01 IS-PRIME   PIC X.
         01 REM        PIC 9(3).

       PROCEDURE DIVISION.

           DISPLAY "ENTER A NUMBER:".
           ACCEPT NUM.
           MOVE 'Y' TO IS-PRIME.
           IF NUM <= 1
               MOVE 'N' TO IS-PRIME
           ELSE
               PERFORM VARYING DIVISOR FROM 2 BY 1
                   UNTIL DIVISOR > NUM / 2
                   COMPUTE REM = NUM - (NUM / DIVISOR * DIVISOR)
                   IF REM = 0
                       MOVE 'N' TO IS-PRIME
                       EXIT PERFORM
                   END-IF
               END-PERFORM
           END-IF.

           IF IS-PRIME = 'Y'
               DISPLAY NUM " IS A PRIME NUMBER"
           ELSE
               DISPLAY NUM " IS NOT PRIME"
           END-IF.

           STOP RUN.
