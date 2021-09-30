##  Created on: 1993-07-13
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepAdaptorCurve2d* {.importcpp: "BRepAdaptor_Curve2d",
                       header: "BRepAdaptor_Curve2d.hxx", bycopy.} = object of Geom2dAdaptorCurve


proc `new`*(this: var BRepAdaptorCurve2d; theSize: csize_t): pointer {.
    importcpp: "BRepAdaptor_Curve2d::operator new",
    header: "BRepAdaptor_Curve2d.hxx".}
proc `delete`*(this: var BRepAdaptorCurve2d; theAddress: pointer) {.
    importcpp: "BRepAdaptor_Curve2d::operator delete",
    header: "BRepAdaptor_Curve2d.hxx".}
proc `new[]`*(this: var BRepAdaptorCurve2d; theSize: csize_t): pointer {.
    importcpp: "BRepAdaptor_Curve2d::operator new[]",
    header: "BRepAdaptor_Curve2d.hxx".}
proc `delete[]`*(this: var BRepAdaptorCurve2d; theAddress: pointer) {.
    importcpp: "BRepAdaptor_Curve2d::operator delete[]",
    header: "BRepAdaptor_Curve2d.hxx".}
proc `new`*(this: var BRepAdaptorCurve2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAdaptor_Curve2d::operator new",
    header: "BRepAdaptor_Curve2d.hxx".}
proc `delete`*(this: var BRepAdaptorCurve2d; a2: pointer; a3: pointer) {.
    importcpp: "BRepAdaptor_Curve2d::operator delete",
    header: "BRepAdaptor_Curve2d.hxx".}
proc constructBRepAdaptorCurve2d*(): BRepAdaptorCurve2d {.constructor,
    importcpp: "BRepAdaptor_Curve2d(@)", header: "BRepAdaptor_Curve2d.hxx".}
proc constructBRepAdaptorCurve2d*(e: TopoDS_Edge; f: TopoDS_Face): BRepAdaptorCurve2d {.
    constructor, importcpp: "BRepAdaptor_Curve2d(@)",
    header: "BRepAdaptor_Curve2d.hxx".}
proc initialize*(this: var BRepAdaptorCurve2d; e: TopoDS_Edge; f: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepAdaptor_Curve2d.hxx".}
proc edge*(this: BRepAdaptorCurve2d): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepAdaptor_Curve2d.hxx".}
proc face*(this: BRepAdaptorCurve2d): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepAdaptor_Curve2d.hxx".}