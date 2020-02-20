
import Prelude
import System.Environment

multiplyString :: Int -> String -> String
multiplyString depth = concat . replicate depth

generateTerm :: Int -> String
generateTerm depth = multiplyString depth "parent(" ++ "parent(robin, test)" ++ multiplyString depth ")"

help program = "Usage: " ++ program ++ " [depth]"

main = do
  args <- getArgs
  case args of
    [depth] -> do
      let depthInt = read depth :: Int
      putStrLn $ (generateTerm depthInt) ++ "."
    [] -> do
      progName <- getProgName
      putStrLn (help progName)
