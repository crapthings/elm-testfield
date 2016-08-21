import Html exposing (Html, div, text)

import Html.Events exposing (onClick)

import Html.App as Html

main = Html.beginnerProgram { model = model, view = view, update = update }

type alias Model = String

model : Model
model = "hello world"

type Msg = Test

update : Msg -> Model -> Model
update msg model =
    case msg of
        Test ->
            model ++ " clicked!"

view : Model -> Html Msg
view model = div [ onClick Test ] [ text (toString model) ]
