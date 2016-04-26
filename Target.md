# Introduction #

Securich is an incredibly handy and versatile tool for user administration on MySQL through the features like roles, cloning, copying, renaming blocking etc. It basically makes granting and revoking rights a piece of cake, not to mention added security it provides through password expiry, history and complexity, the customization level it permits, the fact that it runs on any MySQL 5.1.12 or later and it's easily deployable on any official MySQL binary, platform independent.

# Origins #

The original target for this project was to fill in a void in MySQL's security features when compared to other database technologies like Oracle, SQL Server, Sybase and others, that is most of the features listed above and some others, making "securing a MySQL DB" worthwhile for any DBA out there.

# What's in it? #

The package basically consists of a database named **_securich_** containing a group of tables used by a set of stored procedures to handle roles in MySQL for you. Despite the fact that roles have been implemented in other database technologies like Oracle, SQL server and Sybase for a long time, MySQL hasn't caught up with them so far on that respect.

# Price #

Adding to it's beauty is the fact that Securich is an open source project licensed under GPLv2 meaning you can use it free of charge, you can modify it at will and maybe even supply some cool stored procedures back to the project for others to use.