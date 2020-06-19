module Pages.Scripts.View exposing (view)

import Html exposing (..)
import Pages.Scripts.Model exposing (Model, Msg(..))


view : String -> Model -> Html Msg
view hostUrl model =
    div [] [ text "@todo" ]
