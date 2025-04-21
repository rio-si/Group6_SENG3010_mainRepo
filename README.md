# Project Group 6 - SENG3010
rio S | Daquan J | David C

## Most Current Log 4/21 - April 21st:
/*
- Snapshot of Main VM Taken
- Reviewed LinkedIn Docker Videos
- In ReDone-ubuntu-web-vm-rio
- sudo apt install curl
- curl -o /tmp/get-docker.sh https://get.docker.com
- systemctl start docker
- sh /tmp/get-docker.sh
- sudo groupadd docker
- sudo usermod -aG docker $USER
- newgrp docker
- docker run hello-world [SUCCESS]
- docker ps --all (View all Containers)
- cd ~/group_six_csdashboard 
- nano Dockerfile (See File for Specifics)
  - The Dockerfile (Simply Named "Dockerfile"), is Located in the "group_six_csdashboard" Folder
- docker build -t my_pg_container .
- All Work is still WIP / TESTING [NOT FINAL PRODUCT]

rio
*/

~
~
~
Older Logs:

4/17 - April 17th:


*/

Created faculty table under database "csdashboard" and displayed data from table onto website using file ** py-connect-pgdb.py ** from directory /usr/lib/cgi-bin/

To run file prompt **  ./py-connect-pgdb.py  ** in the terminal 

use sudo nano py-connect-pgdb.py OR courses.py to edit eithier file

Created new database "courses" and made table "course"

Currently have courses.py working. It lists the courses as a table after navigating to it through the nav bar inserted into py-connect file

To complete phase 3 professors assitance on the FTE page will be needed. Need context on FTE and how to incorperate the calculations. 


-David
/*

-Worked on all tasks night of April 9th
-Edited the py-connect-pgdb.py file
-Issues with editing file correctly using direct file editor instead of sudo nano home/student/downloads/py-connect-pgdb.py
-Edited file and then "cp py-connect-pgdb.py /usr/lib/cgi-bin/"
  -This allowed the newest edit of the py-connect file to be ran with apache
-Webpage is up and running with the csdashboard database
  -IMPORTANT**
    -The correct and running database is "csdashboard" with password "student"
-Further styling edits need to be made to the webpage but this is a minimal task as this is the end of Phase 2
-Meeting scheduled with professor to determine further actions in preparing for the 3rd phase. 
-Plan to push pace on phase 3 in order to complete final phase in acceptable timeline
-Snapshot taken on WebVM

David
*/

Log 4/5 - April 4th:
/*
- Reviewed "Linkedin video Postgresql"
- In ReDone-ubuntu-sql-vm-rio
  - sudo -i -u postgres
  - psql
  - CREATE DATABASE csdashboard;
  - \c csdashboard
  - CREATE TABLE csdashboard(ID SERIAL PRIMARY KEY, Honorific VARCHAR(10), First VARCHAR(50), MI CHAR(1), Last VARCHAR(50), Email VARCHAR(100) UNIQUE, Phone VARCHAR(20), Office VARCHAR(50), Research_Interests TEXT, Rank VARCHAR(50), Remarks TEXT, Currently_Employed BOOLEAN);
- Modded "ecu-cs-deot-faculty.csv"
  - New Copy "r-ecu-cs-dept-faculty.csv"
    * Research Interests --> Research_Interests
    * Currently Employed --> Currently_Employed
  - sudo snap install docker (Version 27.5.1)
  - sudo apt install curl
  - sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
  - sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
  - sudo apt install pgadmin4
  - sudo apt install net-tools
  - sudo -u postgres psql
  - alter user postgres with password 'student';
  - Server added in PgAdmin 4 known as 'pgsql'
  - Note Two Table:
    - csdashboard & Faculty
  - Imported CSV Information
  - Snapshot 4/5 Taken

rio
*/

Log 3/28 - March 28th:

