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

import
  AIS_InteractiveObject, ../Graphic3d/Graphic3d_MediaTextureSet

discard "forward decl of Media_PlayerContext"
type
  AIS_MediaPlayer* {.importcpp: "AIS_MediaPlayer", header: "AIS_MediaPlayer.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Empty constructor.
                                                          ## ! Accept only display mode 0.
                                                          ## ! Update frame size.

  AIS_MediaPlayerbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_MediaPlayer::get_type_name(@)",
                              header: "AIS_MediaPlayer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_MediaPlayer::get_type_descriptor(@)",
    header: "AIS_MediaPlayer.hxx".}
proc DynamicType*(this: AIS_MediaPlayer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_MediaPlayer.hxx".}
proc constructAIS_MediaPlayer*(): AIS_MediaPlayer {.constructor,
    importcpp: "AIS_MediaPlayer(@)", header: "AIS_MediaPlayer.hxx".}
proc destroyAIS_MediaPlayer*(this: var AIS_MediaPlayer) {.
    importcpp: "#.~AIS_MediaPlayer()", header: "AIS_MediaPlayer.hxx".}
proc SetCallback*(this: var AIS_MediaPlayer;
                 theCallbackFunction: CallbackOnUpdate_t;
                 theCallbackUserPtr: pointer) {.importcpp: "SetCallback",
    header: "AIS_MediaPlayer.hxx".}
proc OpenInput*(this: var AIS_MediaPlayer; thePath: TCollection_AsciiString;
               theToWait: Standard_Boolean) {.importcpp: "OpenInput",
    header: "AIS_MediaPlayer.hxx".}
proc PresentFrame*(this: var AIS_MediaPlayer; theLeftCorner: Graphic3d_Vec2i;
                  theMaxSize: Graphic3d_Vec2i): bool {.importcpp: "PresentFrame",
    header: "AIS_MediaPlayer.hxx".}
proc PlayerContext*(this: AIS_MediaPlayer): handle[Media_PlayerContext] {.
    noSideEffect, importcpp: "PlayerContext", header: "AIS_MediaPlayer.hxx".}
proc PlayPause*(this: var AIS_MediaPlayer) {.importcpp: "PlayPause",
    header: "AIS_MediaPlayer.hxx".}
proc SetClosePlayer*(this: var AIS_MediaPlayer) {.importcpp: "SetClosePlayer",
    header: "AIS_MediaPlayer.hxx".}
proc Duration*(this: AIS_MediaPlayer): cdouble {.noSideEffect, importcpp: "Duration",
    header: "AIS_MediaPlayer.hxx".}