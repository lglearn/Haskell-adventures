-- Simple interactive loop at the prompt:
--    waits for chars, if 'q' the prog exits, else
--    it displays the char
-- Demoes - prompt interactions
--        - cursor disabling
--        - basic loop

import System.Console.ANSI
import System.IO

main = do
  -- Hiding the cursor & disabling the prompt normal outputs
  hSetEcho stdin False
  hSetBuffering stdin  NoBuffering
  hSetBuffering stdout NoBuffering
  hideCursor

  putStrLn "Type a char, 'q' to exit"

  loop
  where
    loop = do
      input <- getChar
      putStr "You typed: "
      putChar input
      putStrLn ""
      case input of
        'q' -> return ()
        _ -> loop

