# Bank Interface: Team Version

The first version of a savings and loan cooperative's web banking system, built as a team project. It includes login against a MySQL database, a main page, and screens for contributions, loans, reports and validation.

The completed version, with role-based access, user management and PDF reports, is in **[final_project](https://github.com/edgar0garcs38/final_project)**.

## Tech stack
Java · Jakarta EE (Servlets, JSP) · JDBC · MySQL · Maven · Apache Tomcat

## Run it
1. Create the MySQL database and set your credentials in `util/Conexion.java`
2. `./mvnw clean package` and deploy the WAR to Tomcat
