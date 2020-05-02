import Html exposing (..)
import Debug exposing (toString)
import Browser
--import Html.Attributes exposing (..)
--import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , view = \model -> { title = "My Elm Document", body = [view model] }
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    {}


initialModel : Model
initialModel =
    {}


init : flags -> ( Model, Cmd Msg )
init flags =
    ( initialModel, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ text "Hello, world!"
        , text (toString model)
        ]
