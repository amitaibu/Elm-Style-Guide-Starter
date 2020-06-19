module App.View exposing (view)

import App.Model exposing (Model, Msg(..))
import App.Types exposing (Page(..))
import Html exposing (..)
import Pages.Atoms.View


view : Model -> Html Msg
view model =
    case model.activePage of
        Atoms ->
            div []
                [ Html.map MsgPageAtoms <|
                    Pages.Atoms.View.view
                        model.hostUrl
                        model.pageAtoms
                ]
