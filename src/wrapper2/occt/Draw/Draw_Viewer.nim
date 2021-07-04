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

import
  ../gp/gp_Pnt, ../gp/gp_Vec, ../gp/gp_Dir, ../gp/gp_Pnt2d, ../gp/gp_Vec2d,
  ../gp/gp_Dir2d, ../gp/gp_Trsf, ../gp/gp_Ax1, Draw_Drawable3D,
  Draw_SequenceOfDrawable3D, Draw_Color

when defined(_WIN32):
  discard
var MAXVIEW* {.importcpp: "MAXVIEW", header: "Draw_Viewer.hxx".}: Standard_Integer

discard "forward decl of Draw_View"
type
  Draw_Viewer* {.importcpp: "Draw_Viewer", header: "Draw_Viewer.hxx", bycopy.} = object


proc constructDraw_Viewer*(): Draw_Viewer {.constructor,
    importcpp: "Draw_Viewer(@)", header: "Draw_Viewer.hxx".}
proc DefineColor*(this: var Draw_Viewer; i: Standard_Integer; colname: cstring): Standard_Boolean {.
    importcpp: "DefineColor", header: "Draw_Viewer.hxx".}
proc MakeView*(this: var Draw_Viewer; id: Standard_Integer; typ: cstring;
              X: Standard_Integer; Y: Standard_Integer; W: Standard_Integer;
              H: Standard_Integer) {.importcpp: "MakeView",
                                   header: "Draw_Viewer.hxx".}
when defined(_WIN32):
  proc MakeView*(this: var Draw_Viewer; id: Standard_Integer; typ: cstring;
                X: Standard_Integer; Y: Standard_Integer; W: Standard_Integer;
                H: Standard_Integer; win: HWND;
                useBuffer: Standard_Boolean = Standard_False) {.
      importcpp: "MakeView", header: "Draw_Viewer.hxx".}
proc MakeView*(this: var Draw_Viewer; id: Standard_Integer; typ: cstring;
              window: cstring) {.importcpp: "MakeView", header: "Draw_Viewer.hxx".}
proc SetTitle*(this: var Draw_Viewer; id: Standard_Integer; name: cstring) {.
    importcpp: "SetTitle", header: "Draw_Viewer.hxx".}
proc ResetView*(this: var Draw_Viewer; id: Standard_Integer) {.importcpp: "ResetView",
    header: "Draw_Viewer.hxx".}
proc SetZoom*(this: var Draw_Viewer; id: Standard_Integer; z: Standard_Real) {.
    importcpp: "SetZoom", header: "Draw_Viewer.hxx".}
proc RotateView*(this: var Draw_Viewer; id: Standard_Integer; a3: gp_Dir2d;
                a4: Standard_Real) {.importcpp: "RotateView",
                                   header: "Draw_Viewer.hxx".}
proc RotateView*(this: var Draw_Viewer; id: Standard_Integer; a3: gp_Pnt; a4: gp_Dir;
                a5: Standard_Real) {.importcpp: "RotateView",
                                   header: "Draw_Viewer.hxx".}
proc SetFocal*(this: var Draw_Viewer; id: Standard_Integer; FocalDist: Standard_Real) {.
    importcpp: "SetFocal", header: "Draw_Viewer.hxx".}
proc GetType*(this: Draw_Viewer; id: Standard_Integer): cstring {.noSideEffect,
    importcpp: "GetType", header: "Draw_Viewer.hxx".}
