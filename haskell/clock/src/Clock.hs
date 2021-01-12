module Clock (addDelta, fromHourMin, toString) where

data Clock = Clock Int Int
  deriving Eq

fromHourMin :: Int -> Int -> Clock
fromHourMin hh mm
    | mm < 0 = fromHourMin (hh - 1) (mm + 60)
    | mm >= 60 = fromHourMin (hh + 1) (mm - 60)
    | hh < 0 = fromHourMin (hh + 24) mm
    | hh >= 24 = fromHourMin (hh `mod` 24) mm
    | otherwise = Clock hh mm

toString :: Clock -> String
toString (Clock hh mm) = fmt hh ++ ":" ++ fmt mm
    where fmt n
            | n < 10 = "0" ++ show n
            | otherwise = show n

addDelta :: Int -> Int -> Clock -> Clock
addDelta dhh dmm (Clock hh mm) = fromHourMin (hh + dhh) (mm + dmm)

