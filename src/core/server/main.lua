local db = dbConnect ("mysql", "host=127.0.0.1; port=3306", "root", "")

addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), function()

    --dbExec (db, "DROP DATABASE `IslaRP` ")

    dbExec (db, "CREATE DATABASE IF NOT EXISTS `IslaRP` ")

    dbExec (db, "USE `IslaRP`")

	dbExec (db, "CREATE TABLE IF NOT EXISTS InfoAccounts (ID INTEGER PRIMARY KEY, charName TEXT, charSubName TEXT, charAge INTEGER NOT NULL, accSerial TEXT)")

    dbExec (db, "CREATE TABLE IF NOT EXISTS InfoPlayer (ID INTEGER PRIMARY KEY, Position JSON, Money INT, Status JSON)")

	print ("Table created.")

end)

addCommandHandler('createcharacter',
    function(source, commandName, ID, charName, charSubName, charAge, charGen, accSerial)
    response = dbPoll(dbQuery (db, "SELECT * FROM InfoAccounts WHERE accSerial=?", accSerial), -1)

    if #response == 3 then
        print("Usuário tem o número máximo de contas")
        return "Erro"
    else
        dbExec (db, "INSERT INTO InfoAccounts (ID, charName, charSubName, charAge, accSerial) VALUES(?,?,?,?,?)", ID, charName, charSubName, charAge, accSerial)
        dbExec (db, "INSERT INTO InfoPlayer VALUES (?, ?, ?, ?)", ID, toJSON ({{getElementPosition (source)}, {getElementRotation (source)}, getElementDimension (source), getElementInterior (source)}), toJSON (0), getPlayerMoney (source), toJSON ({getElementHealth (source), getPedArmor (source), getElementModel (source)}))
        return "Criado"
    end
end)

addEventHandler('onPlayerLogin', getRootElement(),
    function(ID)

    local result = dbPoll (dbQuery (db, "SELECT * FROM InfoPlayer WHERE ID=?", ID), -1)
    if #result ~= 0 then
        local position = fromJSON (result[1]["Position"])
        local status = fromJSON (result[1]["Status"])
        local weapons = fromJSON (result[1]["Weapons"])

        setElementPosition (source, unpack (position[1]))
        setElementRotation (source, unpack (position[2]))
        setElementDimension (source, position[3])
        setElementInterior (source, position[4])

        for i = 1, #weapons do
            giveWeapon (source, weapons[i][1], weapons[i][2], false)
        end

        setPlayerMoney (source, result[1]["Money"])

        setElementHealth (source, status[1])
        setPedArmor (source, status[2])
        setElementModel (source, status[3])
    else
        local weapons = getPlayerWeapons (source)
        setElementPosition (source, config["Geral"]["Position"][1], config["Geral"]["Position"][2], config["Geral"]["Position"][3])
        setElementRotation (source, 0, 0, config["Geral"]["Position"][4])
        setElementDimension (source, config["Geral"]["Position"][5])
        setElementInterior (source, config["Geral"]["Position"][6])
        setElementModel (source, config["Geral"]["Model"])
        givePlayerMoney (source, config["Geral"]["Money"])
        dbExec (db, "INSERT INTO InfoPlayer VALUES (?, ?, ?, ?)", ID, toJSON ({{getElementPosition (source)}, {getElementRotation (source)}, getElementDimension (source), getElementInterior (source)}), toJSON (weapons), getPlayerMoney (source), toJSON ({getElementHealth (source), getPedArmor (source), getElementModel (source)}))
    end
end)

addEventHandler('onPlayerQuit', getRootElement(),
    function(ID)

    local result = dbPoll (dbQuery (db, "SELECT * FROM InfoPlayer WHERE ID=?", ID), -1)
    local weapons = getPlayerWeapons (source)
    if #result ~= 0 then
        dbExec (db, "UPDATE InfoPlayer SET Position = ?, Weapons = ?, Money = ?, Status = ? WHERE Account = ?", toJSON ({{getElementPosition (source)}, {getElementRotation (source)}, getElementDimension (source), getElementInterior (source)}), toJSON (weapons), getPlayerMoney (source), toJSON ({getElementHealth (source), getPedArmor (source), getElementModel (source)}), ID)
    else
        dbExec (db, "INSERT INTO InfoPlayer VALUES (?, ?, ?, ?, ?)", ID, toJSON ({{getElementPosition (source)}, {getElementRotation (source)}, getElementDimension (source), getElementInterior (source)}), toJSON (weapons), getPlayerMoney (source), toJSON ({getElementHealth (source), getPedArmor (source), getElementModel (source)}))
    end
end)

addEvent('IslaRP:CheckPlayerCharacterAmount', true)
addEventHandler('IslaRP:CheckPlayerCharacterAmount', getRootElement(),
    function(Serial)

    local check = dbQuery (db, "SELECT * FROM InfoAccounts WHERE accSerial=?", Serial)
    response = dbPoll(check, -1)
    if #response ~= 0 then
        print(#response)
        return #reponse
    else
        print("O usuário não tem conta")
        return 0
    end
end)

function GetAccountByID (ID)
    local result = dbQuery(db, "SELECT ID InfoAccounts WHERE accSerial=?");

    print(tostring(result))
end

addEvent("Get1", true)
addEventHandler("Get1", getRootElement(), GetAccountByID)
