##  Created on: 1995-03-22
##  Created by: Laurent BUCHARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, BRepTopAdaptor_SeqOfPtr,
  ../TColStd/TColStd_SequenceOfInteger, ../Standard/Standard_Real,
  ../TopoDS/TopoDS_Face, ../TopAbs/TopAbs_State, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  BRepTopAdaptor_FClass2d* {.importcpp: "BRepTopAdaptor_FClass2d",
                            header: "BRepTopAdaptor_FClass2d.hxx", bycopy.} = object


proc constructBRepTopAdaptor_FClass2d*(F: TopoDS_Face; Tol: Standard_Real): BRepTopAdaptor_FClass2d {.
    constructor, importcpp: "BRepTopAdaptor_FClass2d(@)",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc PerformInfinitePoint*(this: BRepTopAdaptor_FClass2d): TopAbs_State {.
    noSideEffect, importcpp: "PerformInfinitePoint",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc Perform*(this: BRepTopAdaptor_FClass2d; Puv: gp_Pnt2d;
             RecadreOnPeriodic: Standard_Boolean = Standard_True): TopAbs_State {.
    noSideEffect, importcpp: "Perform", header: "BRepTopAdaptor_FClass2d.hxx".}
proc Destroy*(this: var BRepTopAdaptor_FClass2d) {.importcpp: "Destroy",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc destroyBRepTopAdaptor_FClass2d*(this: var BRepTopAdaptor_FClass2d) {.
    importcpp: "#.~BRepTopAdaptor_FClass2d()",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc Copy*(this: BRepTopAdaptor_FClass2d; Other: BRepTopAdaptor_FClass2d): BRepTopAdaptor_FClass2d {.
    noSideEffect, importcpp: "Copy", header: "BRepTopAdaptor_FClass2d.hxx".}
proc TestOnRestriction*(this: BRepTopAdaptor_FClass2d; Puv: gp_Pnt2d;
                       Tol: Standard_Real;
                       RecadreOnPeriodic: Standard_Boolean = Standard_True): TopAbs_State {.
    noSideEffect, importcpp: "TestOnRestriction",
    header: "BRepTopAdaptor_FClass2d.hxx".}