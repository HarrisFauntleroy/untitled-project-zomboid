require 'Items/SuburbsDistributions'
require "Items/Distributions"
require "Items/ProceduralDistributions"
require "SuburbsDistributions"

local function addSandboxLoot()


--Item drops.
--Set Sandbox Settings values.
local SpawnChance = SandboxVars.CannedLead.SpawnChance; 



--Adds spawns.
    --KitchenCannedFood
    table.insert(ProceduralDistributions["list"]["KitchenCannedFood"].items, "CannedLead.CannedLead");
    table.insert(ProceduralDistributions["list"]["KitchenCannedFood"].items, SpawnChance * 1.2);

    --DishCabinetGeneric
    table.insert(ProceduralDistributions["list"]["DishCabinetGeneric"].items, "CannedLead.CannedLead");
    table.insert(ProceduralDistributions["list"]["DishCabinetGeneric"].items, SpawnChance * 1.2);

    --KitchenDryFood
    table.insert(ProceduralDistributions["list"]["KitchenDryFood"].items, "CannedLead.CannedLead");
    table.insert(ProceduralDistributions["list"]["KitchenDryFood"].items, SpawnChance * 1.2);

    --GigamartDryGoods
    table.insert(ProceduralDistributions["list"]["GigamartDryGoods"].items, "CannedLead.CannedLead");
    table.insert(ProceduralDistributions["list"]["GigamartDryGoods"].items, SpawnChance * 2);

    --KitchenBreakfast
    table.insert(ProceduralDistributions["list"]["KitchenBreakfast"].items, "CannedLead.CannedLead");
    table.insert(ProceduralDistributions["list"]["KitchenBreakfast"].items, SpawnChance * 2);

   ItemPickerJava.doParse = true
end

local function parseTables()
    if ItemPickerJava.doParse then
        ItemPickerJava.Parse()
        ItemPickerJava.doParse = nil
    end
end

Events.OnInitGlobalModData.Add(addSandboxLoot)
Events.OnLoadedMapZones.Add(parseTables)
  
