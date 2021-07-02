##  Created on: 1992-04-06
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

# when defined windows:
#   discard
var MAXVIEW* {.importcpp: "MAXVIEW", header: "Draw_Viewer.hxx".}: StandardInteger

discard "forward decl of Draw_View"
type
  DrawViewer* {.importcpp: "Draw_Viewer", header: "Draw_Viewer.hxx", bycopy.} = object


proc constructDrawViewer*(): DrawViewer {.constructor, importcpp: "Draw_Viewer(@)",
                                       header: "Draw_Viewer.hxx".}
proc defineColor*(this: var DrawViewer; i: StandardInteger; colname: cstring): StandardBoolean {.
    importcpp: "DefineColor", header: "Draw_Viewer.hxx".}
proc makeView*(this: var DrawViewer; id: StandardInteger; typ: cstring;
              x: StandardInteger; y: StandardInteger; w: StandardInteger;
              h: StandardInteger) {.importcpp: "MakeView", header: "Draw_Viewer.hxx".}
when defined windows:
  proc makeView*(this: var DrawViewer; id: StandardInteger; typ: cstring;
                x: StandardInteger; y: StandardInteger; w: StandardInteger;
                h: StandardInteger; win: Hwnd;
                useBuffer: StandardBoolean = standardFalse) {.importcpp: "MakeView",
      header: "Draw_Viewer.hxx".}
proc makeView*(this: var DrawViewer; id: StandardInteger; typ: cstring; window: cstring) {.
    importcpp: "MakeView", header: "Draw_Viewer.hxx".}
proc setTitle*(this: var DrawViewer; id: StandardInteger; name: cstring) {.
    importcpp: "SetTitle", header: "Draw_Viewer.hxx".}
proc resetView*(this: var DrawViewer; id: StandardInteger) {.importcpp: "ResetView",
    header: "Draw_Viewer.hxx".}
proc setZoom*(this: var DrawViewer; id: StandardInteger; z: StandardReal) {.
    importcpp: "SetZoom", header: "Draw_Viewer.hxx".}
proc rotateView*(this: var DrawViewer; id: StandardInteger; a3: GpDir2d;
                a4: StandardReal) {.importcpp: "RotateView",
                                  header: "Draw_Viewer.hxx".}
proc rotateView*(this: var DrawViewer; id: StandardInteger; a3: GpPnt; a4: GpDir;
                a5: StandardReal) {.importcpp: "RotateView",
                                  header: "Draw_Viewer.hxx".}
proc setFocal*(this: var DrawViewer; id: StandardInteger; focalDist: StandardReal) {.
    importcpp: "SetFocal", header: "Draw_Viewer.hxx".}
proc getType*(this: DrawViewer; id: StandardInteger): cstring {.noSideEffect,
    importcpp: "GetType", header: "Draw_Viewer.hxx".}
