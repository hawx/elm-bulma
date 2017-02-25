module Card exposing (view)

import Bulma exposing (columnDefaults)
import Html

view =
    Bulma.section Bulma.NoSize
        [ Bulma.container
              [ Bulma.title "Card"
              , Bulma.subtitle "An all-around flexible and composable component"
              , Bulma.columns Bulma.columnsDefaults
                  [ Bulma.column { columnDefaults | size = Bulma.OneThird }
                        [ Bulma.card
                              [ Bulma.cardImage (Bulma.image Bulma.IsFourByThree "http://bulma.io/images/placeholders/1280x960.png")
                              , Bulma.cardContent
                                  [ Bulma.media
                                        [ Bulma.mediaLeft
                                              [ Bulma.image Bulma.Square32 "http://bulma.io/images/placeholders/32x32.png"
                                              ]
                                        , Bulma.mediaContent
                                            [ Bulma.title "John Smith"
                                            , Bulma.subtitle "@johnsmith"
                                            ]
                                        ]
                                  , Bulma.content
                                      [ Html.text "Lorem ipsum... "
                                      , Html.a [] [ Html.text "#bulma" ]
                                      , Html.a [] [ Html.text "#css" ]
                                      , Html.br [] []
                                      , Html.small [] [ Html.text "11:09 PM - 1 Jan 2016" ]
                                      ]
                                  ]
                              ]
                        ]
                  , Bulma.column { columnDefaults | size = Bulma.OneThird }
                      [ Bulma.card
                            [ Bulma.cardHeader "Component"
                            , Bulma.cardContent
                                [ Bulma.content
                                      [ Html.text "Lorem ipsum... "
                                      , Html.a [] [ Html.text "#bulma" ]
                                      , Html.a [] [ Html.text "#css" ]
                                      , Html.br [] []
                                      , Html.small [] [ Html.text "11:09 PM - 1 Jan 2016" ]
                                      ]
                                ]
                            , Bulma.cardFooter
                                [ Bulma.cardFooterItem [] [ Html.text "Save" ]
                                , Bulma.cardFooterItem [] [ Html.text "Edit" ]
                                , Bulma.cardFooterItem [] [ Html.text "Delete" ]
                                ]
                            ]
                      ]
                  , Bulma.column Bulma.columnDefaults
                      [ Bulma.card
                            [ Bulma.cardHeader "I am a card"
                            , Bulma.cardContent
                                [ Html.text "Here is my content" ]
                            ]
                      ]
                  ]
              ]
        ]
