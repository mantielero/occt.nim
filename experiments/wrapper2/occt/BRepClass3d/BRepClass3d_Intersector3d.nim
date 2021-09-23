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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../IntCurveSurface/IntCurveSurface_TransitionOnCurve,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_State, ../TopoDS/TopoDS_Face

discard "forward decl of gp_Lin"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepClass3d_Intersector3d* {.importcpp: "BRepClass3d_Intersector3d",
                              header: "BRepClass3d_Intersector3d.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor.


proc constructBRepClass3d_Intersector3d*(): BRepClass3d_Intersector3d {.
    constructor, importcpp: "BRepClass3d_Intersector3d(@)",
    header: "BRepClass3d_Intersector3d.hxx".}
proc Perform*(this: var BRepClass3d_Intersector3d; L: gp_Lin; Prm: Standard_Real;
             Tol: Standard_Real; F: TopoDS_Face) {.importcpp: "Perform",
    header: "BRepClass3d_Intersector3d.hxx".}
proc IsDone*(this: BRepClass3d_Intersector3d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepClass3d_Intersector3d.hxx".}
proc HasAPoint*(this: BRepClass3d_Intersector3d): Standard_Boolean {.noSideEffect,
    importcpp: "HasAPoint", header: "BRepClass3d_Intersector3d.hxx".}
proc UParameter*(this: BRepClass3d_Intersector3d): Standard_Real {.noSideEffect,
    importcpp: "UParameter", header: "BRepClass3d_Intersector3d.hxx".}
proc VParameter*(this: BRepClass3d_Intersector3d): Standard_Real {.noSideEffect,
    importcpp: "VParameter", header: "BRepClass3d_Intersector3d.hxx".}
proc WParameter*(this: BRepClass3d_Intersector3d): Standard_Real {.noSideEffect,
    importcpp: "WParameter", header: "BRepClass3d_Intersector3d.hxx".}
proc Pnt*(this: BRepClass3d_Intersector3d): gp_Pnt {.noSideEffect, importcpp: "Pnt",
    header: "BRepClass3d_Intersector3d.hxx".}
proc Transition*(this: BRepClass3d_Intersector3d): IntCurveSurface_TransitionOnCurve {.
    noSideEffect, importcpp: "Transition", header: "BRepClass3d_Intersector3d.hxx".}
proc State*(this: BRepClass3d_Intersector3d): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "BRepClass3d_Intersector3d.hxx".}
proc Face*(this: BRepClass3d_Intersector3d): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepClass3d_Intersector3d.hxx".}