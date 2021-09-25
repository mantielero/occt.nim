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

discard "forward decl of PrsDim_Chamf3dDimension"
type
  HandlePrsDimChamf3dDimension* = Handle[PrsDimChamf3dDimension]

## ! A framework to define display of 3D chamfers.
## ! A chamfer is displayed with arrows and text. The text
## ! gives the length of the chamfer if it is a symmetrical
## ! chamfer, or the angle if it is not.

type
  PrsDimChamf3dDimension* {.importcpp: "PrsDim_Chamf3dDimension",
                           header: "PrsDim_Chamf3dDimension.hxx", bycopy.} = object of PrsDimRelation ##
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

  PrsDimChamf3dDimensionbaseType* = PrsDimRelation

proc getTypeName*(): cstring {.importcpp: "PrsDim_Chamf3dDimension::get_type_name(@)",
                            header: "PrsDim_Chamf3dDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_Chamf3dDimension::get_type_descriptor(@)",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc dynamicType*(this: PrsDimChamf3dDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_Chamf3dDimension.hxx".}
proc constructPrsDimChamf3dDimension*(aFShape: TopoDS_Shape; aVal: float;
                                     aText: TCollectionExtendedString): PrsDimChamf3dDimension {.
    constructor, importcpp: "PrsDim_Chamf3dDimension(@)",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc constructPrsDimChamf3dDimension*(aFShape: TopoDS_Shape; aVal: float;
                                     aText: TCollectionExtendedString;
                                     aPosition: Pnt; aSymbolPrs: DsgPrsArrowSide;
                                     anArrowSize: float = 0.0): PrsDimChamf3dDimension {.
    constructor, importcpp: "PrsDim_Chamf3dDimension(@)",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc kindOfDimension*(this: PrsDimChamf3dDimension): PrsDimKindOfDimension {.
    noSideEffect, importcpp: "KindOfDimension",
    header: "PrsDim_Chamf3dDimension.hxx".}
proc isMovable*(this: PrsDimChamf3dDimension): bool {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_Chamf3dDimension.hxx".}
