##  Created on: 1998-09-16
##  Created by: Roman LYGIN <rln@nnov.matra-dtv.fr>
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Compound"
type
  ShapeFixFreeBounds* {.importcpp: "ShapeFix_FreeBounds",
                       header: "ShapeFix_FreeBounds.hxx", bycopy.} = object ## ! Empty
                                                                       ## constructor


proc constructShapeFixFreeBounds*(): ShapeFixFreeBounds {.constructor,
    importcpp: "ShapeFix_FreeBounds(@)", header: "ShapeFix_FreeBounds.hxx".}
proc constructShapeFixFreeBounds*(shape: TopoDS_Shape; sewtoler: float;
                                 closetoler: float; splitclosed: bool;
                                 splitopen: bool): ShapeFixFreeBounds {.
    constructor, importcpp: "ShapeFix_FreeBounds(@)",
    header: "ShapeFix_FreeBounds.hxx".}
proc constructShapeFixFreeBounds*(shape: TopoDS_Shape; closetoler: float;
                                 splitclosed: bool; splitopen: bool): ShapeFixFreeBounds {.
    constructor, importcpp: "ShapeFix_FreeBounds(@)",
    header: "ShapeFix_FreeBounds.hxx".}
proc getClosedWires*(this: ShapeFixFreeBounds): TopoDS_Compound {.noSideEffect,
    importcpp: "GetClosedWires", header: "ShapeFix_FreeBounds.hxx".}
proc getOpenWires*(this: ShapeFixFreeBounds): TopoDS_Compound {.noSideEffect,
    importcpp: "GetOpenWires", header: "ShapeFix_FreeBounds.hxx".}
proc getShape*(this: ShapeFixFreeBounds): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "ShapeFix_FreeBounds.hxx".}
