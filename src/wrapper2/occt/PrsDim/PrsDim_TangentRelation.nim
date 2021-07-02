##  Created on: 1996-12-05
##  Created by: Jean-Pierre COMBE/Odile Olivier
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

discard "forward decl of PrsDim_TangentRelation"
type
  HandlePrsDimTangentRelation* = Handle[PrsDimTangentRelation]

## ! A framework to display tangency constraints between
## ! two or more Interactive Objects of the datum type.
## ! The datums are normally faces or edges.

type
  PrsDimTangentRelation* {.importcpp: "PrsDim_TangentRelation",
                          header: "PrsDim_TangentRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                             ## !
                                                                                             ## TwoFacesTangent
                                                                                             ## or
                                                                                             ## TwoEdgesTangent
                                                                                             ## relation
                                                                                             ##
                                                                                             ## !
                                                                                             ## Constructs
                                                                                             ## an
                                                                                             ## object
                                                                                             ## to
                                                                                             ## display
                                                                                             ## tangency
                                                                                             ## constraints.
                                                                                             ##
                                                                                             ## !
                                                                                             ## This
                                                                                             ## object
                                                                                             ## is
                                                                                             ## defined
                                                                                             ## by
                                                                                             ## the
                                                                                             ## first
                                                                                             ## shape
                                                                                             ## aFShape,
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## second
                                                                                             ## shape
                                                                                             ## aSShape,
                                                                                             ## the
                                                                                             ## plane
                                                                                             ## aPlane
                                                                                             ## and
                                                                                             ## the
                                                                                             ## index
                                                                                             ## anExternRef.
                                                                                             ##
                                                                                             ## !
                                                                                             ## aPlane
                                                                                             ## serves
                                                                                             ## as
                                                                                             ## an
                                                                                             ## optional
                                                                                             ## axis.
                                                                                             ##
                                                                                             ## !
                                                                                             ## anExternRef
                                                                                             ## set
                                                                                             ## to
                                                                                             ## 0
                                                                                             ## indicates
                                                                                             ## that
                                                                                             ## there
                                                                                             ## is
                                                                                             ## no
                                                                                             ## relation.

  PrsDimTangentRelationbaseType* = PrsDimRelation

proc getTypeName*(): cstring {.importcpp: "PrsDim_TangentRelation::get_type_name(@)",
                            header: "PrsDim_TangentRelation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_TangentRelation::get_type_descriptor(@)",
    header: "PrsDim_TangentRelation.hxx".}
proc dynamicType*(this: PrsDimTangentRelation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_TangentRelation.hxx".}
proc constructPrsDimTangentRelation*(aFShape: TopoDS_Shape; aSShape: TopoDS_Shape;
                                    aPlane: Handle[GeomPlane];
                                    anExternRef: StandardInteger = 0): PrsDimTangentRelation {.
    constructor, importcpp: "PrsDim_TangentRelation(@)",
    header: "PrsDim_TangentRelation.hxx".}
proc externRef*(this: var PrsDimTangentRelation): StandardInteger {.
    importcpp: "ExternRef", header: "PrsDim_TangentRelation.hxx".}
proc setExternRef*(this: var PrsDimTangentRelation; aRef: StandardInteger) {.
    importcpp: "SetExternRef", header: "PrsDim_TangentRelation.hxx".}

