module Render exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Ship =
    { name : String
    , cost : Int
    }


ships =
    [ { name = "X-wing", cost = 14999 }
    , { name = "Millenium Falcon", cost = 100000 }
    , { name = "Death Star", cost = 100000000000 }
    ]


renderShip : Ship -> Html msg
renderShip ship =
    li []
        [ text ship.name
        , text ", "
        , b []
            [ text <| toString ship.cost ]
        ]


renderShips : List Ship -> Html msg
renderShips ships =
    div
        [ style
            [ ( "font-family", "Arial" )
            , ( "padding", "1rem" )
            ]
        ]
        [ h1 [] [ text "Ships" ]
        , ul [] (List.map renderShip ships)
        ]


main =
    renderShips ships
