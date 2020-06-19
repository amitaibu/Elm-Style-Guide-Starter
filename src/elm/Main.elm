module Main exposing (main)

import App.Model exposing (Flags, Model, Msg)
import App.Update
import App.View
import Browser


main : Program Flags Model Msg
main =
    Browser.element
        { init = App.Update.init
        , update = App.Update.update
        , view = App.View.view
        , subscriptions = always Sub.none
        }
