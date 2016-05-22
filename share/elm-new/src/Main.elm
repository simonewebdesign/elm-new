import Html exposing (..)
import Html.App as Html
--import Html.Attributes exposing (..)
--import Html.Events exposing (onClick)


main : Program Never
main =
  Html.beginnerProgram
    { model = initialModel
    , view = view
    , update = update
    }


-- MODEL

type alias Model =
  {
  }


initialModel : Model
initialModel =
  {
  }


-- UPDATE

type Msg =
  NoOp


update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp ->
      model


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ text "Hello, world!"
    , text (toString model)
    ]
