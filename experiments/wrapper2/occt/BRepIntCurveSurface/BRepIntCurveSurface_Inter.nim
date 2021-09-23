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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../IntCurveSurface/IntCurveSurface_HInter, ../Standard/Standard_Integer,
  ../TopAbs/TopAbs_State, ../Bnd/Bnd_Box, ../TopTools/TopTools_SequenceOfShape,
  ../Bnd/Bnd_HArray1OfBox, ../Standard/Standard_Boolean,
  ../IntCurveSurface/IntCurveSurface_TransitionOnCurve

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
  BRepIntCurveSurface_Inter* {.importcpp: "BRepIntCurveSurface_Inter",
                              header: "BRepIntCurveSurface_Inter.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor;
                                                                                    ##
                                                                                    ## !
                                                                                    ## Internal
                                                                                    ## function


proc constructBRepIntCurveSurface_Inter*(): BRepIntCurveSurface_Inter {.
    constructor, importcpp: "BRepIntCurveSurface_Inter(@)",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc Init*(this: var BRepIntCurveSurface_Inter; theShape: TopoDS_Shape;
          theCurve: GeomAdaptor_Curve; theTol: Standard_Real) {.importcpp: "Init",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc Init*(this: var BRepIntCurveSurface_Inter; theShape: TopoDS_Shape;
          theLine: gp_Lin; theTol: Standard_Real) {.importcpp: "Init",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc Load*(this: var BRepIntCurveSurface_Inter; theShape: TopoDS_Shape;
          theTol: Standard_Real) {.importcpp: "Load",
                                 header: "BRepIntCurveSurface_Inter.hxx".}
proc Init*(this: var BRepIntCurveSurface_Inter; theCurve: GeomAdaptor_Curve) {.
    importcpp: "Init", header: "BRepIntCurveSurface_Inter.hxx".}
proc More*(this: BRepIntCurveSurface_Inter): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "BRepIntCurveSurface_Inter.hxx".}
proc Next*(this: var BRepIntCurveSurface_Inter) {.importcpp: "Next",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc Point*(this: BRepIntCurveSurface_Inter): IntCurveSurface_IntersectionPoint {.
    noSideEffect, importcpp: "Point", header: "BRepIntCurveSurface_Inter.hxx".}
proc Pnt*(this: BRepIntCurveSurface_Inter): gp_Pnt {.noSideEffect, importcpp: "Pnt",
    header: "BRepIntCurveSurface_Inter.hxx".}
proc U*(this: BRepIntCurveSurface_Inter): Standard_Real {.noSideEffect,
    importcpp: "U", header: "BRepIntCurveSurface_Inter.hxx".}
proc V*(this: BRepIntCurveSurface_Inter): Standard_Real {.noSideEffect,
    importcpp: "V", header: "BRepIntCurveSurface_Inter.hxx".}
proc W*(this: BRepIntCurveSurface_Inter): Standard_Real {.noSideEffect,
    importcpp: "W", header: "BRepIntCurveSurface_Inter.hxx".}
proc State*(this: BRepIntCurveSurface_Inter): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "BRepIntCurveSurface_Inter.hxx".}
proc Transition*(this: BRepIntCurveSurface_Inter): IntCurveSurface_TransitionOnCurve {.
    noSideEffect, importcpp: "Transition", header: "BRepIntCurveSurface_Inter.hxx".}
proc Face*(this: BRepIntCurveSurface_Inter): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepIntCurveSurface_Inter.hxx".}