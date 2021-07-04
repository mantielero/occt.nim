##  Created on: 1996-12-05
##  Created by: Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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
  PrsDim_KindOfDimension, PrsDim_Relation, ../DsgPrs/DsgPrs_ArrowSide, ../gp/gp_Dir

discard "forward decl of PrsDim_Chamf3dDimension"
type
  Handle_PrsDim_Chamf3dDimension* = handle[PrsDim_Chamf3dDimension]

## ! A framework to define display of 3D chamfers.
## ! A chamfer is displayed with arrows and text. The text
## ! gives the length of the chamfer if it is a symmetrical
## ! chamfer, or the angle if it is not.

type
  PrsDim_Chamf3dDimension* {.importcpp: "PrsDim_Chamf3dDimension",
                            header: "PrsDim_Chamf3dDimension.hxx", bycopy.} = object of PrsDim_Relation ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## a
                                                                                                 ## display
                                                                                                 ## object
                                                                                                 ## for
                                                                                                 ## 3D
                                                                                                 ## chamfers.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## object
                                                                                                 ## is
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## the
                                                                                                 ## shape
                                                                                                 ## aFShape,
                                                                                                 ## the
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## dimension
                                                                                                 ## aVal
                                                                                                 ## and
                                                                                                 ## the
                                                                                                 ## text
                                                                                                 ## aText.

  PrsDim_Chamf3dDimensionbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_Chamf3dDimension::get_type_name(@)",
                              header: "PrsDim_Chamf3dDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_Chamf3dDimension::get_type_descriptor(@)",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc DynamicType*(this: PrsDim_Chamf3dDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_Chamf3dDimension.hxx".}
proc constructPrsDim_Chamf3dDimension*(aFShape: TopoDS_Shape; aVal: Standard_Real;
                                      aText: TCollection_ExtendedString): PrsDim_Chamf3dDimension {.
    constructor, importcpp: "PrsDim_Chamf3dDimension(@)",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc constructPrsDim_Chamf3dDimension*(aFShape: TopoDS_Shape; aVal: Standard_Real;
                                      aText: TCollection_ExtendedString;
                                      aPosition: gp_Pnt;
                                      aSymbolPrs: DsgPrs_ArrowSide;
                                      anArrowSize: Standard_Real = 0.0): PrsDim_Chamf3dDimension {.
    constructor, importcpp: "PrsDim_Chamf3dDimension(@)",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc KindOfDimension*(this: PrsDim_Chamf3dDimension): PrsDim_KindOfDimension {.
    noSideEffect, importcpp: "KindOfDimension",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc IsMovable*(this: PrsDim_Chamf3dDimension): Standard_Boolean {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_Chamf3dDimension.hxx".}