## Levels of Schema

- conceptual schema
- logical
- physical

Conceptual schema is a high level design, modeling the data in an abstract way, not concerned with how the data is actually stored in the database. It focuses on identifying entities and their relationships.

Physical schema is a low level database-specific design focused on the implementation, concerned with things like the attributes of the tables, data types, not null constraints, keys, etc.

An entity relationship diagram can be a representation of a conceptual schema. Entities are represented by rectangles with the name of the entity in the middle of the diagram. Two main ways to represent relationships between entities are one (just a line) and many (looks like a crow's foot) which indicates how many instances of the entity are on that side of the relationship. A straight line between two rectangles would be a one-to-one, whereas a many symbol on both sides of the line would indicate a many-to-many relationship.

## Cardinality and Modality

Cardinality refers to the number of objects on each side of the relationship. Cardinality determines whether it is a one-to-one, one-to-many, or many-to-many relationship.

Modality refers to whether the relationship is required or optional. If the relationship is required, there has to be at least one instance of the entity. It is essentially the lower bound on how many instances there can be in a relationship, so it is often denoted as either a 1 (it is required) or 0 (it is optional).

