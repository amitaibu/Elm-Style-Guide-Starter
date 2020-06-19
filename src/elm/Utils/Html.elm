module Utils.Html exposing (emptyNode)

import Html exposing (Attribute, Html, text)


emptyNode : Html msg
emptyNode =
    text ""
