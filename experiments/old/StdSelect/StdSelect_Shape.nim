##  Created on: 1998-03-27
##  Created by: Robert COUBLANC
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
type
  StdSelectShape* {.importcpp: "StdSelect_Shape", header: "StdSelect_Shape.hxx",
                   bycopy.} = object of PrsMgrPresentableObject

  StdSelectShapebaseType* = PrsMgrPresentableObject

proc getTypeName*(): cstring {.importcpp: "StdSelect_Shape::get_type_name(@)",
                            header: "StdSelect_Shape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdSelect_Shape::get_type_descriptor(@)",
    header: "StdSelect_Shape.hxx".}
proc dynamicType*(this: StdSelectShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_Shape.hxx".}
proc constructStdSelectShape*(theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer] = handle[
    Prs3dDrawer]()): StdSelectShape {.constructor, importcpp: "StdSelect_Shape(@)",
                                    header: "StdSelect_Shape.hxx".}
proc compute*(this: var StdSelectShape;
             aPresentationManager: Handle[PrsMgrPresentationManager3d];
             aPresentation: Handle[Prs3dPresentation]; aMode: cint = 0) {.
    importcpp: "Compute", header: "StdSelect_Shape.hxx".}
proc shape*(this: StdSelectShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "StdSelect_Shape.hxx".}
proc shape*(this: var StdSelectShape; theShape: TopoDS_Shape) {.importcpp: "Shape",
    header: "StdSelect_Shape.hxx".}
proc dumpJson*(this: StdSelectShape; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "StdSelect_Shape.hxx".}
discard "forward decl of StdSelect_Shape"
type
  HandleC1C1* = Handle[StdSelectShape]


























