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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve

discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepAdaptor_Curve2d* {.importcpp: "BRepAdaptor_Curve2d",
                        header: "BRepAdaptor_Curve2d.hxx", bycopy.} = object of Geom2dAdaptor_Curve ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## an
                                                                                             ## uninitialized
                                                                                             ## curve2d.


proc constructBRepAdaptor_Curve2d*(): BRepAdaptor_Curve2d {.constructor,
    importcpp: "BRepAdaptor_Curve2d(@)", header: "BRepAdaptor_Curve2d.hxx".}
proc constructBRepAdaptor_Curve2d*(E: TopoDS_Edge; F: TopoDS_Face): BRepAdaptor_Curve2d {.
    constructor, importcpp: "BRepAdaptor_Curve2d(@)",
    header: "BRepAdaptor_Curve2d.hxx".}
proc Initialize*(this: var BRepAdaptor_Curve2d; E: TopoDS_Edge; F: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepAdaptor_Curve2d.hxx".}
proc Edge*(this: BRepAdaptor_Curve2d): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepAdaptor_Curve2d.hxx".}
proc Face*(this: BRepAdaptor_Curve2d): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepAdaptor_Curve2d.hxx".}