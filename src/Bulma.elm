module Bulma exposing ( heading
                      , title
                      , subtitle

                      , box
                      , button
                      , content
                      , delete
                      , icon
                      , notification
                      , tag

                      , card
                      , cardHeader
                      , cardContent
                      , cardFooter

                      , level
                      , levelLeft
                      , levelRight
                      , levelItem

                      , media
                      , mediaLeft
                      , mediaContent
                      , mediaRight

                      , modal

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


# Elements

## Box

@docs box

## Button

@docs button

## Content

@docs content

## Delete

@docs delete

## Icon

@docs icon

## Notification

@docs notification

## Tag

@docs tag

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

## Media Object

@docs media
@docs mediaLeft
@docs mediaContent
@docs mediaRight

## Modal

@docs modal

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



-- Elements

{-|

-}
box : List (Html msg) -> Html msg
box =
    Html.div [ Attr.class "box" ]

{-|

-}
button : List (Html.Attribute msg) -> List (Html msg) -> Html msg
button attrs =
    Html.a (Attr.class "button" :: attrs)

{-|

-}
content : List (Html msg) -> Html msg
content =
    Html.div [ Attr.class "content" ]

{-|

-}
delete : Html msg
delete =
    Html.a [ Attr.class "delete" ] []

{-|

-}
icon : String -> Html msg
icon name =
    Html.span [ Attr.class "icon" ]
        [ Html.i [ Attr.class ("fa fa-" ++ name) ] []
        ]

{-|

-}
notification : List (Html msg) -> Html msg
notification =
    Html.div [ Attr.class "notification" ]

{-|

-}
tag : String -> Html msg
tag text =
    Html.span [ Attr.class "tag" ] [ Html.text text ]

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

{-|

-}
media : List (Html msg) -> Html msg
media =
    Html.article [ Attr.class "media" ]

{-|

-}
mediaLeft : List (Html msg) -> Html msg
mediaLeft =
    Html.figure [ Attr.class "media-left" ]

{-|

-}
mediaContent : List (Html msg) -> Html msg
mediaContent =
    Html.div [ Attr.class "media-content" ]

{-|

-}
mediaRight : List (Html msg) -> Html msg
mediaRight =
    Html.div [ Attr.class "media-right" ]

{-|

-}
modal : List (Html msg) -> Html msg
modal content =
    Html.div [ Attr.class "modal is-active" ]
        [ Html.div [ Attr.class "modal-background" ] []
        , Html.div [ Attr.class "modal-content" ] content
        , Html.button [ Attr.class "modal-close" ] []
        ]


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
