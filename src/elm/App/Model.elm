module App.Model exposing
    ( Flags
    , Model
    , Msg(..)
    , PagesReturn
    , emptyModel
    )

import App.Types exposing (Page(..))
import Pages.Base.Model
import Time


type alias PagesReturn subModel subMsg =
    { model : subModel
    , cmd : Cmd subMsg
    }


type Msg
    = MsgPageBase Pages.Base.Model.Msg
    | NoOp
    | SetActivePage Page


type alias Flags =
    { hostUrl : String
    }


type alias Model =
    { activePage : Page
    , currentDate : Time.Posix
    , pageBase : Pages.Base.Model.Model
    , hostUrl : String
    }


emptyModel : Model
emptyModel =
    { activePage = App.Types.Base
    , currentDate = Time.millisToPosix 0
    , pageBase = Pages.Base.Model.emptyModel
    , hostUrl = ""
    }
