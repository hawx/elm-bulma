module Main exposing (main)

import Html exposing (Html)
import Html.Attributes as Attr
import Bulma exposing (tileDefaults, tabsDefaults)

import Hero
import Columns
import Tiles
import Card
import Level
import Media
import Button

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

        , Hero.view
        , Columns.view
        , Tiles.view
        , Card.view
        , Level.view
        , Media.view
        , Button.view
        , Bulma.section Bulma.NoSize
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
