module Base.Model exposing
    ( BaseElement
    , allBases
    , baseAddress
    , baseBlockquote
    )

import Html.String as Html exposing (..)


{-| Base elements mostly copied as-is from

<https://github.com/bjankord/Style-Guide-Boilerplate/tree/main/markup/base>

-}
type alias BaseElement msg =
    { name : String
    , html : Html msg
    }


allBases =
    [ baseAddress
    , baseBlockquote
    ]


baseAddress =
    { name = "Address"
    , html = viewAddress
    }


viewAddress : Html msg
viewAddress =
    address []
        [ text "Company Name, Inc."
        , br [] []
        , text "811 7th Ave, Suite 700"
        , br [] []
        , text "Manhattan, NY 10019"
        , br [] []
        , text "USA"
        ]


baseBlockquote =
    { name = "Blockquote"
    , html = viewBlockquote
    }


viewBlockquote : Html msg
viewBlockquote =
    div []
        [ blockquote [] [ text "Blockquote without a <p> tag" ]
        , blockquote [] [ p [] [ text "Blockquote inside a <p> tag" ] ]
        ]
