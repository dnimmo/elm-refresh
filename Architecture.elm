module Architecture exposing (..)

import Html exposing (..)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (..)


type alias Model =
    { showFace : Bool
    }


model =
    { showFace = False }


type Msg
    = ShowFace


update : Msg -> Model -> Model
update msg model_ =
    case msg of
        ShowFace ->
            if model_.showFace then
                { model_
                    | showFace = False
                }
            else
                { model_
                    | showFace = True
                }


view : Model -> Html Msg
view model_ =
    div []
        [ h1 [] [ text "Face generator" ]
        , button [ onClick ShowFace ]
            [ if model_.showFace then
                text "Take it away!"
              else
                text "Face me!"
            ]
        , if model_.showFace then
            text "=^__^="
          else
            text ""
        ]


main : Program Never
main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }
