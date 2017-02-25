module Media exposing (view)

import Bulma
import Html

view =
    Bulma.section Bulma.NoSize
        [ Bulma.container
              [ Bulma.title "Media Object"
              , Bulma.subtitle "The famous media object prevalent in social media interfaces, but useful in any context"
              , Bulma.box
                    [ Bulma.media
                          [ Bulma.mediaLeft
                                [ Bulma.image Bulma.Square64 "http://bulma.io/images/placeholders/128x128.png" ]
                          , Bulma.mediaContent
                              [ Bulma.content
                                    [ Html.p []
                                          [ Html.strong [] [ Html.text "John Smith" ]
                                          , Html.text " "
                                          , Html.small [] [ Html.text "@johnsmith" ]
                                          , Html.text " "
                                          , Html.small [] [ Html.text "31m" ]
                                          , Html.br [] []
                                          , Html.text "Lorem ipsum..."
                                          ]
                                    ]
                              ]
                          , Bulma.mediaRight [ Bulma.delete ]
                          ]
                    ]
              ]
        ]
