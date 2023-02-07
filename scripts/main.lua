
AnimalNerf = {}
AnimalNerf.name = "AnimalNerf"

function initAnimalNerf()
    AnimalLoadingTrigger.openAnimalMenu = Utils.overwrittenFunction(
        AnimalLoadingTrigger.openAnimalMenu, 
        function(self, superFunc)
            if self.loadingVehicle == nil then
                return false
            end
            superFunc(self)
        end
    )

    AnimalScreenDealerFarm.new = Utils.overwrittenFunction(
        AnimalScreenDealerFarm.new, 
        function(self, superFunc)
            return nil
        end
    )

end

initAnimalNerf()
