module App.Update exposing
    ( init
    , update
    )

import App.Model exposing (..)
import App.Utils exposing (updateSubModel)
import Pages.Scripts.Update


init : Flags -> ( Model, Cmd Msg )
init flags =
    let
        modelUpdated =
            { emptyModel | hostUrl = flags.hostUrl }
    in
    ( modelUpdated
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        noChange =
            ( model, Cmd.none )
    in
    case msg of
        SetActivePage page ->
            ( { model | activePage = page }
            , Cmd.none
            )

        MsgPageScripts subMsg ->
            updateSubModel
                subMsg
                model.pageScripts
                (\subMsg_ subModel -> Pages.Scripts.Update.update subMsg_ subModel)
                (\subModel model_ -> { model_ | pageScripts = subModel })
                (\subCmds -> MsgPageScripts subCmds)
                model

        NoOp ->
            ( model, Cmd.none )
