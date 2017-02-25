module Columns exposing (view)

import Html
import Bulma

view =
    Bulma.section Bulma.NoSize
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
              ]
        ]
