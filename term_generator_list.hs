
import Prelude
import System.Environment

generate_term :: Int -> String
generate_term depth = concat (replicate depth "parent(") ++ "parent(robin, test)" ++ concat (replicate depth ")")

help program = "Usage: " ++ program ++ " [depth]"

main = do
  args <- getArgs
  case args of
    [depth] -> do
      let depth_int = read depth :: Int
      putStrLn $ (generate_term depth_int) ++ "."
    [] -> do
      progName <- getProgName
      putStrLn (help progName)
