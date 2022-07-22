-- Importing the core object
-- Necessary to access the functions, player data, commands, etc.
local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('splayerdata', function(source)
    -- this function will return and store the player's data in a variable
    -- Once we have the data, we can access it using the variable name
    -- Since we are on the server side, we must specify PlayerData as the second index
    local Player = QBCore.Functions.GetPlayer(source)
    -- retrieves the player's unique citizen ID
    -- this id is often used to store information about the player in a database
    local citizenid = PLayer.PlayerData.citizenid
    -- retrieves the player's cash balance
    local cash = PLayer.PlayerData.money.cash
    -- retrieves the player's bank balance
    local bank = PLayer.PlayerData.money.bank
    -- retrieves the player's first name
    local firstname = PLayer.PlayerData.charinfo.firstname
    -- retrieves the player's last name
    local lastname = PLayer.PlayerData.charinfo.lastname
    -- retrieves the player's birthdate
    local birthdate = PLayer.PlayerData.charinfo.birthdate
    -- retrieves the player's gender
    local gender = PLayer.PlayerData.charinfo.gender
    -- retrieve's the player's nationality
    local nationality = PLayer.PlayerData.charinfo.nationality
    -- retrieves the player's phone number
    local phone = PLayer.PlayerData.charinfo.phone
    -- retrieves the player's bank account number
    local account = PLayer.PlayerData.charinfo.account
    -- retrieves the player's hunger level
    local hunger = PLayer.PlayerData.metadata.hunger
    -- retrieves the player's thirst level
    local thirst = PLayer.PlayerData.metadata.thirst
    -- retrieves the player's stress level
    local stress = PLayer.PlayerData.metadata.stress
    -- retrieves the player's death status
    local death = PLayer.PlayerData.metadata.isdead
    -- retrieves the player's last stand status
    local laststand = PLayer.PlayerData.metadata.inlaststand
    -- retrieves the player's armor level
    local armor = PLayer.PlayerData.metadata.armor
    -- retrieves the player's handcuff status
    local handcuff = PLayer.PlayerData.metadata.ishandcuffed
    -- retrieves the player's tracker status
    local tracker = PLayer.PlayerData.metadata.tracker
    -- retrieves the player's jail status
    local jail = PLayer.PlayerData.metadata.injail
    -- retrieves the player's jail items that were taken (table value)
    local jailitems = PLayer.PlayerData.metadata.jailitems
    -- retrieves the player's status (weed or gunpowder) (table value)
    local status = PLayer.PlayerData.metadata.status
    -- retrieves the player's phone information (table value)
    local phoneinfo = PLayer.PlayerData.metadata.phone
    -- retrieves the player's fitbit status (table value)
    local fitbit = PLayer.PlayerData.metadata.fitbit
    -- retrieves the player's command bindings (table value)
    local commandbindings = PLayer.PlayerData.metadata.commandbinds
    -- retrieves the player's bloodtype
    local bloodtype = PLayer.PlayerData.metadata.bloodtype
    -- retrieves the player's dealer rep level
    local dealerrep = PLayer.PlayerData.metadata.dealerrep
    -- retrieves the player's crafting rep level
    local craftingrep = PLayer.PlayerData.metadata.craftingrep
    -- retrieves the player's attachment crafting rep level
    local attachmentcraftingrep = PLayer.PlayerData.metadata.attachmentcraftingrep
    -- retrieves the player's job rep levels (table value)
    local jobrep = PLayer.PlayerData.metadata.jobrep
    -- retrieves the player's tow job rep level
    local towjobrep = PLayer.PlayerData.metadata.jobrep['tow']
    -- retrieves the player's trucker job rep level
    local truckerjobrep = PLayer.PlayerData.metadata.jobrep['trucker']
    -- retrieves the player's taxi job rep level
    local taxijobrep = PLayer.PlayerData.metadata.jobrep['taxi']
    -- retrieves the player's hotdog job rep level
    local hotdogjobrep = PLayer.PlayerData.metadata.jobrep['hotdog']
    -- retrieves the player's callsign
    local callsign = PLayer.PlayerData.metadata.callsign
    -- retrieves the player's fingerprint id
    local fingerprintid = PLayer.PlayerData.metadata.fingerprint
    -- retrieves the player's unique wallet id for crypto currency
    local walletid = PLayer.PlayerData.metadata.walletid
    -- retrieves the player's criminal record (table value)
    local criminalrecord = PLayer.PlayerData.metadata.criminalrecord
    -- retrieves the player's criminal record status
    local criminalrecordstatus = PLayer.PlayerData.metadata.criminalrecord['hasRecord']
    -- retrieves the player's criminal record date
    local criminalrecorddate = PLayer.PlayerData.metadata.criminalrecord['date']
    -- retrieves the player's licences (table value)
    local licences = PLayer.PlayerData.metadata.licences
    -- retrieves the player's driver's license status
    local driverlicense = PLayer.PlayerData.metadata.licences['driver']
    -- retrieves the player's weapon license status
    local weaponlicense = PLayer.PlayerData.metadata.licences['weapon']
    -- retrieves the player's business license status
    local businesslicense = PLayer.PlayerData.metadata.licences['business']
    -- retrieves the player's inside status
    local inside = PLayer.PlayerData.metadata.inside
    -- retrieves the player's house they are inside of
    local house = PLayer.PlayerData.metadata.inside['house']
    -- retrieves the player's apartment info for which one they are in (table value)
    local apartment = PLayer.PlayerData.metadata.inside['apartment']
    -- retrieves the player's apartment type
    local apartmenttype = PLayer.PlayerData.metadata.inside['apartment']['apartmenttype']
    -- retrieves the player's apartment id
    local apartmentid = PLayer.PlayerData.metadata.inside['apartment']['apartmentid']
    -- retrieves the player's phone data (table value)
    local phonedata = PLayer.PlayerData.metadata.phonedata
    -- retrieves the player's phone serial number
    local serialnumber = PLayer.PlayerData.metadata.phonedata['serialnumber']
    -- retrieves the player's installed apps (table value)
    local installedapps = PLayer.PlayerData.metadata.phonedata['installedapps']
    -- retrieves the player's job information (table value)
    local jobinfo = PLayer.PlayerData.job
    -- retrieves the player's job name
    local jobname = PLayer.PlayerData.job.name
    -- retrieves the player's job label
    local joblabel = PLayer.PlayerData.job.label
    -- retrieves the player's job payment
    local jobpayment = PLayer.PlayerData.job.payment
    -- retrieves the player's job type
    local jobtype = PLayer.PlayerData.job.type
    -- retrieves the player's job duty status
    local jobduty = PLayer.PlayerData.job.onduty
    -- retrieves the player's job boss status
    local jobboss = PLayer.PlayerData.job.isboss
    -- retrieves the player's job grade (table value)
    local jobgrade = PLayer.PlayerData.job.grade
    -- retrieves the player's job grade name
    local jobgradename = PLayer.PlayerData.job.grade.name
    -- retrieves the player's job grade label
    local jobgradelabel = PLayer.PlayerData.job.grade.label
    -- retrieves the player's gang information (table value)
    local ganginfo = PLayer.PlayerData.gang
    -- retrieves the player's gang name
    local gangname = PLayer.PlayerData.gang.name
    -- retrieves the player's gang label
    local ganglabel = PLayer.PlayerData.gang.label
    -- retrieves the player's gang boss status
    local gangboss = PLayer.PlayerData.gang.isboss
    -- retrieves the player's gang grade (table value)
    local ganggrade = PLayer.PlayerData.gang.grade
    -- retrieves the player's gang grade name
    local ganggradename = PLayer.PlayerData.gang.grade.name
    -- retrieves the player's gang grade level
    local ganggradelevel = PLayer.PlayerData.gang.grade.level
end, false)

