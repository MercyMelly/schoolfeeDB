# 🎓 School Fee Management System

## 📘 Overview

The **School Fee Management System** is a MySQL database solution built to help schools track and manage student fee payments effectively. It supports multiple payment methods including cash and goods, records guardians and student details, links students to academic terms and classes, and maintains records of non-cash contributions.

## 🏗️ Database Structure

The system is structured around these core tables:

- `Guardians`: Stores parent or guardian information.
- `Classes`: Contains school classes/grades.
- `Students`: Maintains student records and links to guardians and classes.
- `Academic_Terms`: Keeps track of terms and academic years.
- `Fees`: Lists all required fees associated with a specific class.
- `Payment_Methods`: Enumerates available methods (Mpesa, Bank, Goods).
- `Payments`: Records student fee payments for terms.
- `Goods_Transactions`: Logs goods given in place of money.

## 🔗 Relationships

- A **Student** belongs to one **Class** and one **Guardian**.
- A **Payment** belongs to one **Student**, **Fee**, **Term**, and **Payment Method**.
- A **Goods_Transaction** is linked to a **Guardian**, **Student**, and **Term**.
- **Fees** are set per **Class**.
- Foreign keys with `ON DELETE CASCADE` maintain integrity across the database.

---

## 🖼 ERD (Entity Relationship Diagram)

The diagram below visualizes all tables and how they relate to one another.

erd_diagram.mwb

you can view the file by opening it up in MySQL 

## Tools used

##### MySQL
##### VS Code
