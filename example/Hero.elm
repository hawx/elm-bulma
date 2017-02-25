module Hero exposing (view)

import Bulma exposing (tabsDefaults)
import Html

view =
    Bulma.section Bulma.NoSize
        [ Bulma.title "Hero"
            , Bulma.subtitle "An imposing hero banner to showcase something"
            , Bulma.hero { color = Bulma.NoColor, size = Bulma.NoSize }
                  [ Bulma.heroBody
                        [ Bulma.container
                              [ Bulma.title "Hero title"
                              , Bulma.subtitle "Hero subtitle"
                              ]
                        ]
                  ]
            , Bulma.hero { color = Bulma.Primary, size = Bulma.NoSize }
                [ Bulma.heroBody
                      [ Bulma.container
                            [ Bulma.title "Hero title"
                            , Bulma.subtitle "Hero subtitle"
                            ]
                      ]
                ]
            , Bulma.hero { color = Bulma.Info, size = Bulma.Medium }
                  [ Bulma.heroBody
                        [ Bulma.container
                              [ Bulma.title "Medium title"
                              , Bulma.subtitle "Medium subtitle"
                              ]
                        ]
                  ]
            , Bulma.hero { color = Bulma.Warning, size = Bulma.Large }
                  [ Bulma.heroBody
                        [ Bulma.container
                              [ Bulma.title "Large title"
                              , Bulma.subtitle "Large subtitle"
                              ]
                        ]
                  ]
            , Bulma.hero { color = Bulma.Danger, size = Bulma.FullHeight }
                  [ Bulma.heroBody
                        [ Bulma.container
                              [ Bulma.title "Full Height title"
                              , Bulma.subtitle "Full Height subtitle"
                              ]
                        ]
                  ]
            , Bulma.hero { color = Bulma.Primary, size = Bulma.Medium }
                [ Bulma.heroHead
                      [ Bulma.nav
                            [ Bulma.container
                                  [ Bulma.navLeft
                                        [ Bulma.navItem False [ Html.text "Bulma" ]
                                        ]
                                  , Bulma.navRight
                                      [ Bulma.navItem True [ Html.text "Home" ]
                                      , Bulma.navItem False [ Html.text "Examples" ]
                                      , Bulma.navItem False [ Html.text "Documentation" ]
                                      ]
                                  ]
                            ]
                      ]
                , Bulma.heroBody
                    [ Bulma.container
                          [ Bulma.title "Title"
                          , Bulma.subtitle "Subtitle"
                          ]
                    ]
                , Bulma.heroFoot
                    [ Bulma.tabs { tabsDefaults | centered = True }
                          [ (True, [ Html.a [] [ Html.text "Overview" ] ])
                          , (False, [ Html.a [] [ Html.text "Modifiers" ] ])
                          , (False, [ Html.a [] [ Html.text "Grid" ] ])
                          , (False, [ Html.a [] [ Html.text "Elements" ] ])
                          , (False, [ Html.a [] [ Html.text "Components" ] ])
                          , (False, [ Html.a [] [ Html.text "Layout" ] ])
                          ]
                    ]
                ]
            ]
