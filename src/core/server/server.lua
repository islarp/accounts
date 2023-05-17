local database = dbConnect("sqlite", "accounts.db")

addEventHandler("onResourceStart", getResourceRootElement(getThisResource()),
  function() 
    if not database then return print("[Isla] Something went wrong with the database.") end
    dbExec(database, "CREATE TABLE IF NOT EXISTS user (id, email, avatar, username, serial)")
    dbExec(database, "CREATE TABLE IF NOT EXISTS characters (id, char_id, char_age, char_firstname, char_surname, char_sex)")
    
    print("[Isla] Database connected sucessfully.")
  end
)

addEventHandler("onPlayerJoin", root,
function()
  serial = dbExec(database, "SELECT * FROM user WHERE serial = '?'", getPlayerSerial(source))
  if 
end
)

addCommandHandler("trigger", 
function(source, commandName, id, email, avatar, username, serial)
  dbExec(database, "INSERT INTO user VALUES (?, ?, ?, ?, ?)", id, email, avatar, username, serial)
  print("sucess")
end
)