import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
--import Html.Events exposing (..)
import Url


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = \model -> { title = "My Elm Document", body = [view model] }
        , update = update
        , subscriptions = (\_ -> Sub.none)
        , onUrlRequest = LinkClick
        , onUrlChange = UrlChange
        }



-- MODEL


type alias Model =
    { history : List Url.Url
    , navKey : Nav.Key
    }


init : flags -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    let
        model =
            { navKey = key
            , history = [ url ]
            }
    in
    ( model, Cmd.none )



-- UPDATE


type Msg
    = LinkClick Browser.UrlRequest
    | UrlChange Url.Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LinkClick urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.navKey (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChange url ->
            ( { model | history = url :: model.history }
            , Cmd.none
            )



-- VIEW


view : Model -> Html msg
view model =
    div []
        [ h1 [] [ text "Pages" ]
        , ul [] (List.map viewLink [ "bears", "cats", "dogs", "elephants", "fish" ])
        , h1 [] [ text "History" ]
        , ul [] (List.map viewLocation model.history)
        ]


viewLink : String -> Html msg
viewLink name =
    li [] [ a [ href ("#" ++ name) ] [ text name ] ]


viewLocation : Url.Url -> Html msg
viewLocation location =
    let
        fragment = Maybe.withDefault "index (no page selected)" location.fragment
    in
    li [] [ text fragment ]