proc zoom*(this: DrawViewer; id: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Zoom", header: "Draw_Viewer.hxx".}
proc focal*(this: DrawViewer; id: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Focal", header: "Draw_Viewer.hxx".}
proc setTrsf*(this: var DrawViewer; id: StandardInteger; t: var GpTrsf) {.
    importcpp: "SetTrsf", header: "Draw_Viewer.hxx".}
proc getTrsf*(this: DrawViewer; id: StandardInteger; t: var GpTrsf) {.noSideEffect,
    importcpp: "GetTrsf", header: "Draw_Viewer.hxx".}
proc getPosSize*(this: var DrawViewer; id: StandardInteger; x: var StandardInteger;
                y: var StandardInteger; w: var StandardInteger; h: var StandardInteger) {.
    importcpp: "GetPosSize", header: "Draw_Viewer.hxx".}
proc is3D*(this: DrawViewer; id: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "Is3D", header: "Draw_Viewer.hxx".}
proc getFrame*(this: var DrawViewer; id: StandardInteger; xmin: var StandardInteger;
              ymin: var StandardInteger; xmax: var StandardInteger;
              ymax: var StandardInteger) {.importcpp: "GetFrame",
                                        header: "Draw_Viewer.hxx".}
proc fitView*(this: var DrawViewer; id: StandardInteger; frame: StandardInteger) {.
    importcpp: "FitView", header: "Draw_Viewer.hxx".}
proc panView*(this: var DrawViewer; id: StandardInteger; dx: StandardInteger;
             dy: StandardInteger) {.importcpp: "PanView", header: "Draw_Viewer.hxx".}
proc setPan*(this: var DrawViewer; id: StandardInteger; dx: StandardInteger;
            dy: StandardInteger) {.importcpp: "SetPan", header: "Draw_Viewer.hxx".}
proc getPan*(this: var DrawViewer; id: StandardInteger; dx: var StandardInteger;
            dy: var StandardInteger) {.importcpp: "GetPan", header: "Draw_Viewer.hxx".}
proc hasView*(this: DrawViewer; id: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "HasView", header: "Draw_Viewer.hxx".}
proc displayView*(this: DrawViewer; id: StandardInteger) {.noSideEffect,
    importcpp: "DisplayView", header: "Draw_Viewer.hxx".}
proc hideView*(this: DrawViewer; id: StandardInteger) {.noSideEffect,
    importcpp: "HideView", header: "Draw_Viewer.hxx".}
proc clearView*(this: DrawViewer; id: StandardInteger) {.noSideEffect,
    importcpp: "ClearView", header: "Draw_Viewer.hxx".}
proc removeView*(this: var DrawViewer; id: StandardInteger) {.importcpp: "RemoveView",
    header: "Draw_Viewer.hxx".}
proc repaintView*(this: DrawViewer; id: StandardInteger) {.noSideEffect,
    importcpp: "RepaintView", header: "Draw_Viewer.hxx".}
when defined windows:
  proc resizeView*(this: DrawViewer; id: StandardInteger) {.noSideEffect,
      importcpp: "ResizeView", header: "Draw_Viewer.hxx".}
when defined windows:
  proc updateView*(this: DrawViewer; id: StandardInteger;
                  forced: StandardBoolean = standardFalse) {.noSideEffect,
      importcpp: "UpdateView", header: "Draw_Viewer.hxx".}
proc configView*(this: DrawViewer; id: StandardInteger) {.noSideEffect,
    importcpp: "ConfigView", header: "Draw_Viewer.hxx".}
proc postScriptView*(this: DrawViewer; id: StandardInteger; vXmin: StandardInteger;
                    vYmin: StandardInteger; vXmax: StandardInteger;
                    vYmax: StandardInteger; pXmin: StandardInteger;
                    pYmin: StandardInteger; pXmax: StandardInteger;
                    pYmax: StandardInteger; sortie: var Ostream) {.noSideEffect,
    importcpp: "PostScriptView", header: "Draw_Viewer.hxx".}
proc postColor*(this: var DrawViewer; icol: StandardInteger; width: StandardInteger;
               gray: StandardReal) {.importcpp: "PostColor",
                                   header: "Draw_Viewer.hxx".}
proc saveView*(this: var DrawViewer; id: StandardInteger; filename: cstring): StandardBoolean {.
    importcpp: "SaveView", header: "Draw_Viewer.hxx".}
proc repaintAll*(this: DrawViewer) {.noSideEffect, importcpp: "RepaintAll",
                                  header: "Draw_Viewer.hxx".}
proc repaint2D*(this: DrawViewer) {.noSideEffect, importcpp: "Repaint2D",
                                 header: "Draw_Viewer.hxx".}
proc repaint3D*(this: DrawViewer) {.noSideEffect, importcpp: "Repaint3D",
                                 header: "Draw_Viewer.hxx".}
proc deleteView*(this: var DrawViewer; id: StandardInteger) {.importcpp: "DeleteView",
    header: "Draw_Viewer.hxx".}
proc clear*(this: var DrawViewer) {.importcpp: "Clear", header: "Draw_Viewer.hxx".}
proc clear2D*(this: var DrawViewer) {.importcpp: "Clear2D", header: "Draw_Viewer.hxx".}
proc clear3D*(this: var DrawViewer) {.importcpp: "Clear3D", header: "Draw_Viewer.hxx".}
proc flush*(this: var DrawViewer) {.importcpp: "Flush", header: "Draw_Viewer.hxx".}
proc drawOnView*(this: DrawViewer; id: StandardInteger; d: Handle[DrawDrawable3D]) {.
    noSideEffect, importcpp: "DrawOnView", header: "Draw_Viewer.hxx".}
proc highlightOnView*(this: DrawViewer; id: StandardInteger;
                     d: Handle[DrawDrawable3D]; c: DrawColorKind = drawBlanc) {.
    noSideEffect, importcpp: "HighlightOnView", header: "Draw_Viewer.hxx".}
proc addDrawable*(this: var DrawViewer; d: Handle[DrawDrawable3D]) {.
    importcpp: "AddDrawable", header: "Draw_Viewer.hxx".}
proc removeDrawable*(this: var DrawViewer; d: Handle[DrawDrawable3D]) {.
    importcpp: "RemoveDrawable", header: "Draw_Viewer.hxx".}
proc makeDisplay*(this: DrawViewer; id: StandardInteger): DrawDisplay {.noSideEffect,
    importcpp: "MakeDisplay", header: "Draw_Viewer.hxx".}
proc select*(this: var DrawViewer; id: var StandardInteger; x: var StandardInteger;
            y: var StandardInteger; button: var StandardInteger;
            waitclick: StandardBoolean = standardTrue) {.importcpp: "Select",
    header: "Draw_Viewer.hxx".}
  ##  View, -1 if none
  ##  Pick coordinates
  ##  Button pressed, 0 if none
proc pick*(this: DrawViewer; id: StandardInteger; x: StandardInteger;
          y: StandardInteger; prec: StandardInteger; d: var Handle[DrawDrawable3D];
          first: StandardInteger = 0): StandardInteger {.noSideEffect,
    importcpp: "Pick", header: "Draw_Viewer.hxx".}
  ##  returns the index (or 0)
proc lastPick*(this: var DrawViewer; p1: var GpPnt; p2: var GpPnt; param: var StandardReal) {.
    importcpp: "LastPick", header: "Draw_Viewer.hxx".}
proc destroyDrawViewer*(this: var DrawViewer) {.importcpp: "#.~Draw_Viewer()",
    header: "Draw_Viewer.hxx".}
proc `<<`*(this: var DrawViewer; a2: Handle[DrawDrawable3D]): var DrawViewer {.
    importcpp: "(# << #)", header: "Draw_Viewer.hxx".}
proc getDrawables*(this: var DrawViewer): DrawSequenceOfDrawable3D {.
    importcpp: "GetDrawables", header: "Draw_Viewer.hxx".}

