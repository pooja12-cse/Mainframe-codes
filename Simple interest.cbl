       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-INTEREST.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 P     PIC 9(4)V99 VALUE 0.
       01 R         PIC 9(2)V99 VALUE 0.
       01 T          PIC 9(1)V99 VALUE 0.
       01 SIMPLE     PIC 9(3)V99 VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "Enter Principal Amount: ".
           ACCEPT P.
           DISPLAY "Enter Rate of Interest: ".
           ACCEPT R.
           DISPLAY "Enter Time (in years): ".
           ACCEPT T.
           COMPUTE SIMPLE = (P * R * T) / 100.
           DISPLAY "Simple Interest is: " SIMPLE.
           STOP RUN.
