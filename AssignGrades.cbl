       IDENTIFICATION DIVISION.
       PROGRAM-ID. GRADE-CALC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MARK  PIC 9(3).
       01 GRADE PIC X.

       PROCEDURE DIVISION.
           DISPLAY "ENTER THE MARKS(0-100):".
           ACCEPT MARK.
           IF MARK >= 90
               MOVE 'A' TO GRADE
           ELSE IF MARK >= 80
               MOVE 'B' TO GRADE
           ELSE IF MARK >= 70
               MOVE 'C' TO GRADE
           ELSE IF MARK >= 60
               MOVE 'D' TO GRADE
           ELSE IF MARK >= 50
               MOVE 'E' TO GRADE
           ELSE
               MOVE 'F' TO GRADE
           END-IF.
           DISPLAY "GRADE:" GRADE.
           STOP RUN.
