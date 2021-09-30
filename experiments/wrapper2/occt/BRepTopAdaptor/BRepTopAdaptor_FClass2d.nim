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

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  BRepTopAdaptorFClass2d* {.importcpp: "BRepTopAdaptor_FClass2d",
                           header: "BRepTopAdaptor_FClass2d.hxx", bycopy.} = object


proc `new`*(this: var BRepTopAdaptorFClass2d; theSize: csize_t): pointer {.
    importcpp: "BRepTopAdaptor_FClass2d::operator new",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc `delete`*(this: var BRepTopAdaptorFClass2d; theAddress: pointer) {.
    importcpp: "BRepTopAdaptor_FClass2d::operator delete",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc `new[]`*(this: var BRepTopAdaptorFClass2d; theSize: csize_t): pointer {.
    importcpp: "BRepTopAdaptor_FClass2d::operator new[]",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc `delete[]`*(this: var BRepTopAdaptorFClass2d; theAddress: pointer) {.
    importcpp: "BRepTopAdaptor_FClass2d::operator delete[]",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc `new`*(this: var BRepTopAdaptorFClass2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepTopAdaptor_FClass2d::operator new",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc `delete`*(this: var BRepTopAdaptorFClass2d; a2: pointer; a3: pointer) {.
    importcpp: "BRepTopAdaptor_FClass2d::operator delete",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc constructBRepTopAdaptorFClass2d*(f: TopoDS_Face; tol: StandardReal): BRepTopAdaptorFClass2d {.
    constructor, importcpp: "BRepTopAdaptor_FClass2d(@)",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc performInfinitePoint*(this: BRepTopAdaptorFClass2d): TopAbsState {.
    noSideEffect, importcpp: "PerformInfinitePoint",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc perform*(this: BRepTopAdaptorFClass2d; puv: Pnt2d;
             recadreOnPeriodic: StandardBoolean = true): TopAbsState {.noSideEffect,
    importcpp: "Perform", header: "BRepTopAdaptor_FClass2d.hxx".}
proc destroy*(this: var BRepTopAdaptorFClass2d) {.importcpp: "Destroy",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc destroyBRepTopAdaptorFClass2d*(this: var BRepTopAdaptorFClass2d) {.
    importcpp: "#.~BRepTopAdaptor_FClass2d()",
    header: "BRepTopAdaptor_FClass2d.hxx".}
proc copy*(this: BRepTopAdaptorFClass2d; other: BRepTopAdaptorFClass2d): BRepTopAdaptorFClass2d {.
    noSideEffect, importcpp: "Copy", header: "BRepTopAdaptor_FClass2d.hxx".}
proc testOnRestriction*(this: BRepTopAdaptorFClass2d; puv: Pnt2d; tol: StandardReal;
                       recadreOnPeriodic: StandardBoolean = true): TopAbsState {.
    noSideEffect, importcpp: "TestOnRestriction",
    header: "BRepTopAdaptor_FClass2d.hxx".}