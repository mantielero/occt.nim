import brepadaptor_types

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


proc newBRepAdaptorCurve2d*(): BRepAdaptorCurve2d {.cdecl, constructor,
    importcpp: "BRepAdaptor_Curve2d(@)", header: "BRepAdaptor_Curve2d.hxx".}
proc newBRepAdaptorCurve2d*(e: TopoDS_Edge; f: TopoDS_Face): BRepAdaptorCurve2d {.
    cdecl, constructor, importcpp: "BRepAdaptor_Curve2d(@)", header: "BRepAdaptor_Curve2d.hxx".}
proc initialize*(this: var BRepAdaptorCurve2d; e: TopoDS_Edge; f: TopoDS_Face) {.cdecl,
    importcpp: "Initialize", header: "BRepAdaptor_Curve2d.hxx".}
proc edge*(this: BRepAdaptorCurve2d): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", header: "BRepAdaptor_Curve2d.hxx".}
proc face*(this: BRepAdaptorCurve2d): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", header: "BRepAdaptor_Curve2d.hxx".}
