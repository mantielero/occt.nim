##  Created on: 1994-04-01
##  Created by: Laurent BUCHARD
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

discard "forward decl of gp_Lin"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepClass3dIntersector3d* {.importcpp: "BRepClass3d_Intersector3d",
                             header: "BRepClass3d_Intersector3d.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor.


proc constructBRepClass3dIntersector3d*(): BRepClass3dIntersector3d {.constructor,
    importcpp: "BRepClass3d_Intersector3d(@)",
    header: "BRepClass3d_Intersector3d.hxx".}
proc perform*(this: var BRepClass3dIntersector3d; L: Lin; prm: float; tol: float;
             f: TopoDS_Face) {.importcpp: "Perform",
                             header: "BRepClass3d_Intersector3d.hxx".}
proc isDone*(this: BRepClass3dIntersector3d): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepClass3d_Intersector3d.hxx".}
proc hasAPoint*(this: BRepClass3dIntersector3d): bool {.noSideEffect,
    importcpp: "HasAPoint", header: "BRepClass3d_Intersector3d.hxx".}
proc uParameter*(this: BRepClass3dIntersector3d): float {.noSideEffect,
    importcpp: "UParameter", header: "BRepClass3d_Intersector3d.hxx".}
proc vParameter*(this: BRepClass3dIntersector3d): float {.noSideEffect,
    importcpp: "VParameter", header: "BRepClass3d_Intersector3d.hxx".}
proc wParameter*(this: BRepClass3dIntersector3d): float {.noSideEffect,
    importcpp: "WParameter", header: "BRepClass3d_Intersector3d.hxx".}
proc pnt*(this: BRepClass3dIntersector3d): Pnt {.noSideEffect, importcpp: "Pnt",
    header: "BRepClass3d_Intersector3d.hxx".}
proc transition*(this: BRepClass3dIntersector3d): IntCurveSurfaceTransitionOnCurve {.
    noSideEffect, importcpp: "Transition", header: "BRepClass3d_Intersector3d.hxx".}
proc state*(this: BRepClass3dIntersector3d): TopAbsState {.noSideEffect,
    importcpp: "State", header: "BRepClass3d_Intersector3d.hxx".}
proc face*(this: BRepClass3dIntersector3d): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepClass3d_Intersector3d.hxx".}
