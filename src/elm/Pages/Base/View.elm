module Pages.Base.View exposing (view)

import Base.Model
import Color.Model
import Html exposing (..)
import Html.Attributes exposing (class, rows, style, value)
import Html.String
import Html.String.Attributes
import Pages.Base.Model exposing (Model, Msg(..))


view : String -> Model -> Html Msg
view hostUrl model =
    div []
        [ viewColorElements
        , h1 [] [ text "Base elements" ]
        , div []
            (List.map
                (\element ->
                    div []
                        [ h2 [] [ text element.name ]
                        , Html.String.toHtml element.html
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


viewColorElements : Html Msg
viewColorElements =
    div []
        [ h1 [] [ text "Colors" ]
        , div [ style "display" "flex" ]
            (List.map
                (\colorType ->
                    let
                        element =
                            Color.Model.getColorElement colorType
                    in
                    div [ style "flex" "1 100%" ]
                        [ h2 [] [ text element.name ]
                        , div
                            [ -- @todo: Is `bg-` here ok?
                              class <| "bg-" ++ element.className
                            , style "height" "100px"
                            , style "width" "100px"
                            ]
                            []
                        , details []
                            [ textarea
                                [ value <| Html.String.toString 4 (Html.String.div [ Html.String.Attributes.class <| "bg-" ++ element.className ] [])
                                , rows 4
                                ]
                                []
                            ]
                        ]
                )
                Color.Model.allColorType
            )
        ]
