module Tiles exposing (view)

import Html
import Bulma exposing (tileDefaults)

view =
    Bulma.section Bulma.NoSize
        [ Bulma.container
              [ Bulma.title "Tiles"

              , Bulma.tile { tileDefaults | role = Bulma.Ancestor }
                  [ Bulma.tile { tileDefaults | vertical = True, size = Bulma.ColumnSize 8 }
                        [ Bulma.tile tileDefaults
                              [ Bulma.tile { tileDefaults | role = Bulma.Parent, vertical = True }
                                    [ Bulma.tile { tileDefaults | role = Bulma.Child, class = "notification is-primary" }
                                          [ Bulma.title "Vertical..."
                                          , Bulma.subtitle "Top tile"
                                          ]
                                    , Bulma.tile { tileDefaults | role = Bulma.Child, class = "notification is-warning" }
                                        [ Bulma.title "...tiles"
                                        , Bulma.subtitle "Bottom tile"
                                        ]
                                    ]

                              , Bulma.tile { tileDefaults | role = Bulma.Parent }
                                  [ Bulma.tile { tileDefaults | role = Bulma.Child, class = "notification is-info" }
                                        [ Bulma.title "Middle tile"
                                        , Bulma.subtitle "With an image"
                                        , Bulma.image Bulma.IsFourByThree "http://bulma.io/images/placeholders/640x480.png"
                                        ]
                                  ]
                              ]
                        , Bulma.tile { tileDefaults | role = Bulma.Parent }
                            [ Bulma.tile { tileDefaults | role = Bulma.Child, class = "notification is-danger" }
                                  [ Bulma.title "Wide tile"
                                  , Bulma.subtitle "Aligned with the right tile"
                                  , Bulma.content [ Html.text "Lorem ipsum..." ]
                                  ]
                            ]
                        ]

                  , Bulma.tile { tileDefaults | role = Bulma.Parent }
                      [ Bulma.tile { tileDefaults | role = Bulma.Child, class = "notification is-success" }
                            [ Bulma.title "Tall tile"
                            , Bulma.subtitle "With even more content"
                            , Bulma.content [ Html.text "Lorem ipsum..." ]
                            ]
                      ]
                  ]
              ]
        ]
