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

                      , TileRole(..)
                      , TileOptions
                      , tileDefaults
                      , tile

                      , box
                      , ButtonOptions
                      , buttonDefaults
                      , button
                      , content
                      , delete
                      , icon
                      , ImageSize(..)
                      , image
                      , notification
                      , tag

                      , card
                      , cardHeader
                      , cardImage
                      , cardContent
                      , cardFooter
                      , cardFooterItem

                      , level
                      , levelLeft
                      , levelRight
                      , levelItem

                      , media
                      , mediaLeft
                      , mediaContent
                      , mediaRight

                      , modal

                      , nav
                      , navLeft
                      , navCenter
                      , navRight
                      , navItem

                      , TabsOptions
                      , tabsDefaults
                      , tabs

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

## Tiles

@docs TileRole
@docs TileOptions
@docs tileDefaults
@docs tile

# Elements

## Box

@docs box

## Button

@docs ButtonOptions
@docs buttonDefaults
@docs button

## Content

@docs content

## Delete

@docs delete

## Icon

@docs icon

## Image

@docs ImageSize
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
@docs cardFooterItem

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

## Nav

@docs nav
@docs navLeft
@docs navCenter
@docs navRight
@docs navItem

## Tabs

@docs TabsOptions
@docs tabsDefaults
@docs tabs

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


{-|

-}
type TileRole = NoRole
              | Parent
              | Ancestor
              | Child

{-|

-}
type alias TileOptions =
    { size : ColumnSize
    , role : TileRole
    , vertical : Bool
    , class : String
    }

{-|

-}
tileDefaults : TileOptions
tileDefaults =
    { size = NoColumnSize
    , vertical = False
    , role = NoRole
    , class = ""
    }


tileOptionsClass : TileOptions -> Html.Attribute msg
tileOptionsClass { size, vertical, role, class } =
    Attr.classList
        [ ( columnSizeToClass size, True )
        , ( "is-vertical", vertical )
        , ( "is-ancestor", role == Ancestor )
        , ( "is-parent", role == Parent )
        , ( "is-child", role == Child )
        , ( class, class /= "" )
        ]

{-|

-}
tile : TileOptions -> List (Html msg) -> Html msg
tile options =
    Html.div [ Attr.class "tile", tileOptionsClass options ]




-- Elements

{-|

-}
box : List (Html msg) -> Html msg
box =
    Html.div [ Attr.class "box" ]

{-|

-}
type alias ButtonOptions =
    { color : Color
    , size : Size
    , outlined : Bool
    , inverted : Bool
    , loading : Bool
    , disabled : Bool
    }

{-|

-}
buttonDefaults : ButtonOptions
buttonDefaults =
    { color = NoColor
    , size = NoSize
    , outlined = False
    , inverted = False
    , loading = False
    , disabled = False
    }

{-|

-}
button : ButtonOptions -> List (Html msg) -> Html msg
button options =
    Html.a [ Attr.class "button"
           , Attr.class (colorToClass options.color)
           , Attr.class (sizeToClass options.size)
           , Attr.classList
               [ ("is-outlined", options.outlined)
               , ("is-inverted", options.inverted)
               , ("is-loading", options.loading)
               , ("is-disabled", options.disabled)
               ]
           ]

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
type ImageSize = NoImageSize
               | Square16
               | Square24
               | Square32
               | Square48
               | Square64
               | Square96
               | Square128
               | IsSquare
               | IsOneByOne
               | IsFourByThree
               | IsThreeByTwo
               | IsSixteenByNine
               | IsTwoByOne

imageSizeToClass : ImageSize -> String
imageSizeToClass size =
    case size of
        NoImageSize -> ""
        Square16 -> "is-16x16"
        Square24 -> "is-24x24"
        Square32 -> "is-32x32"
        Square48 -> "is-48x48"
        Square64 -> "is-64x64"
        Square96 -> "is-96x96"
        Square128 -> "is-128x128"
        IsSquare -> "is-square"
        IsOneByOne -> "is-1by1"
        IsFourByThree -> "is-4by3"
        IsThreeByTwo -> "is-3by2"
        IsSixteenByNine -> "is-16by9"
        IsTwoByOne -> "is-2by1"

{-|

-}
image : ImageSize -> String -> Html msg
image size src =
    Html.figure [ Attr.class "image", Attr.class (imageSizeToClass size) ]
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
cardFooterItem : List (Html.Attribute msg) -> List (Html msg) -> Html msg
cardFooterItem attrs =
    Html.a (Attr.class "card-footer-item" :: attrs)

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

{-|

-}
nav : List (Html msg) -> Html msg
nav =
    Html.nav [ Attr.class "nav" ]

{-|

-}
navLeft : List (Html msg) -> Html msg
navLeft =
    Html.div [ Attr.class "nav-left" ]

{-|

-}
navCenter : List (Html msg) -> Html msg
navCenter =
    Html.div [ Attr.class "nav-center" ]

{-|

-}
navRight : List (Html msg) -> Html msg
navRight =
    Html.div [ Attr.class "nav-right" ]

{-|

-}
navItem : Bool -> List (Html msg) -> Html msg
navItem active =
    Html.a [ Attr.class "nav-item", Attr.classList [("is-active", active)] ]

{-|

-}
type alias TabsOptions =
    { centered : Bool
    , right : Bool
    , size : Size
    , boxed : Bool
    , toggle : Bool
    , fullwidth : Bool
    }

{-|

-}
tabsDefaults : TabsOptions
tabsDefaults =
    { centered = False
    , right = False
    , size = NoSize
    , boxed = False
    , toggle = False
    , fullwidth = False
    }

{-|

-}
tabs : TabsOptions -> List (Bool, List (Html msg)) -> Html msg
tabs options items =
    Html.div [ Attr.class "tabs"
             , Attr.class (sizeToClass options.size)
             , Attr.classList
                 [ ("is-centered", options.centered)
                 , ("is-right", options.right)
                 , ("is-boxed", options.boxed)
                 , ("is-toggle", options.toggle)
                 , ("is-fullwidth", options.fullwidth)
                 ]
             ]
        [ Html.ul [] <|
              List.map (\(active, contents) ->
                            Html.li [ Attr.classList [("is-active", active)] ] contents
                       ) items
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
section : Size -> List (Html msg) -> Html msg
section size =
    Html.section [ Attr.class "section", Attr.class (sizeToClass size) ]

{-|

A simple responsive footer which can include anything: lists, headings, columns, icons, buttons...

-}
footer : List (Html msg) -> Html msg
footer =
    Html.footer [ Attr.class "footer" ]
