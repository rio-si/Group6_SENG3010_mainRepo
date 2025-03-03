# Project Group 6 - SENG3010
Rio S | Daquan J | David C

## Most Current Log 3/3 - March 3rd:

/*
- Phase 1 ReDone [As per Group Consensus - Completed/NIR]
- ReDone-ubuntu-web-vm-rio Created
- PostgreSQL Installed
  * sudo apt update used beforehand
  - Started & anable PostgreSQL using:
    * sudo systemctl start postgresql
    * sudo systemctl enable postgresql
  - Use "sudo -i -u postgres" For logging into postgres
  - Then use "psql" to log into PostgreSQL bash
    * Sample database created named "test_db"
      * using "CREATE DATABASE test_db"
        * Use "\c test_db" to access database
    * "\q" to exit psql bash
    * "exit" to exit PostgreSQL user
- Student Directory Recreated
  * Used "R_Assignment" rather than "Assignment" to distinguish
    * Using Version 16 of PostgreSQL (Issue?)
  - pg_dumpall backup created
    * Used "sudo -i -u postgres pg_dumpall ? /tmp/R-dbsrv-bak-pg-sumpall.sql"
      - Then "mv /tmp/R-dbsrv-bak-pg-sumpall/sql /hom/student/R_assignment/dbsrv/" to move file
  - Tar backup created
    * Used "cd /home/student"
    * then "sudo tar -czvf R-team6-bak-tar.gz R_assignment"
    * then "mv R-team6-bak.tar.gz /home/student/R_assignment/"
- Snapshot Taken named "3/3"
  * Includes general description for distinguishing
- Files added to Github Repo for Review & Logging
  
rio
*/

/*
- Reviewed edits with new unbunta-web-vm and will review its correctness with rio 
- will colaberate to finish phase 1 then move to phase 2 corrections
- progess on previous phases must be completed by end of week to start progress on phase 3 
  
David
*/

~
~
~
~
~

### FORMATTING GUIDE:
## Most Current Log [DATE]:

/*
- Sample Text
- Sample Text
  * Sample Text
- Sample Text
  
[AUTHOR NAME]
*/
