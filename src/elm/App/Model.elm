module App.Model exposing
    ( Flags
    , Model
    , Msg(..)
    , PagesReturn
    , emptyModel
    )

import App.Types exposing (Page(..))
import Pages.Scripts.Model
import Time


type alias PagesReturn subModel subMsg =
    { model : subModel
    , cmd : Cmd subMsg
    }


type Msg
    = MsgPageScripts Pages.Scripts.Model.Msg
    | NoOp
    | SetActivePage Page


type alias Flags =
    { hostUrl : String
    }


type alias Model =
    { activePage : Page
    , currentDate : Time.Posix
    , pageScripts : Pages.Scripts.Model.Model
    , hostUrl : String
    }


emptyModel : Model
emptyModel =
    { activePage = App.Types.Scripts
    , currentDate = Time.millisToPosix 0
    , pageScripts = Pages.Scripts.Model.emptyModel
    , hostUrl = ""
    }
