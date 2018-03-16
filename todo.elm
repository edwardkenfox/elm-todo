import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)

main =
  Html.beginnerProgram { model = model, view = view, update = update }

type alias Todo = { input : String, todos : List String }

model : Todo
model = {input = "", todos = []}

type Msg = AddTodo | NewTodo String

update : Msg -> Todo -> Todo
update msg model =
  case msg of
    AddTodo -> { model | input = "", todos = model.todos ++ [model.input] }
    NewTodo s -> { model | input = s}

view : Todo -> Html Msg
view model =
  div []
    ([ input [ type_ "text", placeholder "TODO", onInput NewTodo ] []
    , button [ onClick AddTodo] [ text "Add TODO" ]
    ] ++ List.map (\s -> div [] [text s]) model.todos)
