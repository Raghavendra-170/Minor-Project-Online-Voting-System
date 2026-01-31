# Online Voting System (JSP + MySQL)
An Aadhar-based Online Voting System developed using JSP, JDBC, MySQL, and Apache Tomcat.
This project allows voters to register, cast votes securely, and view election results in real time.

## 📌 Features

👤 User (Voter) Registration

🧑‍💼 Candidate Registration

🗳️ Secure Vote Casting

📊 Live Voting Status & Results

📅 Important Dates Page

📄 Voter & Candidate Instructions

🔐 Database-backed Authentication

## 🧩 Modular JSP-based Architecture

### 🛠️ Technologies Used

Layer	Technology

Frontend	HTML, CSS

Backend	JSP, JDBC

Database	MySQL

Server	Apache Tomcat 9

IDE	Eclipse

Version Control	Git & GitHub


## 📂 Project Structure

```text
OnlineVotingSystem
├── src
│   └── main
│       └── webapp
│           ├── index.jsp              # Entry page
│           ├── home.jsp               # Dashboard
│           ├── user_ins.jsp           # User registration backend
│           ├── cand_ins.jsp           # Candidate registration backend
│           ├── voting_ins.jsp         # Vote casting backend
│           ├── voting_status.jsp      # Live voting results
│           ├── imp_dates.jsp          # Important dates
│           ├── electoral.jsp          # Electoral roll
│           ├── connection.jsp         # JDBC connection
│           ├── voter_inst.html        # Voter instructions
│           ├── cand_inst.html         # Candidate instructions
│           └── WEB-INF
│               └── lib
│                   └── mysql-connector-j-8.x.x.jar
├── .gitignore
└── README.md
```


## 🗄️ Database Design
```
onlineelectionsystem
```

### Tables Used

user_reg – voter details

cand_reg – candidate details

voting – votes cast

### Example: voting Table
```
CREATE TABLE voting (
  uid VARCHAR(20),
  name VARCHAR(100)
);
```
## 🔗 Database Connection (JDBC)
```
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
  "jdbc:mysql://localhost:3306/onlineelectionsystem?useSSL=false&serverTimezone=UTC",
  "databasename",
  "password"
);
```

## 🚀 How to Run the Project

Install Java JDK 8

Install Apache Tomcat 9

Install MySQL Server & Workbench

Import project into Eclipse

Add MySQL Connector/J to WEB-INF/lib

Start Tomcat server

Open browser:
```
http://localhost:8081/OnlineVotingSystem/
```
## 📊 Voting Result Logic
```
SELECT name, COUNT(name) AS votes
FROM voting
GROUP BY name;
```

## 🧠 Key Learning Outcomes

JSP–JDBC integration

SQL aggregation (COUNT, GROUP BY)

Server-side form handling

Web application deployment on Tomcat

GitHub version control with .gitignore

## 🔮 Future Enhancements

Prevent duplicate voting (UID-based check)

Admin login & result locking

MVC architecture (Servlet + DAO)

Password encryption

Charts for live results

## 👨‍💻 Author

Raghavendra Kukkadapu
📍 India
💻 Java | SQL | Web Development
