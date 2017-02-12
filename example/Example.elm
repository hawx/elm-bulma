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
        , Bulma.hero
            [ Bulma.container
                  [ Bulma.title "Hero title"
                  , Bulma.subtitle "Hero subtitle"
                  ]
            ]
        , Bulma.section
            [ Bulma.container
                  [ Html.h1 [ Attr.class "title is-large" ] [ Html.text "hi" ]
                  ]
            ]
        , Bulma.section
            [ Bulma.container
                  [ Bulma.card
                        [ Bulma.cardHeader "I am a card"
                        , Bulma.cardContent
                            [ Html.text "Here is my content" ]
                        , Bulma.cardFooter
                            [ Html.text "Here is my footer" ]
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
