# PlaytimeTransfer.java

This is a script that I wrote that converts playtime from the `playtime` table in the cmi.sqlite.db file to the `PlayTime` column in the `users` table. I wrote this because CMI stores playtime in two different areas, and if the server is reset, then playtime in the `users` table is lost but playtime is still stored in in the `playtime` table. This adds it all up in it's current form and copies it over. 

# TrinityText

Check the documentation in it's folder for more details.
