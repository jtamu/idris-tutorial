bmi : Double -> Double -> Double
bmi weight height = weight / (height * height)

diagnostic : Double -> Double -> String
diagnostic weight height =
    -- let index = bmi weight height in
    if index < 18.5 then "Underweight"
    else if index >= 18.5 && index < 25 then "Normal"
    else if index >= 25 && index < 30 then "Overweight"
    else "Obese"
    where
       -- whereを使う場合はインデントかつ型定義する必要がある
        index : Double
        index = bmi weight height
