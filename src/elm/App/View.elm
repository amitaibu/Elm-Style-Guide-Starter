module App.View exposing (view)

import App.Model exposing (Model, Msg(..))
import App.Types exposing (Page(..))
import Html exposing (..)
import Pages.Base.View


view : Model -> Html Msg
view model =
    case model.activePage of
        Base ->
            div []
                [ Html.map MsgPageBase <|
                    Pages.Base.View.view
                        model.hostUrl
                        model.pageBase
                ]
