local db = dbConnect ('mysql', 'host=127.0.0.1; port=3306', 'root', '')

addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), 
    function()
        dbExec (db, 'CREATE DATABASE IF NOT EXISTS `IslaRP`' )
        dbExec (db, 'USE `IslaRP`')
    	dbExec (db, 'CREATE TABLE IF NOT EXISTS InfoAccounts (ID INTEGER PRIMARY KEY, charName TEXT, charSubName TEXT, charAge INTEGER NOT NULL, charCity TEXT, accSerial TEXT)')
    	print ('Table created.')
    end
)

addEventHandler('onPlayerJoin', getResourceRootElement(getThisResource()),
    function ()
        dbExec (db, 'USE `IslaRP`')
    end
)

addCommandHandler('createcharacter',
    function()
        local check = dbQuery (db, 'SELECT * FROM InfoAccounts WHERE accSerial=?, accSerial')
        response = dbPoll(check, -1)
        if #response == 3 then
            print('Usuário tem o número máximo de contas')
            return 'Erro'
        else
            dbExec (db, 'INSERT INTO InfoAccounts (ID, charName, charSubName, charAge, charCity, accSerial) VALUES(?,?,?,?,?,?)', ID, charName, charSubName, charAge, charCity, accSerial)
            return 'Criado'
        end
    end
)

addEvent('IslaRP:CheckPlayerCharacterAmount', true)
addEventHandler('IslaRP:CheckPlayerCharacterAmount', getRootElement(),
    function()
        local check = dbQuery (db, 'SELECT * FROM InfoAccounts WHERE accSerial=?', Serial)
        response = dbPoll(check, -1)
        if #response ~= 0 then
            print(#response)
            return #reponse
        else
            print('O usuário não tem conta')
            return 0
        end
    end
)

addEvent('IslaRP:CheckPlayerHasCharacter', true)
addEventHandler('IslaRP:CheckPlayerHasCharacter', getRootElement(),
    function()
        local check = dbQuery (db, 'SELECT * FROM InfoAccounts WHERE ID=?, charName=?, charSubName=?, charAge=?, chatCity=?, accSerial=?')
        response = dbPoll(check, -1)
        
    end
)