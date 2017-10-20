## Normalization Goals
- 4 objectives
- Arrange data into logical groups, with each group being capable of describing a portion of the whole
- Minimize duplicated data (reduce redundant records)
- Quickly manipulate and access data as needed
- Should only need to make changes in one place to modify a given piece of data

## Data Integrity
- maintenance and assurance of accuracy and consistency of data over its life cycle. Opposite to data corruption.
- 4 types: Entity Integrity, Domain Integrity, Referential Integrity, User-Defined Integrity

### Entity Integrity
- each record has a unique and non-null primary key

### Domain Integrity (Constraints)
- validity of data inputs for a column via data type, data format, and value range (date, time, age, year of birth, etc.)
- Ex. The domain of days of the week should only consist of Sunday to Saturday. Should not accept something like "Thordan's Day"

### Referential Integrity
- Table relationships must always be consistent. Every foreign key must has a matching primary key. Foreign keys cannot point to a non-existent record
- Maintained via constraints


### User Defined Integrity
- Business rules that dictate what follows after a specific action occurs.

## Relationships
- 3 types: 1:1, one-to-many, many-to-many
- One-to-one, ex. one customer to one account
- One-to-many, ex. one mother to many children
- Many-to-many, books to authors (many books written by one author, one book written by two co-authors)
