       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONCATSTRING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STR1      PIC A(20).
       01 STR2      PIC A(20).
       01 RESULT    PIC A(41).  
       01 LEN-ST  PIC 9(2).

       PROCEDURE DIVISION.
           DISPLAY "Enter first string: ".
           ACCEPT STR1.
           DISPLAY "Enter second string: ".
           ACCEPT STR2.
           STRING STR1 DELIMITED BY SPACE
                  ' ' DELIMITED BY SIZE
                  STR2 DELIMITED BY SPACE
                  INTO RESULT
           END-STRING.
           INSPECT RESULT TALLYING RES-LEN FOR CHARACTERS.
           DISPLAY "Concatenated String: " RESULT.
           DISPLAY "LENGTH OF STRING:"LEN-ST.
           STOP RUN.
