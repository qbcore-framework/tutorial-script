-- Importing the core object
-- Necessary to access the functions, player data, commands, etc.

local QBCore = exports['qb-core']:GetCoreObject()

-- Player loading in after selecting/making a character
-- This event and state change is useful for triggering certain code to happen when a player loads in

local isLoggedIn = false -- Initialize a global variable in our file to keep track of player login status

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() -- this event is called when a player loads in
    isLoggedIn = true
    print('You have loaded') -- prints to your F8 console
end)

-- Player logging out to the multi-character screen (not leaving the server)
-- This event and state change is useful for triggering certain code to happen when a player logs out

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
    print('You have unloaded')
end)

-- OR

-- Using this state bag change handler allows you to accomplish the same thing as using both the events above

AddStateBagChangeHandler('isLoggedIn', nil, function(_, _, value) -- this state bag value is changed when a player loads in
    if value then
        isLoggedIn = true
        print('You have loaded') -- prints to your F8 console
    else
        isLoggedIn = false
        print('You have unloaded') -- prints to your F8 console
    end
end)

-- Accessing a player's data

RegisterCommand('cplayerdata', function() -- use a generic command to display the data
    -- this function will return and store the player's data in a variable
    -- Once we have the data, we can access it using the variable name
    local PlayerData = QBCore.Functions.GetPlayerData()
    -- retrieves the player's unique citizen ID
    -- this id is often used to store information about the player in a database
    local citizenid = PlayerData.citizenid
    -- retrieves the player's cash balance
    local cash = PlayerData.money.cash
    -- retrieves the player's bank balance
    local bank = PlayerData.money.bank
    -- retrieves the player's first name
    local firstname = PlayerData.charinfo.firstname
    -- retrieves the player's last name
    local lastname = PlayerData.charinfo.lastname
    -- retrieves the player's birthdate
    local birthdate = PlayerData.charinfo.birthdate
    -- retrieves the player's gender
    local gender = PlayerData.charinfo.gender
    -- retrieve's the player's nationality
    local nationality = PlayerData.charinfo.nationality
    -- retrieves the player's phone number
    local phone = PlayerData.charinfo.phone
    -- retrieves the player's bank account number
    local account = PlayerData.charinfo.account
    -- retrieves the player's hunger level
    local hunger = PlayerData.metadata.hunger
    -- retrieves the player's thirst level
    local thirst = PlayerData.metadata.thirst
    -- retrieves the player's stress level
    local stress = PlayerData.metadata.stress
    -- retrieves the player's death status
    local death = PlayerData.metadata.isdead
    -- retrieves the player's last stand status
    local laststand = PlayerData.metadata.inlaststand
    -- retrieves the player's armor level
    local armor = PlayerData.metadata.armor
    -- retrieves the player's handcuff status
    local handcuff = PlayerData.metadata.ishandcuffed
    -- retrieves the player's tracker status
    local tracker = PlayerData.metadata.tracker
    -- retrieves the player's jail status
    local jail = PlayerData.metadata.injail
    -- retrieves the player's jail items that were taken (table value)
    local jailitems = PlayerData.metadata.jailitems
    -- retrieves the player's status (weed or gunpowder) (table value)
    local status = PlayerData.metadata.status
    -- retrieves the player's phone information (table value)
    local phoneinfo = PlayerData.metadata.phone
    -- retrieves the player's fitbit status (table value)
    local fitbit = PlayerData.metadata.fitbit
    -- retrieves the player's command bindings (table value)
    local commandbindings = PlayerData.metadata.commandbinds
    -- retrieves the player's bloodtype
    local bloodtype = PlayerData.metadata.bloodtype
    -- retrieves the player's dealer rep level
    local dealerrep = PlayerData.metadata.dealerrep
    -- retrieves the player's crafting rep level
    local craftingrep = PlayerData.metadata.craftingrep
    -- retrieves the player's attachment crafting rep level
    local attachmentcraftingrep = PlayerData.metadata.attachmentcraftingrep
    -- retrieves the player's job rep levels (table value)
    local jobrep = PlayerData.metadata.jobrep
    -- retrieves the player's tow job rep level
    local towjobrep = PlayerData.metadata.jobrep['tow']
    -- retrieves the player's trucker job rep level
    local truckerjobrep = PlayerData.metadata.jobrep['trucker']
    -- retrieves the player's taxi job rep level
    local taxijobrep = PlayerData.metadata.jobrep['taxi']
    -- retrieves the player's hotdog job rep level
    local hotdogjobrep = PlayerData.metadata.jobrep['hotdog']
    -- retrieves the player's callsign
    local callsign = PlayerData.metadata.callsign
    -- retrieves the player's fingerprint id
    local fingerprintid = PlayerData.metadata.fingerprint
    -- retrieves the player's unique wallet id for crypto currency
    local walletid = PlayerData.metadata.walletid
    -- retrieves the player's criminal record (table value)
    local criminalrecord = PlayerData.metadata.criminalrecord
    -- retrieves the player's criminal record status
    local criminalrecordstatus = PlayerData.metadata.criminalrecord['hasRecord']
    -- retrieves the player's criminal record date
    local criminalrecorddate = PlayerData.metadata.criminalrecord['date']
    -- retrieves the player's licences (table value)
    local licences = PlayerData.metadata.licences
    -- retrieves the player's driver's license status
    local driverlicense = PlayerData.metadata.licences['driver']
    -- retrieves the player's weapon license status
    local weaponlicense = PlayerData.metadata.licences['weapon']
    -- retrieves the player's business license status
    local businesslicense = PlayerData.metadata.licences['business']
    -- retrieves the player's inside status
    local inside = PlayerData.metadata.inside
    -- retrieves the player's house they are inside of
    local house = PlayerData.metadata.inside['house']
    -- retrieves the player's apartment info for which one they are in (table value)
    local apartment = PlayerData.metadata.inside['apartment']
    -- retrieves the player's apartment type
    local apartmenttype = PlayerData.metadata.inside['apartment']['apartmenttype']
    -- retrieves the player's apartment id
    local apartmentid = PlayerData.metadata.inside['apartment']['apartmentid']
    -- retrieves the player's phone data (table value)
    local phonedata = PlayerData.metadata.phonedata
    -- retrieves the player's phone serial number
    local serialnumber = PlayerData.metadata.phonedata['serialnumber']
    -- retrieves the player's installed apps (table value)
    local installedapps = PlayerData.metadata.phonedata['installedapps']
    -- retrieves the player's job information (table value)
    local jobinfo = PlayerData.job
    -- retrieves the player's job name
    local jobname = PlayerData.job.name
    -- retrieves the player's job label
    local joblabel = PlayerData.job.label
    -- retrieves the player's job payment
    local jobpayment = PlayerData.job.payment
    -- retrieves the player's job type
    local jobtype = PlayerData.job.type
    -- retrieves the player's job duty status
    local jobduty = PlayerData.job.onduty
    -- retrieves the player's job boss status
    local jobboss = PlayerData.job.isboss
    -- retrieves the player's job grade (table value)
    local jobgrade = PlayerData.job.grade
    -- retrieves the player's job grade name
    local jobgradename = PlayerData.job.grade.name
    -- retrieves the player's job grade label
    local jobgradelabel = PlayerData.job.grade.label
    -- retrieves the player's gang information (table value)
    local ganginfo = PlayerData.gang
    -- retrieves the player's gang name
    local gangname = PlayerData.gang.name
    -- retrieves the player's gang label
    local ganglabel = PlayerData.gang.label
    -- retrieves the player's gang boss status
    local gangboss = PlayerData.gang.isboss
    -- retrieves the player's gang grade (table value)
    local ganggrade = PlayerData.gang.grade
    -- retrieves the player's gang grade name
    local ganggradename = PlayerData.gang.grade.name
    -- retrieves the player's gang grade level
    local ganggradelevel = PlayerData.gang.grade.level
end)
