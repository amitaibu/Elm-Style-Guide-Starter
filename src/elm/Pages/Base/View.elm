module Pages.Base.View exposing (view)

import Base.Model
import Html exposing (..)
import Html.Attributes exposing (rows, value)
import Html.String
import Pages.Base.Model exposing (Model, Msg(..))


view : String -> Model -> Html Msg
view hostUrl model =
    div []
        [ h1 [] [ text "Base elements" ]
        , div []
            (List.map
                (\element ->
                    div []
                        [ Html.String.toHtml element.html
                        , details []
                            [ textarea
                                [ value <| Html.String.toString 4 element.html
                                , rows 15
                                ]
                                []
                            ]
                        ]
                )
                Base.Model.allBases
            )
        ]
