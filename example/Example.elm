module Main exposing (main)

import Html exposing (Html)
import Html.Attributes as Attr
import Bulma

main =
    Html.beginnerProgram
        { model = {}
        , update = update
        , view = view
        }

type alias Model = {}

type Msg = NoOp

update msg model =
    model

view model =
    Html.node "div" []
        [ Html.node "link"
              [ Attr.rel "stylesheet"
              , Attr.href "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.3.1/css/bulma.css" ] []
        , Bulma.hero { color = Bulma.Primary, size = Bulma.Large }
            [ Bulma.heroBody
                  [ Bulma.container
                        [ Bulma.title "Hero title"
                        , Bulma.subtitle "Hero subtitle"
                        ]
                  ]
            ]
        , Bulma.section
            [ Bulma.fluidContainer
                  [ Html.h1 [ Attr.class "title is-large" ] [ Html.text "hi" ]
                  ]
            ]
        , Bulma.section
            [ Bulma.container
                  [ Bulma.title "Columns"
                  , Bulma.content
                      [ Html.p [] [ Html.text "Column size can be changed" ] ]
                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.ThreeQuarters, offset = Bulma.NoColumnSize }
                            [ Bulma.notification Bulma.Info [ Html.text "ThreeQuarters" ]
                            ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Warning [ Html.text "Auto" ]
                          ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Danger [ Html.text "Auto" ]
                          ]
                      ]

                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.TwoThirds, offset = Bulma.NoColumnSize }
                            [ Bulma.notification Bulma.Info [ Html.text "TwoThirds" ]
                            ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Warning [ Html.text "Auto" ]
                          ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Danger [ Html.text "Auto" ]
                          ]
                      ]

                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.Half, offset = Bulma.NoColumnSize }
                            [ Bulma.notification Bulma.Info [ Html.text "Half" ]
                            ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Warning [ Html.text "Auto" ]
                          ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Danger [ Html.text "Auto" ]
                          ]
                      ]

                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.OneThird, offset = Bulma.NoColumnSize }
                            [ Bulma.notification Bulma.Info [ Html.text "OneThird" ]
                            ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Success [ Html.text "Auto" ]
                          ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Warning [ Html.text "Auto" ]
                          ]
                      ]

                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.OneQuarter, offset = Bulma.NoColumnSize }
                            [ Bulma.notification Bulma.Info [ Html.text "OneQuarter" ]
                            ]
                      , Bulma.column Bulma.columnDefaults
                          [ Bulma.notification Bulma.Success [ Html.text "Auto" ]
                          ]
                      ]

                  , Bulma.content
                      [ Html.p [] [ Html.text "Column offset can be changed" ] ]

                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.Half, offset = Bulma.OneQuarter }
                            [ Bulma.notification Bulma.Info [ Html.text "{ size = Half, offset = OneQuarter }" ]
                            ]
                      ]
                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.ColumnSize 4, offset = Bulma.ColumnSize 8 }
                            [ Bulma.notification Bulma.Info [ Html.text "{ size = ColumnSize 4, offset = ColumnSize 8 }" ]
                            ]
                      ]
                  , Bulma.columns Bulma.columnsDefaults
                      [ Bulma.column { size = Bulma.ColumnSize 11, offset = Bulma.ColumnSize 1 }
                            [ Bulma.notification Bulma.Info [ Html.text "{ size = ColumnSize 11, offset = ColumnSize 1 }" ]
                            ]
                      ]

                  , Bulma.columns Bulma.columnsDefaults
                         [ Bulma.column Bulma.columnDefaults
                               [ Bulma.card
                                     [ Bulma.cardHeader "I am a card"
                                     , Bulma.cardContent
                                         [ Html.text "Here is my content" ]
                                     , Bulma.cardFooter
                                         [ Html.text "Here is my footer" ]
                                     ]
                               ]
                         , Bulma.column Bulma.columnDefaults
                               [ Bulma.card
                                     [ Bulma.cardHeader "I am a card"
                                     , Bulma.cardContent
                                         [ Html.text "Here is my content" ]
                                     ]
                               ]
                         , Bulma.column { size = Bulma.OneQuarter, offset = Bulma.ColumnSize 1 }
                               [ Bulma.card
                                     [ Bulma.cardImage (Bulma.image "http://bulma.io/images/placeholders/1280x960.png")
                                     , Bulma.cardContent
                                         [ Html.text "Here is my content" ]
                                     ]
                               ]

                         ]
                  ]
            ]
        , Bulma.section
               [ Bulma.container
                   [ Bulma.level
                         [ Bulma.levelLeft
                               [ Bulma.levelItem [ Html.text "left" ]
                               , Bulma.levelItem [ Html.text "also left" ]
                               ]
                         , Bulma.levelItem
                             [ Html.div []
                                   [ Bulma.heading "Middle", Bulma.title "Yes!" ]
                             ]
                         , Bulma.levelRight
                             [ Bulma.levelItem [ Html.text "right" ]
                             ]
                         ]
                   ]
               ]
        , Bulma.section
            [ Bulma.container
                  [ Bulma.box
                        [ Bulma.media
                              [ Bulma.mediaLeft [ Html.text "left" ]
                              , Bulma.mediaContent [ Html.text "content" ]
                              , Bulma.mediaRight [ Html.text "right" ]
                              ]
                        ]
                  ]
            ]
        , Bulma.section
            [ Bulma.container
                  [ Bulma.button [] [ Html.text "Button" ]
                  ]
            ]
        , Bulma.section
            [ Bulma.container
                  [ Bulma.content
                        [ Html.p [] [ Html.text "This is a content block" ]
                        ]
                  , Bulma.tag "tag"
                  ]
            ]
        , Bulma.footer
            [ Bulma.container
                  [ Html.p [] [ Html.text "This is a footer " ]
                  ]
            ]
        ]
