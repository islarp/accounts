local db = dbConnect ("sqlite", "./src/utils/database.db")

addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), function()
    --dbExec (db, "DROP TABLE InfoAccounts")
	dbExec (db, "CREATE TABLE IF NOT EXISTS InfoAccounts (ID INTEGER PRIMARY KEY, charName TEXT, charSubName TEXT, charAge INTEGER NOT NULL, charCity INTEGER NOT NULL, accSerial TEXT)")
	print ("Table created.")
end)

function NewPlayerCharacter (ID, charName, charSubName, charAge, accSerial, charCity )
    local check = dbQuery (db, "SELECT * FROM InfoAccounts WHERE accSerial=?", accSerial)
    response = dbPoll(check, -1)

    if #response == 3 then
        print("Usuário tem o número máximo de contas")
        return "Erro"
    else
        dbExec (db, "INSERT INTO InfoAccounts (ID, charName, charSubName, charAge, charCity, accSerial) VALUES(?,?,?,?,?,?)", ID, charName, charSubName, charAge, accSerial)
        return "Criado"
    end
end

function CheckPlayerCharacterAmount (Serial)

    local check = dbQuery (db, "SELECT * FROM InfoAccounts WHERE accSerial=?", Serial)
    response = dbPoll(check, -1)

    if #response ~= 0 then
        print(#response)
        return #reponse
    else
        print("O usuário não tem conta")
        return 0
    end
end

addEvent("Check1", true)
addEventHandler("Check1", getRootElement(), CheckPlayerCharacterAmount)

addEvent("Add1", true)
addEventHandler("Add1", getRootElement(), NewPlayerCharacter)