module Base.Model exposing
    ( BaseElement
    , allBases
    , baseAddress
    , baseBlockquote
    )

import Html.String as Html exposing (..)


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
    blockquote [] [ text "Even better philosophical quote marked up with just a &lt;blockquote> element." ]
