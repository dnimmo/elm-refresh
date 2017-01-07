module Cat exposing (..)

import Html exposing (text)


type alias Cat =
    { name : String
    , age : Int
    }


cat : Cat
cat =
    { name = "Dante"
    , age = 5
    }


renderCat : Cat -> String
renderCat cat =
    cat.name
        ++ " is "
        ++ (toString cat.age)
        ++ " years old."


main =
    text <|
        renderCat cat
