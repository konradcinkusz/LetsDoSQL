# Wide World Importers SQL Exercises 2025

[![PDF download](https://img.shields.io/badge/PDF-download-blue)](https://github.com/konradcinkusz/LetsDoSQL/releases/latest/download/WWI_SQL_Exercises.pdf)
[![CI](https://github.com/konradcinkusz/LetsDoSQL/actions/workflows/ci.yml/badge.svg)](https://github.com/konradcinkusz/LetsDoSQL/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A curated collection of **20 SQL training exercises** based on the [Wide World Importers](https://learn.microsoft.com/en-us/sql/samples/wide-world-importers-what-is?view=sql-server-ver16) sample database.  
Each exercise comes with **task description, explanation, and solution query**, compiled into a single PDF.

---

## Features

* Covers **beginner → intermediate → advanced** SQL levels
* Topics include:
  - `JOIN`s
  - `GROUP BY` / `HAVING`
  - `UNION` / `INTERSECT`
  - `NOT IN` / subqueries
  - **Window functions** (`RANK`, `ROW_NUMBER`)
* Fully documented in LaTeX → **one-click PDF** release via GitHub Actions
* Use it for live classes, interview prep, or self-study

---

## Prerequisites

To work through the exercises you need the Wide World Importers sample database in a SQL Server environment. Choose one of the following setups:

* **Local SQL Server** – install SQL Server (Developer or Express) and [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/ssms/install/install).
* **Docker** – run Microsoft's [SQL Server container image](https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker) and restore the backup inside the container.
* **Azure SQL Database** – create a database and import the WWI [BACPAC](https://learn.microsoft.com/en-us/sql/samples/wide-world-importers-oltp-install-configure).

Download the WWI backups or BACPAC from Microsoft's [install guide](https://learn.microsoft.com/en-us/sql/samples/wide-world-importers-oltp-install-configure).

---

## Quick start

```bash
git clone https://github.com/konradcinkusz/LetsDoSQL.git
cd LetsDoSQL
latexmk -xelatex -shell-escape docs/main.tex   # or just run pdflatex twice
````

The compiled `WWI_SQL_Exercises.pdf` will appear in the repository root.
Prefer a browser? Import the repo into **Overleaf** and press *Re-compile*.

---

## Repository structure

```
.
├── docs/
│   └── main.tex         # LaTeX source for the exercises PDF
├── sql/
│   ├── 1-CustomerNamesAndCategories.sql
│   ├── 2-RetrieveFullNamesAndEmailOfEmployee.sql
│   ├── ...
│   └── 20-ListAllStockItemsWithTheirGroups.sql
├── .github/workflows/
│   └── ci.yml
└── README.md
```

---

## Live session

I also walked through solving these exercises live:
[![Watch on YouTube](https://img.youtube.com/vi/HEC6Dl-eXX4/hqdefault.jpg)](https://www.youtube.com/live/HEC6Dl-eXX4?si=rj48Anl-TXPp6EpS)

---

## Contributing

1. **Fork** → create a feature branch
2. Add or edit `.sql` files or improve `docs/main.tex`
3. Open a **Pull Request** – GitHub Actions will compile the PDF and verify LaTeX build

---

## License

This project is released under the **MIT License**.
See [LICENSE](LICENSE)

---

*Created with ♥ for anyone practicing SQL in 2025!*
