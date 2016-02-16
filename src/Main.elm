import Graphics.Element exposing (..)
import Mouse

clickCount : Signal Int
clickCount =
  Signal.foldp (\click total -> total + 1) 0 Mouse.clicks

main : Signal Element
main = Signal.map show clickCount
