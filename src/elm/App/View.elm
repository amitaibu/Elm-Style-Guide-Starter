module App.View exposing (view)

import App.Model exposing (Model, Msg(..))
import App.Types exposing (Page(..))
import Html exposing (..)
import Pages.Scripts.View


view : Model -> Html Msg
view model =
    case model.activePage of
        Scripts ->
            div []
                [ Html.map MsgPageScripts <|
                    Pages.Scripts.View.view
                        model.hostUrl
                        model.pageScripts
                ]
