##  Created on: 1994-02-07
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of GeomAdaptor_HCurve"
discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of gp_Lin"
discard "forward decl of IntCurveSurface_IntersectionPoint"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepIntCurveSurfaceInter* {.importcpp: "BRepIntCurveSurface_Inter",
                             header: "BRepIntCurveSurface_Inter.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor;
                                                                                   ##
                                                                                   ## !
                                                                                   ## Internal
                                                                                   ## function


proc constructBRepIntCurveSurfaceInter*(): BRepIntCurveSurfaceInter {.constructor,
    importcpp: "BRepIntCurveSurface_Inter(@)",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc init*(this: var BRepIntCurveSurfaceInter; theShape: TopoDS_Shape;
          theCurve: GeomAdaptorCurve; theTol: float) {.importcpp: "Init",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc init*(this: var BRepIntCurveSurfaceInter; theShape: TopoDS_Shape; theLine: Lin;
          theTol: float) {.importcpp: "Init",
                         header: "BRepIntCurveSurface_Inter.hxx".}
proc load*(this: var BRepIntCurveSurfaceInter; theShape: TopoDS_Shape; theTol: float) {.
    importcpp: "Load", header: "BRepIntCurveSurface_Inter.hxx".}
proc init*(this: var BRepIntCurveSurfaceInter; theCurve: GeomAdaptorCurve) {.
    importcpp: "Init", header: "BRepIntCurveSurface_Inter.hxx".}
proc more*(this: BRepIntCurveSurfaceInter): bool {.noSideEffect, importcpp: "More",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc next*(this: var BRepIntCurveSurfaceInter) {.importcpp: "Next",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc point*(this: BRepIntCurveSurfaceInter): IntCurveSurfaceIntersectionPoint {.
    noSideEffect, importcpp: "Point", header: "BRepIntCurveSurface_Inter.hxx".}
proc pnt*(this: BRepIntCurveSurfaceInter): Pnt {.noSideEffect, importcpp: "Pnt",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc u*(this: BRepIntCurveSurfaceInter): float {.noSideEffect, importcpp: "U",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc v*(this: BRepIntCurveSurfaceInter): float {.noSideEffect, importcpp: "V",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc w*(this: BRepIntCurveSurfaceInter): float {.noSideEffect, importcpp: "W",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc state*(this: BRepIntCurveSurfaceInter): TopAbsState {.noSideEffect,
    importcpp: "State", header: "BRepIntCurveSurface_Inter.hxx".}
proc transition*(this: BRepIntCurveSurfaceInter): IntCurveSurfaceTransitionOnCurve {.
    noSideEffect, importcpp: "Transition", header: "BRepIntCurveSurface_Inter.hxx".}
proc face*(this: BRepIntCurveSurfaceInter): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepIntCurveSurface_Inter.hxx".}
