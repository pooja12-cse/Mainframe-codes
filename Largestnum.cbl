       IDENTIFICATION DIVISION.
       PROGRAM-ID. LARGEST.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(2).
       01 B PIC 9(2).
       01 C PIC 9(2).

       PROCEDURE DIVISION.
           DISPLAY "ENTER A:"A.
           ACCEPT A.
           DISPLAY "ENTER B:"B.
           ACCEPT B.
           DISPLAY "ENTER C:"C.
           ACCEPT C.
           IF A = B AND B = C
               DISPLAY "ALL NUMBERS ARE EQUAL"
           ELSE
               IF A >= B AND A >= C
                   DISPLAY "A IS LARGEST"
               ELSE
                   IF B >= A AND B >= C
                       DISPLAY "B IS LARGEST"
                   ELSE
                       DISPLAY "C IS LARGEST"
                   END-IF
               END-IF
           END-IF.
           STOP RUN.
