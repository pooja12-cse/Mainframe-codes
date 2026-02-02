       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIBONACCI.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LMT     PIC 9(3).
       01 A       PIC 9(2) VALUE 0.
       01 B       PIC 9(2) VALUE 1.
       01 C       PIC 9(3).
       01 TOTAL   PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "ENTER LIMIT VALUE:" LMT.
           ACCEPT LMT.
           IF LMT LESS THAN 0
               DISPLAY "INVALID INPUT"
               STOP RUN
           END-IF.
           DISPLAY "FIBONACCI SERIES:".
           DISPLAY A.
           ADD A TO TOTAL.
           IF B <= LMT
               DISPLAY B
               ADD B TO TOTAL
           END-IF.
           PERFORM UNTIL C > LMT
               COMPUTE C = A + B
               IF C <= LMT
                   DISPLAY C
                   ADD C TO TOTAL
               END-IF
               MOVE B TO A
               MOVE C TO B
           END-PERFORM.
           DISPLAY "SUM OF FIBONACCI SERIES:" TOTAL.
           STOP RUN.
