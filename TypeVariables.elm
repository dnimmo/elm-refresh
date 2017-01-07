module TypeVariables exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Fruit =
    { name : String }


printThing : something -> Html msg
printThing thing =
    ul [] [ text <| toString thing ]


numbers =
    [ 1, 2, 3, 4, 5 ]


fruits =
    [ { name = "Orange" }, { name = "Banana" } ]


main : Html msg
main =
    ul [] (List.map printThing fruits)
