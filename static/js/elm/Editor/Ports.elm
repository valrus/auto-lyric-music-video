port module Editor.Ports exposing (..)

import Json.Decode
import Lyrics.Model exposing (LyricBook)

-- From wavesurfer docs:
-- id - string - random - The id of the region.
-- start - float - 0 - The start position of the region (in seconds).
-- end - float - 0 - The end position of the region (in seconds).
-- loop - boolean - false - Whether to loop the region when played back.
-- drag - boolean - true - Allow/dissallow dragging the region.
-- resize - boolean - true - Allow/dissallow resizing the region.
-- color - string - "rgba(0, 0, 0, 0.1)" - HTML color code.


type alias WaveformRegion =
    { id : String
    , start : Float
    }


port addedRegion : (Json.Decode.Value -> msg) -> Sub msg


port jsEditorInitWaveform : { containerId : String, songUrl : String } -> Cmd msg


port jsEditorCreateRegions : List WaveformRegion -> Cmd msg


port jsEditorSaveChanges : LyricBook -> Cmd msg
