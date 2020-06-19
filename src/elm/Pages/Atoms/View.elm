module Pages.Atoms.View exposing (view)

import Html exposing (..)
import Pages.Atoms.Model exposing (Model, Msg(..))


view : String -> Model -> Html Msg
view hostUrl model =
    div [] [ text "@todo" ]