-- Money handling

RegisterCommand('takemymoney', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    local cash = Player.PlayerData.cash
    local bank = Player.PlayerData.bank
    -- this function is used to remove money from a player
    -- you must specify which money account the amount should be taken from
    -- the second argument is the amount of money to remove
    -- the third optional reason is the reason for the money change
    Player.Functions.RemoveMoney('cash', cash, 'Tutorial command')
    Player.Functions.RemoveMoney('bank', bank, 'Tutorial command')
end)

RegisterCommand('makemerich', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to add money to a player
    -- you must specify which money account the amount should go towards
    -- the second argument is the amount of money to add
    -- the third optional reason is the reason for the money change
    Player.Functions.AddMoney('cash', 1000000, 'Tutorial command')
    Player.Functions.AddMoney('bank', 1000000, 'Tutorial command')
end)

RegisterCommand('setmymoney', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to set money for a player
    -- it doesn't add or remove money, it just sets the amount of money
    -- you must specify which money account the amount should be set to
    -- the second argument is the amount of money to set
    -- the third optional reason is the reason for the money change
    Player.Functions.SetMoney('cash', 1000000, 'Tutorial command')
    Player.Functions.SetMoney('bank', 1000000, 'Tutorial command')
end)

RegisterCommand('howrichami', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to get the amount of money a player has
    -- you must specify which money account you want to get the amount of
    Player.Functions.GetMoney('cash')
    Player.Functions.GetMoney('bank')
end)

