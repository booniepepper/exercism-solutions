module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

secondsPerEarthYear :: Float
secondsPerEarthYear = 31557600

-- From seconds to planetary years.
ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / secondsPerEarthYear / yearsPerEarthYear
    where yearsPerEarthYear = case planet of
            Earth -> 1
            Mercury -> 0.2408467
            Venus -> 0.61519726
            Mars -> 1.88088158
            Jupiter -> 11.862615
            Saturn -> 29.447498
            Uranus -> 84.016846
            Neptune -> 164.79132

