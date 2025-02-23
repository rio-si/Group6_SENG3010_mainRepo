# Project Group 6 - SENG3010
Rio S | Daquan J | David C

# Logs 23/2 - Twentythird of February
/*
- Will Review Class Videos
- Work for Phase 2 Finalisation Will Continue 24/2
- Plans to Temporarily Create a 2nd ubunutu-sql-vm for testing
- Previous Command for importing data should be disregarded as defective
  
rio
*/

# Logs 20/2 - Twentieth of February
/*
- Ran on Ubunutu-sql-vm:
  * sudo apt update && sudo apt install -y vim git curl wget build-essential
  * sudo apt install -y postgresql postgresql-contrib
    * use "sudo systemctl start postgresql" for login
    * use "nano faculty_db" to access and edit 
  * Used this Command for importing data into the Database
      * login as faculty_db first: psql -U postgres -d faculty_db  
      * "psql -U postgres -d faculty_db -c "\COPY faculty FROM 'ecu-cs-dept-faculty.csv' DELIMITER ',' CSV HEADER;"
        * Modify for other Parameters
 -  Website Skeleton Added
   * Temporary Addition, New Content Additions TBD 
      
rio
*/


# Logs 19/2 - Nineteenth of February
/*
- PgAdmin installed on ubuntu-sql VM
  
rio
*/

# Logs 18/2 - Eighteenth of February
/*
- Created "Phase 2" Branch
  
rio
*/

# Logs 17/2 - Seventeenth of February
/*
- Web-VM Added Host Only Network
- Ubuntu-VM Added Host Only Network
  
rio
*/

# Logs 12/2 - Twelfth of February
/*
- Additional Development Tools installed
 ```
sudo apt install -y vim nano curl wget git build-essential
PostgreSQL -> sudo apt install -y postgresql postgresql-contrib
Python  -> sudo apt install -y python3 python3-pip
Node.js -> sudo apt install -y nodejs npm
Docker  -> sudo apt install -y docker.io
 ```
- Basic HTML WebPage Created
- Dashboard Files Added
  
rio
*/

# Logs 10/2 - Tenth of February
/*
- Phase 2 Begun - Phase 1 Temporarily Defective
  * Progress Must be Made to meet Deadlines
- Apache Installed + Enabled CGI on Web-Server-VM
- [SENG3010-configure-PGSQL-v4.docx] - Document is 90% Complete
  * No route to host on the final command line - Purposeful?
- ubuntu-sql-vm created
  * Snapshot taken
- Phase 2 on Steps 5-6; TBC
 * Data Structure Modifications are Available

rio
*/

# Logs 9/2 - Ninth of February
/*
- Previous Updated dumpall.sql && tar.gz Remain Incomplete
- Phase 1 Progress - Suspended Temporarily
- Work TBC on **Tenth of February**
  
rio
*/


# Logs 7/2 - Seventh of February
/*
- Assignment (Obtained through Oracle VM) Contains _Updated_ Files
    * Files Include Updated dumpall.sql && tar.gz
- Phase 1 Progress - Awaiting Verification
- Previous Guru Meditation Error Resolved - Instructor Assitance

rio
*/

# Logs 6/2 - Sixth of February
/*
- UPDATE - [assignment - UPDATED] Does not contain proper dumpall.sql file
- Phase 1 Remains Temporarily Incomplete; Working to fix
- Virtual Box Experiencing Guru Meditation Error

rio
*/
