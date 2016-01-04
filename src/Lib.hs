
module Lib
    ( someFunc
    ) where

import Text.Read
import Data.Maybe




someFunc :: IO ()
someFunc = do
	
	
	let fact x | x ==0 = 1 ; fact x | x > 0 = x * fact(x-1)

	let binom n p r = (fact n)/((fact (n-r))*(fact r))* p**r *(1-p)**(n-r)

	let validate x
		| x <= 0 = "Parameter must be > 0" 
		| otherwise = show (sum vals) where
			vals = (map (\i -> (binom x (i/100) 1)) [1..100])	
	

	putStrLn "Testing.."
	putStrLn "Input n:"  
    	n <- getLine  
    	let nValue  = (fromMaybe (-1) (readMaybe n :: Maybe Float))
	
	putStrLn (validate nValue)
	

