# Jojos-Bizarre-Boobah
Final exam practice

## Question 1
- Group By error
- It happened because the thing we were joining was not aligning correctly and the name column we were selecting was not in the boohbah_stand_link table so we had to add aliases as well
- The USING keyword was incorrect and we had to do a JOIN ON statement instead for the boohbah_id

## Question 2
- Logic error
- The issue is that your joining two unrelated tables so instead you join it using the boohbah_stand_link table instead.

## Question 3
- Name error
- The column boohbah_name was actually just name so it was incorrectly named in the select column

## Question 4
- Alias Error
- The columns in the select and where clause had no errors so the program didn't know which specific ones to run

## Question 5
- Logic error
- The WHERE keyword is not needed in the subquery for it to work

## Question 6
- Subquery error
- The issue was that we were doing a single-row subquery when we needed a multiple-row one hence the MAX() keyword

## Question 7
- Logic/Join error
- What happened was we were trying to join two unrelated tables again so we had to join using the boohbah_stand_link table again

## Question 8
- Group Function error
- You can't do a group function in the where clause so instead you have to do a subquery

## Question 9 
- Logic Error
- You have to match the order of the outside select statment with the subquery select statement

## Question 10
- Logic error
- Your using two unrelated columns again so you have to use the boohbah_stand_link tables
