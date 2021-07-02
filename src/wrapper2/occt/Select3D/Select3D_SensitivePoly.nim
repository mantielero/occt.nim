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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
type
  Select3D_SensitivePoly* {.importcpp: "Select3D_SensitivePoly",
                           header: "Select3D_SensitivePoly.hxx", bycopy.} = object of Select3D_SensitiveSet ##
                                                                                                     ## !
                                                                                                     ## Constructs
                                                                                                     ## a
                                                                                                     ## sensitive
                                                                                                     ## face
                                                                                                     ## object
                                                                                                     ## defined
                                                                                                     ## by
                                                                                                     ## the
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## owner
                                                                                                     ## OwnerId,
                                                                                                     ## the
                                                                                                     ## array
                                                                                                     ## of
                                                                                                     ## points
                                                                                                     ## ThePoints,
                                                                                                     ## and
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## sensitivity
                                                                                                     ## type
                                                                                                     ## Sensitivity.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## The
                                                                                                     ## array
                                                                                                     ## of
                                                                                                     ## points
                                                                                                     ## is
                                                                                                     ## the
                                                                                                     ## outer
                                                                                                     ## polygon
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## geometric
                                                                                                     ## face.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Checks
                                                                                                     ## whether
                                                                                                     ## the
                                                                                                     ## segment
                                                                                                     ## with
                                                                                                     ## index
                                                                                                     ## theIdx
                                                                                                     ## overlaps
                                                                                                     ## the
                                                                                                     ## current
                                                                                                     ## selecting
                                                                                                     ## volume
    ## !< Points of the poly
    ## !< Center of the poly
    ## !< Segment indexes for BVH tree build
    ## !< Bounding box of the poly
    ## !< Is true if all the points and data structures of polygon are initialized

  Select3D_SensitivePolybaseType* = Select3D_SensitiveSet

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitivePoly::get_type_name(@)",
                            header: "Select3D_SensitivePoly.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitivePoly::get_type_descriptor(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc dynamicType*(this: Select3D_SensitivePoly): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitivePoly.hxx".}
proc constructSelect3D_SensitivePoly*(theOwnerId: Handle[SelectMgrEntityOwner];
                                     thePoints: TColgpArray1OfPnt;
                                     theIsBVHEnabled: StandardBoolean): Select3D_SensitivePoly {.
    constructor, importcpp: "Select3D_SensitivePoly(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc constructSelect3D_SensitivePoly*(theOwnerId: Handle[SelectMgrEntityOwner];
                                     thePoints: Handle[TColgpHArray1OfPnt];
                                     theIsBVHEnabled: StandardBoolean): Select3D_SensitivePoly {.
    constructor, importcpp: "Select3D_SensitivePoly(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc constructSelect3D_SensitivePoly*(theOwnerId: Handle[SelectMgrEntityOwner];
                                     theIsBVHEnabled: StandardBoolean;
                                     theNbPnts: StandardInteger = 6): Select3D_SensitivePoly {.
    constructor, importcpp: "Select3D_SensitivePoly(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc nbSubElements*(this: Select3D_SensitivePoly): StandardInteger {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitivePoly.hxx".}
proc points3D*(this: var Select3D_SensitivePoly;
              theHArrayOfPnt: var Handle[TColgpHArray1OfPnt]) {.
    importcpp: "Points3D", header: "Select3D_SensitivePoly.hxx".}
proc arrayBounds*(this: Select3D_SensitivePoly; theLow: var StandardInteger;
                 theUp: var StandardInteger) {.noSideEffect,
    importcpp: "ArrayBounds", header: "Select3D_SensitivePoly.hxx".}
proc getPoint3d*(this: Select3D_SensitivePoly; thePntIdx: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "GetPoint3d", header: "Select3D_SensitivePoly.hxx".}
proc boundingBox*(this: var Select3D_SensitivePoly): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitivePoly.hxx".}
proc centerOfGeometry*(this: Select3D_SensitivePoly): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitivePoly.hxx".}
proc size*(this: Select3D_SensitivePoly): StandardInteger {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitivePoly.hxx".}
proc box*(this: Select3D_SensitivePoly; theIdx: StandardInteger): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitivePoly.hxx".}
proc center*(this: Select3D_SensitivePoly; theIdx: StandardInteger;
            theAxis: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitivePoly.hxx".}
proc swap*(this: var Select3D_SensitivePoly; theIdx1: StandardInteger;
          theIdx2: StandardInteger) {.importcpp: "Swap",
                                    header: "Select3D_SensitivePoly.hxx".}
proc dumpJson*(this: Select3D_SensitivePoly; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitivePoly.hxx".}
discard "forward decl of Select3D_SensitivePoly"
type
  HandleSelect3D_SensitivePoly* = Handle[Select3D_SensitivePoly]


