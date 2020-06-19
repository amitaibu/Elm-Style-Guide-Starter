module Color.Model exposing
    ( ColorElement
    , ColorType(..)
    , allColorType
    , getColorElement
    )

{-| We could enter the color name, or its purpose (e.g. primary, secondary).
-}


type ColorType
    = Primary
    | Secondary


allColorType : List ColorType
allColorType =
    [ Primary
    , Secondary
    ]


type alias ColorElement =
    { -- Human readable name.
      name : String

    -- Html class name.
    , className : String
    }


getColorElement : ColorType -> ColorElement
getColorElement colorType =
    case colorType of
        Primary ->
            { name = "Primary"
            , className = "primary"
            }

        Secondary ->
            { name = "Secondary"
            , className = "secondary"
            }
