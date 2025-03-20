# Project Group 6 - SENG3010
Rio S | Daquan J | David C



## Most Current Log 3/20 - March 20th:

/*
Allowed SQL-vm to communicate on port 5432 with command posted in SENG3010-configure-PGSQL-v4.docx
Changed IP address on Web-VM to 192.168.56.10 instead of .....(.30) I Believe .30 is designated for the SQL-VM
Had to revert back to 3/18 snapshot
  
David
*/

/*
* Reviewed Solution to be in "SENG3010-For teams with communication issues on the VMs.pdf"

rio
*/

~
~
~
Older Logs:

Log 18/3 - March 18th:

/*
- Phase 2 ReDone [In Progress]
- ReDone-ubuntu-sql-vm created
  * sudo apt update
  * sudo apt install postgresql
  * sudo systemctl start postgresql
  * sudo systemctl enable postgresql
  * sudo ufw allow proto tcp from 192.168.56.0/24 to any port 54
    - Rules updated
  * sudo nano /etc/postgresql/16/main/postgresql.conf
    - Version 16 is used instead of Version 14
  * Modified listen_adressess = '*'
  * ss -nlt | grep 5432
    - LISTEN 0   200   127.0.0.1:5432   0.0.0.0:*
  * sudo service postgresql restart
    - LISTEN 0   200   0.0.0.0:5432   0.0.0.0:*
    - LISTEN 0   200      [::]:5432      [::]:*
  * Snapshot "3/18 - Ch1" Taken
  * Modified both: ReDone-ubuntu-sql-vm & ReDone-ubuntu-web-vm-rio
    - Settings 2nd Network Adapter:
      * IPv4 --> Manual:
        - Address: 255.255.255.0
        - Network: 192.168.56.30
  * sudo -i -u postgres
  * creatuser --interactive
    - name: webuser1
    - superuser: n
  * psql: ALTER USER webuser1 WITH PASSWORD 'student';
  * sudo nano /etc/postgresql/16/main/pg_hba.conf
    - host all all 10.0.0.0/24 md5
  * Modified webserverVM (ReDone-ubuntu-web-vm-rio)
    - sudo apt install postgresql-client
    - psql -h 192.168.56.30 -d testdb webuser1
      * Error Connecting
  * Progress Temporarily On Hold
  * Snapshot "3/18 Ch2" Taken
  
rio
*/

Log 3/3 - March 3rd:

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
