module Lists exposing (..)

import Html exposing (text)
import List exposing (map)


type alias Person =
    { name : String
    , age : Int
    }


people =
    [ { name = "Legolas", age = 2931 }
    , { name = "Gimli", age = 139 }
    ]


names : List Person -> List String
names people =
    List.map (\person -> person.name) people


findPerson : String -> List Person -> Maybe Person
findPerson name people =
    List.foldl
        (\person accumulator ->
            case accumulator of
                Just _ ->
                    accumulator

                Nothing ->
                    if person.name == name then
                        Just person
                    else
                        Nothing
        )
        Nothing
        people


main =
    text <|
        toString <|
            findPerson "Legolas" people
