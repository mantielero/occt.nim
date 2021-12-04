##  Created by: Kirill GAVRILOV
##  Copyright (c) 2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Media_PlayerContext"
type
  AIS_MediaPlayer* {.importcpp: "AIS_MediaPlayer", header: "AIS_MediaPlayer.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Empty constructor.
                                                          ## ! Accept only display mode 0.
                                                          ## ! Update frame size.


proc newAIS_MediaPlayer*(): AIS_MediaPlayer {.cdecl, constructor,
    importcpp: "AIS_MediaPlayer(@)", header: "AIS_MediaPlayer.hxx".}
proc destroyAIS_MediaPlayer*(this: var AIS_MediaPlayer) {.cdecl,
    importcpp: "#.~AIS_MediaPlayer()", header: "AIS_MediaPlayer.hxx".}
proc setCallback*(this: var AIS_MediaPlayer; theCallbackFunction: CallbackOnUpdateT;
                 theCallbackUserPtr: pointer) {.cdecl, importcpp: "SetCallback",
    header: "AIS_MediaPlayer.hxx".}
proc openInput*(this: var AIS_MediaPlayer; thePath: TCollectionAsciiString;
               theToWait: bool) {.cdecl, importcpp: "OpenInput", header: "AIS_MediaPlayer.hxx".}
proc presentFrame*(this: var AIS_MediaPlayer; theLeftCorner: Graphic3dVec2i;
                  theMaxSize: Graphic3dVec2i): bool {.cdecl,
    importcpp: "PresentFrame", header: "AIS_MediaPlayer.hxx".}
proc playerContext*(this: AIS_MediaPlayer): Handle[MediaPlayerContext] {.
    noSideEffect, cdecl, importcpp: "PlayerContext", header: "AIS_MediaPlayer.hxx".}
proc playPause*(this: var AIS_MediaPlayer) {.cdecl, importcpp: "PlayPause",
    header: "AIS_MediaPlayer.hxx".}
proc setClosePlayer*(this: var AIS_MediaPlayer) {.cdecl, importcpp: "SetClosePlayer",
    header: "AIS_MediaPlayer.hxx".}
proc duration*(this: AIS_MediaPlayer): cdouble {.noSideEffect, cdecl,
    importcpp: "Duration", header: "AIS_MediaPlayer.hxx".}