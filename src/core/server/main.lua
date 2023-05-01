local db = dbConnect ('mysql', 'host=127.0.0.1; port=3306', 'root', '')

addEventHandler("onResourceStart", getResourceRootElement(getThisResource()),
    function()
        if not db then return print("Error loading database.") end
        dbExec (db, 'CREATE DATABASE IF NOT EXISTS `IslaRP`' )
        dbExec (db, 'USE `IslaRP`')
        dbExec (db, 'CREATE TABLE IF NOT EXISTS InfoAccounts (ID INTEGER PRIMARY KEY, charName TEXT, charSubName TEXT, charGen TEXT, charAge INTEGER NOT NULL, accSerial TEXT)')
        print("Sucessful database load.")
    end
)

addCommandHandler('createcharacter',
    function(source, commandName, ID, charName, charSubName, charAge, charGen, accSerial)
        local check = dbQuery (db, 'SELECT * FROM InfoAccounts WHERE accSerial=?', accSerial)
        response = dbPoll(check, -1)
        if #response == 3 then
            print('Usuário tem o número máximo de contas')
            return 'Erro'
        else
            dbExec (db, 'INSERT INTO InfoAccounts (ID, charName, charSubName, charAge, charGen, accSerial) VALUES(?,?,?,?,?,?)', ID, charName, charSubName, charAge, charGen, accSerial)
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

127.0.0.1 {
    -- resquest discord dm - Approved
    addAccount(discordid, sha256(discordid) {
        characters {
            char1 {
                addAccount(user: discordid-1, )
            }
        }
    })
}