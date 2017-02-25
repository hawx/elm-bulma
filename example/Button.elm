module Button exposing (view)

import Bulma exposing (buttonDefaults)
import Html

view =
    Bulma.section Bulma.NoSize
        [ Bulma.container
              [ Bulma.title "Button"
              , Bulma.subtitle "The classic button, in different colors, sizes, and states"
              , Bulma.button buttonDefaults [ Html.text "Button" ]
              , Bulma.button { buttonDefaults | color = Bulma.Primary } [ Html.text "Primary" ]
              ]
        ]
