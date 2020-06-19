module Base.Model exposing
    ( allBases
    , baseAddress
    , baseBlockquote
    )

import Html.String as Html exposing (..)


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
        [ blockquote []
            [ p [] [ text "Some sort of famous witty quote marked up with a &lt;blockquote> and a child &lt;p> element." ]
            ]
        , blockquote [] [ text "Even better philosophical quote marked up with just a &lt;blockquote> element." ]
        ]
