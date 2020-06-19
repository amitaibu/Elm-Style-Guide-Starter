module Pages.Atoms.Update exposing (update)

import App.Model exposing (PagesReturn)
import Pages.Atoms.Model exposing (Model, Msg(..))


update : Msg -> Model -> PagesReturn Model Msg
update msg model =
    let
        noChange =
            PagesReturn model Cmd.none
    in
    case msg of
        NoOp ->
            noChange
