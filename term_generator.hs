import Prelude

generate_term :: Int -> String
generate_term 9000 = "robin, test"
generate_term depth =
  "parent(" ++ generate_term(depth + 1) ++ ")"

main = do
  putStrLn $ (generate_term 0) ++ "."