-- Job handling

RegisterCommand('randomjob', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to set a player's job
    -- it must exist in the qb-core/shared/jobs.lua file
    -- you must specify the job name
    -- the second argument is the job rank
    Player.Functions.SetJob('tow', 0)
    -- we can also set the player on duty after setting their job
    Player.Functions.SetJobDuty(true)
end)

-- Job reputation handling

RegisterCommand('givejobrep', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to add job reputation to a player
    -- it automatically grabs the players job name and assigns rep to it
    -- the only argument you need to pass is the amount of reputation to add
    Player.Functions.AddJobRep(100)
end)

-- Gang handling

RegisterCommand('randomgang', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to set a player's gang
    -- it must exist in the qb-core/shared/gangs.lua file
    -- you must specify the gang name
    -- the second argument is the gang rank
    Player.Functions.SetGang('lostmc', 0)
end)

-- Player metadata handling

RegisterCommand('makemefeelgood', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to set a player's metadata
    -- the metadata must exist in the player object shown above in the long list
    -- the first argument is the metadata name
    -- the second argument is the metadata value
    Player.Functions.SetMetaData('hunger', 100)
    Player.Functions.SetMetaData('thirst', 100)
    Player.Functions.SetMetaData('stress', 0)
end)

-- Item handling

RegisterCommand('gimmeitem', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to give a player an item
    -- you must specify the item name
    -- the second argument is the item quantity
    Player.Functions.GiveItem('sandwich', 1)
end)

RegisterCommand('removeitem', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to remove an item from a player
    -- you must specify the item name
    -- the second argument is the item quantity
    Player.Functions.RemoveItem('sandwich', 1)
end)

RegisterCommand('clearmyinventory', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to clear a player's inventory
    Player.Functions.ClearInventory()
end)

RegisterCommand('doihavethisitem', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to check if a player has an item
    -- you must specify the item name
    -- this will return a table value
    Player.Functions.GetItemByName('sandwich')
end)

RegisterCommand('doihavethisitem2', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is similar to the above function
    -- but it does a more in-depth check across all inventory slots
    -- you must specify the item name
    -- this will return a table value
    Player.Functions.GetItemsByName('sandwich')
end)

RegisterCommand('whichitemisinthatslot', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to check which item is in a specific slot
    -- you must specify the slot number
    -- this will return a table value
    Player.Functions.GetItemInSlot(1)
end)

RegisterCommand('setmyinventory', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to set a player's inventory
    -- this is useful for first getting the players items and then modifying them
    -- the first arguments must be a table of items
    -- the second argument is for updating chat or not
    local playerItems = Player.PlayerData.items
    playeritems[1] = {name = 'sandwich', amount = 1}
    Player.Functions.SetInventory(playerItems, false)
end)

-- Player saving

RegisterCommand('saveme', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to save a player
    -- it will save the player's data to the database
    Player.Functions.Save()
end)

-- Updating a player's data

RegisterCommand('updateme', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to update a player's data
    -- this is typically used after modifying a player's data
    -- the only argument you need to pass is whether to update chat commands
    Player.Functions.UpdatePlayerData(false)
end)

-- Log a player out

RegisterCommand('logmeout', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    -- this function is used to log a player out
    Player.Functions.Logout()
end)