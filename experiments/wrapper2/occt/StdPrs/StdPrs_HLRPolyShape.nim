##  Created on: 1995-09-19
##  Created by: Laurent PAINNOT
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

## ! Instantiates Prs3d_PolyHLRShape to define a display of a shape where hidden
## ! and visible lines are identified with respect to a given projection.
## ! StdPrs_HLRPolyShape works with a polyhedral simplification of the shape whereas
## ! StdPrs_HLRShape takes the shape itself into account.
## ! When you use StdPrs_HLRShape, you obtain an exact result, whereas, when you use StdPrs_HLRPolyShape,
## ! you reduce computation time but obtain polygonal segments.
## ! The polygonal algorithm is used.

type
  StdPrsHLRPolyShape* {.importcpp: "StdPrs_HLRPolyShape",
                       header: "StdPrs_HLRPolyShape.hxx", bycopy.} = object of StdPrsHLRShapeI ##
                                                                                        ## !
                                                                                        ## Compute
                                                                                        ## presentation
                                                                                        ## for
                                                                                        ## specified
                                                                                        ## shape.

  StdPrsHLRPolyShapebaseType* = StdPrsHLRShapeI

proc getTypeName*(): cstring {.importcpp: "StdPrs_HLRPolyShape::get_type_name(@)",
                            header: "StdPrs_HLRPolyShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdPrs_HLRPolyShape::get_type_descriptor(@)",
    header: "StdPrs_HLRPolyShape.hxx".}
proc dynamicType*(this: StdPrsHLRPolyShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdPrs_HLRPolyShape.hxx".}
proc computeHLR*(this: StdPrsHLRPolyShape; thePrs: Handle[Prs3dPresentation];
                theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer];
                theProjector: Handle[Graphic3dCamera]) {.noSideEffect,
    importcpp: "ComputeHLR", header: "StdPrs_HLRPolyShape.hxx".}
