# AnalSpamFilter

Edit `BlockList.lua` to manage the words and phrases blocked by the filter. Add
each entry as a quoted, comma-separated string in the `ns.blockedWords` table.
Matching is case-insensitive and checks for substrings, so `"great again"`
matches anywhere in a chat message.
