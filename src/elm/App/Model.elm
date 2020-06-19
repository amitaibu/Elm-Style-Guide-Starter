module App.Model exposing
    ( Flags
    , Model
    , Msg(..)
    , PagesReturn
    , emptyModel
    )

import App.Types exposing (Page(..))
import Pages.Atoms.Model
import Time


type alias PagesReturn subModel subMsg =
    { model : subModel
    , cmd : Cmd subMsg
    }


type Msg
    = MsgPageAtoms Pages.Atoms.Model.Msg
    | NoOp
    | SetActivePage Page


type alias Flags =
    { hostUrl : String
    }


type alias Model =
    { activePage : Page
    , currentDate : Time.Posix
    , pageAtoms : Pages.Atoms.Model.Model
    , hostUrl : String
    }


emptyModel : Model
emptyModel =
    { activePage = App.Types.Atoms
    , currentDate = Time.millisToPosix 0
    , pageAtoms = Pages.Atoms.Model.emptyModel
    , hostUrl = ""
    }
