module App.Utils exposing (updateSubModel)

import App.Model exposing (Model, Msg(..), PagesReturn)


{-| Helper function to call a Page, and wire Error handling into it.
-}
updateSubModel :
    subMsg
    -> subModel
    -> (subMsg -> subModel -> PagesReturn subModel subMsg)
    -> (subModel -> Model -> Model)
    -> (subMsg -> Msg)
    -> Model
    -> ( Model, Cmd Msg )
updateSubModel subMsg subModel updateFunc modelUpdateFunc msg model =
    let
        pagesReturn =
            updateFunc subMsg subModel
    in
    ( modelUpdateFunc pagesReturn.model model
    , Cmd.map msg pagesReturn.cmd
    )
