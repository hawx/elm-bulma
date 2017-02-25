module Level exposing (view)

import Bulma
import Html

view =
    Bulma.section Bulma.NoSize
        [ Bulma.container
              [ Bulma.title "Level"
              , Bulma.subtitle "A multi-purpose horizontal level, which can contain almost any other element"
              , Bulma.level
                    [ Bulma.levelLeft
                               [ Bulma.levelItem [ Html.text "left" ]
                               , Bulma.levelItem [ Html.text "also left" ]
                               ]
                    , Bulma.levelItem
                        [ Html.div []
                              [ Html.text "Middle" ]
                        ]
                    , Bulma.levelRight
                        [ Bulma.levelItem [ Html.text "right" ]
                        ]
                    ]
              ]
        ]