/*
- In ReDone-ubunutu-web-vm-rio
  - psql -h 192.168.56.30 -d csdashbaord -U webuser1 [SUCCESSFUL]
  - sudo apt install openssh-server
  - ssh 192.168.0.20
- In ReDone-ubunutu-sql-vm-rio
  - pg_dumpall created "rio-phase-two-dumpall.sql"
- Issues To Work On:
  - Issues Importing CSV file
  - Issues Adding Permissions
- Snapshot of main VM taken - Before Phase 3 Initiation
- In ReDone-ubunutu-sql-vm-rio
  - hostname
    - student-re-sql-vm
  - sudo hostnamectl set-hostname pgsql
  - hostname
    - pgsql
  - 3/28 snapshot taken
- In ReDone-ubunutu-web-vm-rio
  - student-R-web-vm
  - sudo hostnamectl set-hostname websrv
  - hostname
    - websrv
  - 3/28 snapshot taken
- EcuCsDashBaordTemplate-rio-sort2 Created
  - Mock Skeleton Website with Sort Function 
- dumpall.sql of "ReDone-ubuntu-web-vm-rio" taken
- dumpall.sql of "ReDone-ubuntu-sql-vm-rio" taken

rio
*/

Log 3/26 - March 26th:

/*
- Snapshot Taken of VM before Working
- In pg_hba.conf of "ReDone-ubuntu-sql-vm-rio"
  - Changed “10.0.0.0/24” to “192.168.56.0/24”
- In ReDone-ubuntu-sql-vm-rio
  - sudo -i -u postgres
  - psql
  - CREATE DATABASE csdashboard;
  - \c csdashboard
  - CREATE TABLE FACULTY(
      ID SERIAL PRIMARY KEY,
      Honorific VARCHAR(10),
      First VARCHAR(50),
      MI CHAR(1),
      Last VARCHAR(50),
      Email VARCHAR(100) UNIQUE,
      Phone VARCHAR(20),
      Office VARCHAR(50),
      Research_Interests TEXT,
      Rank VARCHAR(50),
      Remarks TEXT,
      Currently_Employed BOOLEAN
    );
- Snapshot 3/26 taken
- In ReDone-ubuntu-web-vm
  - sudo apt install apache2
  - sudo a2enmod cgid
  - sudo apt install python3-pip
  - Snapshot 3/26 taken

rio
*/

Log 3/21 - March 21st:

/*
- Reverted Back to Snapshot
  * To Avoid Unlogged Errors Encountered from Team Members
- Base "ReDone-ubuntu-sql-vm-rio" created (Again?)
  * Network set:
    - Address: 196.168.56.30
    - Netmask: 255.255.255.0
- ReDone-ubuntu-web-vm-rio
  * Network set:
    - Address: 192.168.56.10
    - Netmask: 255.255.255.0
 - Redid all VM steps for sql-vm
 - Error Connecting

rio
*/

Log 3/20 - March 20th:

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
  * ss -nlt | grep 5432
    - LISTEN 0   200   0.0.0.0:5432   0.0.0.0:*
    - LISTEN 0   200      [::]:5432      [::]:*
  * Snapshot "3/18 - Ch1" Taken
  * Modified both: ReDone-ubuntu-sql-vm & ReDone-ubuntu-web-vm-rio
    - Settings 2nd Network Adapter:
      * IPv4 --> Manual:
        - Address: 192.168.56.30
        - Network: 255.255.255.0
  * sudo -i -u postgres
  * createuser --interactive
    - name: webuser1
    - superuser: n
  * ALTER USER webuser1 WITH PASSWORD 'student';
  * psql (\q to quit)
  * exit to exit postgres
  * sudo nano /etc/postgresql/16/main/pg_hba.conf
    - host all all 10.0.0.0/24 md5
  * Modified webserverVM (ReDone-ubuntu-web-vm-rio)
    - sudo apt install postgresql-client
    - psql -h 192.168.56.30 -d testdb -U webuser1
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
  - Started & enabled PostgreSQL using:
    * sudo systemctl start postgresql
    * sudo systemctl enable postgresql
  - Use "sudo -i -u postgres" For logging into postgres
  - Then use "psql" to log into PostgreSQL bash
    * Sample database created named "test_db"
      * using "CREATE DATABASE test_db"
        * Use "\c test_db" to access database
    * "\q" to exit psql bash
    * "exit" to exit the PostgreSQL user
- Student Directory Recreated
  * Used "R_Assignment" rather than "Assignment" to distinguish
    * Using Version 16 of PostgreSQL (Issue?)
  - pg_dumpall backup created
    * Used "sudo -i -u postgres pg_dumpall /tmp/R-dbsrv-bak-pg-dumpall.sql"
      - Then "mv /tmp/R-dbsrv-bak-pg-sumpall/sql /home/student/R_assignment/dbsrv/" to move file
  - Tar backup was created
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
