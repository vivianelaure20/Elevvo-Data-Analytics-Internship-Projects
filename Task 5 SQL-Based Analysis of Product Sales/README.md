# Chinook Database SQL Analysis

This project explores business insights from the [Chinook Database](https://github.com/lerocha/chinook-database) using advanced SQL in PostgreSQL. It was completed as part of my **Data Analyst Internship Task 5 at Elevvo**.

## Tools Used

- **PostgreSQL**
- SQL: Joins
- **Chinook Sample Database**

---

## Key Business Questions Answered

- **Top-selling Products**
- **Revenue by Country and City**
- **Monthly Revenue & Order Trends**
- **Top 5 Customers by Spending**
- **Revenue by Genre and Artist**

---

## Project Structure

| File                                      | Description                              |
| ----------------------------------------- | ---------------------------------------- |
| `Chinook_Database_Analysis.sql`           | Complete business analysis               |
| `Chinook_Database_PostgreSQL.sql`         | Database creation and insertion script   |
| `Chinook Database.png`                    | Sample Database
| `README.md`                               | Project overview and summary             |

---

## Sample Query: Top 5 Customers by Spending

```sql
SELECT
  c.customer_id,
  c.first_name || ' ' || c.last_name AS customer_name,
  SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 5;
```

---

##  About Me

**Name:** Viviane Laure SOP MAMCHIE\
**Role:** Data Analyst Intern\
**Focus:** Data Analytics • Business Intelligence • SQL • Python • Power BI\

**GitHub:** [github.com/vivianelaure20](https://github.com/vivianelaure20)

---

##  Connect With Me

-  **Email:** [vivianelauresop85@gmail.com](mailto:vivianelauresop85@gmail.com)
-  **LinkedIn:**[linkedin.com/in/viviane-sop-2ab302185](https://www.linkedin.com/in/viviane-sop-2ab302185/)