proc Zoom*(this: Draw_Viewer; id: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Zoom", header: "Draw_Viewer.hxx".}
proc Focal*(this: Draw_Viewer; id: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Focal", header: "Draw_Viewer.hxx".}
proc SetTrsf*(this: var Draw_Viewer; id: Standard_Integer; T: var gp_Trsf) {.
    importcpp: "SetTrsf", header: "Draw_Viewer.hxx".}
proc GetTrsf*(this: Draw_Viewer; id: Standard_Integer; T: var gp_Trsf) {.noSideEffect,
    importcpp: "GetTrsf", header: "Draw_Viewer.hxx".}
proc GetPosSize*(this: var Draw_Viewer; id: Standard_Integer; X: var Standard_Integer;
                Y: var Standard_Integer; W: var Standard_Integer;
                H: var Standard_Integer) {.importcpp: "GetPosSize",
                                        header: "Draw_Viewer.hxx".}
proc Is3D*(this: Draw_Viewer; id: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "Is3D", header: "Draw_Viewer.hxx".}
proc GetFrame*(this: var Draw_Viewer; id: Standard_Integer;
              xmin: var Standard_Integer; ymin: var Standard_Integer;
              xmax: var Standard_Integer; ymax: var Standard_Integer) {.
    importcpp: "GetFrame", header: "Draw_Viewer.hxx".}
proc FitView*(this: var Draw_Viewer; id: Standard_Integer; frame: Standard_Integer) {.
    importcpp: "FitView", header: "Draw_Viewer.hxx".}
proc PanView*(this: var Draw_Viewer; id: Standard_Integer; DX: Standard_Integer;
             DY: Standard_Integer) {.importcpp: "PanView", header: "Draw_Viewer.hxx".}
proc SetPan*(this: var Draw_Viewer; id: Standard_Integer; DX: Standard_Integer;
            DY: Standard_Integer) {.importcpp: "SetPan", header: "Draw_Viewer.hxx".}
proc GetPan*(this: var Draw_Viewer; id: Standard_Integer; DX: var Standard_Integer;
            DY: var Standard_Integer) {.importcpp: "GetPan",
                                     header: "Draw_Viewer.hxx".}
proc HasView*(this: Draw_Viewer; id: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasView", header: "Draw_Viewer.hxx".}
proc DisplayView*(this: Draw_Viewer; id: Standard_Integer) {.noSideEffect,
    importcpp: "DisplayView", header: "Draw_Viewer.hxx".}
proc HideView*(this: Draw_Viewer; id: Standard_Integer) {.noSideEffect,
    importcpp: "HideView", header: "Draw_Viewer.hxx".}
proc ClearView*(this: Draw_Viewer; id: Standard_Integer) {.noSideEffect,
    importcpp: "ClearView", header: "Draw_Viewer.hxx".}
proc RemoveView*(this: var Draw_Viewer; id: Standard_Integer) {.
    importcpp: "RemoveView", header: "Draw_Viewer.hxx".}
proc RepaintView*(this: Draw_Viewer; id: Standard_Integer) {.noSideEffect,
    importcpp: "RepaintView", header: "Draw_Viewer.hxx".}
when defined(_WIN32):
  proc ResizeView*(this: Draw_Viewer; id: Standard_Integer) {.noSideEffect,
      importcpp: "ResizeView", header: "Draw_Viewer.hxx".}
when defined(_WIN32):
  proc UpdateView*(this: Draw_Viewer; id: Standard_Integer;
                  forced: Standard_Boolean = Standard_False) {.noSideEffect,
      importcpp: "UpdateView", header: "Draw_Viewer.hxx".}
proc ConfigView*(this: Draw_Viewer; id: Standard_Integer) {.noSideEffect,
    importcpp: "ConfigView", header: "Draw_Viewer.hxx".}
proc PostScriptView*(this: Draw_Viewer; id: Standard_Integer;
                    VXmin: Standard_Integer; VYmin: Standard_Integer;
                    VXmax: Standard_Integer; VYmax: Standard_Integer;
                    PXmin: Standard_Integer; PYmin: Standard_Integer;
                    PXmax: Standard_Integer; PYmax: Standard_Integer;
                    sortie: var ostream) {.noSideEffect,
                                        importcpp: "PostScriptView",
                                        header: "Draw_Viewer.hxx".}
proc PostColor*(this: var Draw_Viewer; icol: Standard_Integer;
               width: Standard_Integer; gray: Standard_Real) {.
    importcpp: "PostColor", header: "Draw_Viewer.hxx".}
proc SaveView*(this: var Draw_Viewer; id: Standard_Integer; filename: cstring): Standard_Boolean {.
    importcpp: "SaveView", header: "Draw_Viewer.hxx".}
proc RepaintAll*(this: Draw_Viewer) {.noSideEffect, importcpp: "RepaintAll",
                                   header: "Draw_Viewer.hxx".}
proc Repaint2D*(this: Draw_Viewer) {.noSideEffect, importcpp: "Repaint2D",
                                  header: "Draw_Viewer.hxx".}
proc Repaint3D*(this: Draw_Viewer) {.noSideEffect, importcpp: "Repaint3D",
                                  header: "Draw_Viewer.hxx".}
proc DeleteView*(this: var Draw_Viewer; id: Standard_Integer) {.
    importcpp: "DeleteView", header: "Draw_Viewer.hxx".}
proc Clear*(this: var Draw_Viewer) {.importcpp: "Clear", header: "Draw_Viewer.hxx".}
proc Clear2D*(this: var Draw_Viewer) {.importcpp: "Clear2D", header: "Draw_Viewer.hxx".}
proc Clear3D*(this: var Draw_Viewer) {.importcpp: "Clear3D", header: "Draw_Viewer.hxx".}
proc Flush*(this: var Draw_Viewer) {.importcpp: "Flush", header: "Draw_Viewer.hxx".}
proc DrawOnView*(this: Draw_Viewer; id: Standard_Integer; D: handle[Draw_Drawable3D]) {.
    noSideEffect, importcpp: "DrawOnView", header: "Draw_Viewer.hxx".}
proc HighlightOnView*(this: Draw_Viewer; id: Standard_Integer;
                     D: handle[Draw_Drawable3D]; C: Draw_ColorKind = Draw_blanc) {.
    noSideEffect, importcpp: "HighlightOnView", header: "Draw_Viewer.hxx".}
proc AddDrawable*(this: var Draw_Viewer; D: handle[Draw_Drawable3D]) {.
    importcpp: "AddDrawable", header: "Draw_Viewer.hxx".}
proc RemoveDrawable*(this: var Draw_Viewer; D: handle[Draw_Drawable3D]) {.
    importcpp: "RemoveDrawable", header: "Draw_Viewer.hxx".}
proc MakeDisplay*(this: Draw_Viewer; id: Standard_Integer): Draw_Display {.
    noSideEffect, importcpp: "MakeDisplay", header: "Draw_Viewer.hxx".}
proc Select*(this: var Draw_Viewer; id: var Standard_Integer; X: var Standard_Integer;
            Y: var Standard_Integer; Button: var Standard_Integer;
            waitclick: Standard_Boolean = Standard_True) {.importcpp: "Select",
    header: "Draw_Viewer.hxx".}
  ##  View, -1 if none
  ##  Pick coordinates
  ##  Button pressed, 0 if none
proc Pick*(this: Draw_Viewer; id: Standard_Integer; X: Standard_Integer;
          Y: Standard_Integer; Prec: Standard_Integer;
          D: var handle[Draw_Drawable3D]; First: Standard_Integer = 0): Standard_Integer {.
    noSideEffect, importcpp: "Pick", header: "Draw_Viewer.hxx".}
  ##  returns the index (or 0)
proc LastPick*(this: var Draw_Viewer; P1: var gp_Pnt; P2: var gp_Pnt;
              Param: var Standard_Real) {.importcpp: "LastPick",
                                       header: "Draw_Viewer.hxx".}
proc destroyDraw_Viewer*(this: var Draw_Viewer) {.importcpp: "#.~Draw_Viewer()",
    header: "Draw_Viewer.hxx".}
proc `<<`*(this: var Draw_Viewer; a2: handle[Draw_Drawable3D]): var Draw_Viewer {.
    importcpp: "(# << #)", header: "Draw_Viewer.hxx".}
proc GetDrawables*(this: var Draw_Viewer): Draw_SequenceOfDrawable3D {.
    importcpp: "GetDrawables", header: "Draw_Viewer.hxx".}