module Bulma exposing ( Color(..)
                      , Size(..)

                      , heading
                      , title
                      , subtitle

                      , ColumnsOptions
                      , columnsDefaults
                      , columns
                      , ColumnOptions
                      , ColumnSize(..)
                      , columnDefaults
                      , column

                      , box
                      , button
                      , content
                      , delete
                      , icon
                      , image
                      , notification
                      , tag

                      , card
                      , cardHeader
                      , cardImage
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
                      , fluidContainer
                      , hero
                      , HeroOptions
                      , heroDefaults
                      , heroHead
                      , heroBody
                      , heroFoot
                      , section
                      , footer
                      )

{-|

Docs


# Modifiers

@docs Color
@docs Size

# Text

@docs heading
@docs title
@docs subtitle


# Grid

## Columns

@docs ColumnsOptions
@docs columnsDefaults
@docs columns
@docs ColumnOptions
@docs ColumnSize
@docs columnDefaults
@docs column


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

## Image

@docs image

## Notification

@docs notification

## Tag

@docs tag

# Components

## Card

@docs card
@docs cardHeader
@docs cardImage
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
@docs fluidContainer

@docs hero
@docs HeroOptions
@docs heroDefaults
@docs heroHead
@docs heroBody
@docs heroFoot

@docs section
@docs footer

-}

import Html exposing (Html)
import Html.Attributes as Attr

{-|

-}
type Color = NoColor
           | Primary
           | Info
           | Success
           | Warning
           | Danger

colorToClass : Color -> String
colorToClass color =
    case color of
        NoColor -> ""
        Primary -> "is-primary"
        Info -> "is-info"
        Success -> "is-success"
        Warning -> "is-warning"
        Danger -> "is-danger"

{-|

Modifies the size of something. Some of the sizes may not have an affect on
certain elements.

-}
type Size = NoSize
          | Small
          | Medium
          | Large
          | FullHeight

sizeToClass : Size -> String
sizeToClass size =
    case size of
        NoSize -> ""
        Small -> "is-small"
        Medium -> "is-medium"
        Large -> "is-large"
        FullHeight -> "is-fullheight"


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


-- Grid

{-|

-}
type alias ColumnsOptions =
    { gapless : Bool
    , multiline : Bool
    , mobile : Bool
    , desktop : Bool
    }

{-|

-}
columnsDefaults : ColumnsOptions
columnsDefaults =
    { gapless = False
    , multiline = False
    , mobile = False
    , desktop = False
    }

{-|

-}
columns : ColumnsOptions -> List (Html msg) -> Html msg
columns options =
    Html.div [ Attr.class "columns"
             , Attr.classList [ ( "is-gapless", options.gapless )
                              , ( "is-multiline", options.multiline )
                              , ( "is-mobile", options.mobile )
                              , ( "is-desktop", options.desktop )
                              ]
             ]


{-|

-}
type ColumnSize = NoColumnSize
                | ThreeQuarters
                | TwoThirds
                | Half
                | OneThird
                | OneQuarter
                | ColumnSize Int

columnSizeToClass : ColumnSize -> String
columnSizeToClass size =
    case size of
        NoColumnSize -> ""
        ThreeQuarters -> "is-three-quarters"
        TwoThirds -> "is-two-thirds"
        Half -> "is-half"
        OneThird -> "is-one-third"
        OneQuarter -> "is-one-quarter"
        ColumnSize cols -> "is-" ++ (toString cols)

columnOffsetToClass : ColumnSize -> String
columnOffsetToClass size =
    case size of
        NoColumnSize -> ""
        ThreeQuarters -> "is-offset-three-quarters"
        TwoThirds -> "is-offset-two-thirds"
        Half -> "is-offset-half"
        OneThird -> "is-offset-one-third"
        OneQuarter -> "is-offset-one-quarter"
        ColumnSize cols -> "is-offset-" ++ (toString cols)

{-|

-}
type alias ColumnOptions =
    { size : ColumnSize
    , offset : ColumnSize
    }

{-|

-}
columnDefaults : ColumnOptions
columnDefaults =
    { size = NoColumnSize
    , offset = NoColumnSize
    }

{-|

-}
column : ColumnOptions -> List (Html msg) -> Html msg
column options =
    Html.div [ Attr.class "column"
             , Attr.class (columnSizeToClass options.size)
             , Attr.class (columnOffsetToClass options.offset)
             ]



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
image : String -> Html msg
image src =
    Html.figure [ Attr.class "image" ]
        [ Html.img [ Attr.src src ] [] ]

{-|

-}
notification : Color -> List (Html msg) -> Html msg
notification color =
    Html.div [ Attr.class "notification", Attr.class (colorToClass color) ]

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
cardImage : Html msg -> Html msg
cardImage img =
    Html.div [ Attr.class "card-image" ] [ img ]

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

-}
fluidContainer : List (Html msg) -> Html msg
fluidContainer =
    Html.div [ Attr.class "container is-fluid" ]


{-|

-}
type alias HeroOptions =
    { color : Color
    , size : Size
    }

{-|

-}
heroDefaults : HeroOptions
heroDefaults =
    { color = NoColor
    , size = NoSize
    }

{-|

An imposing hero banner to showcase something

-}
hero : HeroOptions -> List (Html msg) -> Html msg
hero options =
    Html.section [ Attr.class "hero"
                 , Attr.class (colorToClass options.color)
                 , Attr.class (sizeToClass options.size)
                 ]

{-|

-}
heroHead : List (Html msg) -> Html msg
heroHead =
    Html.div [ Attr.class "hero-head" ]

{-|

-}
heroBody : List (Html msg) -> Html msg
heroBody =
    Html.div [ Attr.class "hero-body" ]

{-|

-}
heroFoot : List (Html msg) -> Html msg
heroFoot =
    Html.div [ Attr.class "hero-foot" ]

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
