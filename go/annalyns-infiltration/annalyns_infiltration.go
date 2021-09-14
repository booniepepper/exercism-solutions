package annalyn

// CanFastAttack can be executed only when the knight is sleeping
func CanFastAttack(isKnightAwake bool) bool {
	return !isKnightAwake
}

// CanSpy can be executed if at least one of the characters is awake
func CanSpy(isKnightAwake, isArcherAwake, isPrisonerAwake bool) bool {
	return isKnightAwake || isArcherAwake || isPrisonerAwake
}

// CanSignalPrisoner can be executed if the prisoner is awake and the archer is sleeping
func CanSignalPrisoner(isArcherAwake, isPrisonerAwake bool) bool {
	return isPrisonerAwake && !isArcherAwake
}

// CanFreePrisoner can be executed if the prisoner is awake and the other 2 characters are asleep
// or if Annalyn's pet dog is with her and the archer is sleeping
func CanFreePrisoner(isKnightAwake, isArcherAwake, isPrisonerAwake, isPetDogPresent bool) bool {
	return (isPrisonerAwake && !isKnightAwake && !isArcherAwake) ||
    	(isPetDogPresent && !isArcherAwake)
}
