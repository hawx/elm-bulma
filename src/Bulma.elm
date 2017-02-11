module Bulma exposing ( heading
                      , title
                      , subtitle

                      , card
                      , cardHeader
                      , cardContent
                      , cardFooter

                      , level
                      , levelLeft
                      , levelRight
                      , levelItem

                      , container
                      , hero
                      , section
                      , footer
                      )

{-|

Docs


# Text

@docs heading
@docs title
@docs subtitle


# Components

## Card

@docs card
@docs cardHeader
@docs cardContent
@docs cardFooter

## Level

@docs level
@docs levelLeft
@docs levelRight
@docs levelItem


# Layout

@docs container
@docs hero
@docs section
@docs footer

-}

import Html exposing (Html)
import Html.Attributes as Attr

-- Text

{-|

A heading

-}
heading : String -> Html msg
heading text =
    Html.p [ Attr.class "header" ] [ Html.text text ]

{-|

A title

-}
title : String -> Html msg
title text =
    Html.h1 [ Attr.class "title" ] [ Html.text text ]

{-|

A subtitle

-}
subtitle : String -> Html msg
subtitle text =
    Html.h2 [ Attr.class "subtitle" ] [ Html.text text ]


-- Components

{-|

An all-around flexible and composable component

-}
card : List (Html msg) -> Html msg
card =
    Html.div [ Attr.class "card" ]


{-|

-}
cardHeader : String -> Html msg
cardHeader title =
    Html.header [ Attr.class "card-header" ]
        [ Html.p [ Attr.class "card-header-title" ]
              [ Html.text title ]
        ]

{-|

-}
cardContent : List (Html msg) -> Html msg
cardContent =
    Html.div [ Attr.class "card-content" ]

{-|

-}
cardFooter : List (Html msg) -> Html msg
cardFooter =
    Html.div [ Attr.class "card-footer" ]


{-|

-}
level : List (Html msg) -> Html msg
level =
    Html.div [ Attr.class "level" ]

{-|

-}
levelLeft : List (Html msg) -> Html msg
levelLeft =
    Html.div [ Attr.class "level-left" ]

{-|

-}
levelRight : List (Html msg) -> Html msg
levelRight =
    Html.div [ Attr.class "level-right" ]

{-|

-}
levelItem : List (Html msg) -> Html msg
levelItem =
    Html.div [ Attr.class "level-item" ]

-- Layout

{-|

A simple container to center your content horizontally

-}
container : List (Html msg) -> Html msg
container =
    Html.div [ Attr.class "container" ]

{-|

An imposing hero banner to showcase something

-}
hero : List (Html msg) -> Html msg
hero body =
    Html.section [ Attr.class "hero" ]
        [ Html.div [ Attr.class "hero-body" ] body ]

{-|

A simple container to divide your page into sections

-}
section : List (Html msg) -> Html msg
section =
    Html.section [ Attr.class "section" ]

{-|

A simple responsive footer which can include anything: lists, headings, columns, icons, buttons...

-}
footer : List (Html msg) -> Html msg
footer =
    Html.footer [ Attr.class "footer" ]
