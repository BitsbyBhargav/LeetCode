# LeetCode # 📊 SQL Mastery Hub & Database Logic

<p align="center">
  <img src="https://img.shields.io/github/directory-file-count/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME?label=Problems%20Solved&style=for-the-badge&color=7928CA"/>
  <img src="https://img.shields.io/github/last-commit/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME?style=for-the-badge&color=FF0080"/>
  <img src="https://img.shields.io/badge/Language-T--SQL%20%7C%20MySQL-007ACC?style=for-the-badge"/>
</p>

---

## 🎯 The Mission
A strategic, high-performance log of my journey decoding database architecture and query optimization via LeetCode. This repository tracks structural engineering, window functions, and advanced analytical data manipulation—crucial fundamentals for engineering scalable, real-world backend architectures.

---

## ⚡ Live Repository Insights
<p align="center">
  <img height="180em" src="https://github-readme-stats.vercel.app/api/pin/?username=BitsByBhargav&repo=LeetCode&theme=radical&show_owner=false" />
</p>

---

## 🧠 Database Patterns Library

Here is how I systematically break down database challenges. Click on a section to reveal the technical logic:

<details>
<summary><b>📈 1. Window Functions & Ranking</b></summary>
<br>

* **Core Functions:** `DENSE_RANK()`, `ROW_NUMBER()`, `LEAD()`, `LAG()`
* **Key Insight:** Crucial for identifying relative metrics (e.g., *Second Highest Salary*) without dropping duplicate positions or truncating arrays. Always pairs with `OVER (PARTITION BY ... ORDER BY ...)`.
</details>

<details>
<summary><b>🔄 2. Aggregations & Conditional Counters</b></summary>
<br>

* **Core Strategy:** `SUM(CASE WHEN Condition THEN 1 ELSE 0 END)`
* **Key Insight:** Avoid using `COUNT()` inside a conditional statement if it defaults to `ELSE 0`, because SQL engines treat `0` as a non-null element. Use `SUM` to accumulate binary status outcomes safely.
</details>

<details>
<summary><b>🛡️ 3. Mathematical Edge-Case Protection</b></summary>
<br>

* **Core Strategy:** `ISNULL(CAST((Value * 1.0) / NULLIF(Total, 0) AS DECIMAL(10,2)), 0)`
* **Key Insight:** 1.  Multiply standard numbers by `1.0` to explicitly bypass **Integer Division** bugs before division takes place.
    2.  Wrap potential zero denominators inside `NULLIF(..., 0)` to securely suppress divide-by-zero database crashes.
</details>

---

## 📂 Structural Layout
If you are exploring the codebase, solutions are cleanly segmented dynamically:
* `./Easy` — Fundamental Joins, Basic Filtering, and Single-Table Aggregations.
* `./Medium` — Complex Subqueries, CTEs, Data Pivoting, and Multi-layer Window Calculations.

---

<p align="center">
  <i>Automated via LeetHub. Built with precision. 🚀</i>
</p>
