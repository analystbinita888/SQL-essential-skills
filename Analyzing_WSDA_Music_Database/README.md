# SQL-essential-skills
# SQL Essential Training - WSDA Music Database

## Overview
I recently completed the **SQL Essential Training** course by **Walter Shields** on LinkedIn Learning. This beginner-friendly course provided hands-on practice with SQL queries using the **WSDA Music Database**. The course leveraged **DB Browser for SQLite** as the DBMS tool, simplifying the creation, editing, and manipulation of databases, making SQL accessible even for newcomers.

## Key Topics Covered
Throughout the course, I explored essential SQL topics, including:

- **Database Structures**: Understanding how data is organized within relational databases.
- **The SQL Stack**: Exploring the core components and functionality of SQL.
- **SQLite Database Environment**: Navigating database tools for effective management.
- **Composing Queries**: Crafting SQL queries to extract meaningful data from databases.
- **Data Analysis**: Interpreting and analyzing data for valuable insights.
- **Accessing Data from Multiple Tables**: Mastering JOIN operations to enrich data queries.
- **SQL Functions**: Utilizing built-in functions to enhance data retrieval and manipulation.
- **Grouping**: Summarizing data using GROUP BY and aggregate functions.
- **Nesting Queries**: Implementing subqueries for more complex data extraction.
- **Stored Queries**: Creating reusable queries for efficient data management.
- **Data Management**: Adding, modifying, and deleting records directly in the database.

## Tools
- **DBMS**: DB Browser for SQLite
- **Database**: WSDA Music Database

## Database Structure
The WSDA Music Database contains the following tables, which provide a relational schema for managing music data:

- **Album**: Album information including ID, title, and associated artist.
- **Artist**: Artist details with ID and name.
- **Customer**: Customer information, including contact and support details.
- **Employee**: Employee records covering personal and organizational details.
- **Genre**: Genres of music identified by name and ID.
- **Invoice**: Invoices generated for customers, linked to billing information and totals.
- **InvoiceLine**: Details of each item in an invoice, such as track and quantity.
- **MediaType**: Types of media formats stored by name and ID.
- **Playlist**: Playlists with associated tracks for organizing music.
- **PlaylistTrack**: Relationship between playlists and tracks.
- **Track**: Music tracks with details like album, media type, genre, and composer.

## All The Tables in the Database
The WSDA Music Database consists of the following tables and their fields:

### Album
| Field     | Data Type  |
|-----------|------------|
| AlbumId   | INTEGER    |
| Title     | NVARCHAR   |
| ArtistId  | INTEGER    |

### Artist
| Field     | Data Type  |
|-----------|------------|
| ArtistId  | INTEGER    |
| Name      | NVARCHAR   |

### Customer
| Field          | Data Type  |
|----------------|------------|
| CustomerId     | INTEGER    |
| FirstName      | NVARCHAR   |
| LastName       | NVARCHAR   |
| Company        | NVARCHAR   |
| Address        | NVARCHAR   |
| City           | NVARCHAR   |
| State          | NVARCHAR   |
| Country        | NVARCHAR   |
| PostalCode     | NVARCHAR   |
| Phone          | NVARCHAR   |
| Fax            | NVARCHAR   |
| Email          | NVARCHAR   |
| SupportRepId   | INTEGER    |

### Employee
| Field        | Data Type  |
|--------------|------------|
| EmployeeId   | INTEGER    |
| LastName     | NVARCHAR   |
| FirstName    | NVARCHAR   |
| Title        | NVARCHAR   |
| ReportsTo    | INTEGER    |
| BirthDate    | DATETIME   |
| HireDate     | DATETIME   |
| Address      | NVARCHAR   |
| City         | NVARCHAR   |
| State        | NVARCHAR   |
| Country      | NVARCHAR   |
| PostalCode   | NVARCHAR   |
| Fax          | NVARCHAR   |
| Email        | NVARCHAR   |


### Genre
| Field     | Data Type  |
|-----------|------------|
| GenreId   | INTEGER    |
| Name      | NVARCHAR   |

### Invoice
| Field            | Data Type  |
|------------------|------------|
| InvoiceId        | INTEGER    |
| CustomerId       | INTEGER    |
| InvoiceDate      | DATETIME   |
| BillingAddress   | NVARCHAR   |
| BillingCity      | NVARCHAR   |
| BillingState     | NVARCHAR   |
| BillingCountry   | NVARCHAR   |
| BillingPostalCode| NVARCHAR   |
| Total            | NUMERIC    |

### InvoiceLine
| Field         | Data Type  |
|---------------|------------|
| InvoiceLineId | INTEGER    |
| InvoiceId     | INTEGER    |
| TrackId       | INTEGER    |
| UnitPrice     | NUMERIC    |
| Quantity      | INTEGER    |

### MediaType
| Field        | Data Type  |
|--------------|------------|
| MediaTypeId  | INTEGER    |
| Name         | NVARCHAR   |


### Playlist
| Field        | Data Type  |
|--------------|------------|
| PlaylistId   | INTEGER    |
| Name         | NVARCHAR   |

### PlaylistTrack
| Field        | Data Type  |
|--------------|------------|
| PlaylistId   | INTEGER    |
| TrackId      | INTEGER    |

### Track
| Field        | Data Type  |
|--------------|------------|
| TrackId      | INTEGER    |
| Name         | NVARCHAR   |
| AlbumId      | INTEGER    |
| MediaTypeId  | INTEGER    |
| GenreId      | INTEGER    |
| Composer     | NVARCHAR   |
| Milliseconds | INTEGER    |
| Bytes        | INTEGER    |
| UnitPrice    | NUMERIC    |

## Reflections
This course has truly enhanced my understanding of SQL and data manipulation. I highly recommend it for anyone looking to start their journey into database management and data analysis.

---

If you're interested in SQL and want a practical, hands-on learning experience, give this course a try!
