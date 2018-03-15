import Html exposing (..)
import Html.Events exposing (onClick)

main =
  Html.beginngerProgram { model = model, view = view, update = update }

type alias Todo = String
model : Todo
todo = ""

type Msg = AddTodo String

update : Msg -> Todo -> Todo


view model =
  div []
    [ input [ type_ "text", placeholder "TODO" ]]
    [ button [ onClick AddTodo ] [ text "Add TODO" ]
