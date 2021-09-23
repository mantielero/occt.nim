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
  Select3D_PointData, Select3D_SensitiveSet, Select3D_TypeOfSensitivity,
  ../TColStd/TColStd_HArray1OfInteger, ../TColgp/TColgp_HArray1OfPnt

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

  Select3D_SensitivePolybase_type* = Select3D_SensitiveSet

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitivePoly::get_type_name(@)",
                              header: "Select3D_SensitivePoly.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitivePoly::get_type_descriptor(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc DynamicType*(this: Select3D_SensitivePoly): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitivePoly.hxx".}
proc constructSelect3D_SensitivePoly*(theOwnerId: handle[SelectMgr_EntityOwner];
                                     thePoints: TColgp_Array1OfPnt;
                                     theIsBVHEnabled: Standard_Boolean): Select3D_SensitivePoly {.
    constructor, importcpp: "Select3D_SensitivePoly(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc constructSelect3D_SensitivePoly*(theOwnerId: handle[SelectMgr_EntityOwner];
                                     thePoints: handle[TColgp_HArray1OfPnt];
                                     theIsBVHEnabled: Standard_Boolean): Select3D_SensitivePoly {.
    constructor, importcpp: "Select3D_SensitivePoly(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc constructSelect3D_SensitivePoly*(theOwnerId: handle[SelectMgr_EntityOwner];
                                     theIsBVHEnabled: Standard_Boolean;
                                     theNbPnts: Standard_Integer = 6): Select3D_SensitivePoly {.
    constructor, importcpp: "Select3D_SensitivePoly(@)",
    header: "Select3D_SensitivePoly.hxx".}
proc NbSubElements*(this: Select3D_SensitivePoly): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitivePoly.hxx".}
proc Points3D*(this: var Select3D_SensitivePoly;
              theHArrayOfPnt: var handle[TColgp_HArray1OfPnt]) {.
    importcpp: "Points3D", header: "Select3D_SensitivePoly.hxx".}
proc ArrayBounds*(this: Select3D_SensitivePoly; theLow: var Standard_Integer;
                 theUp: var Standard_Integer) {.noSideEffect,
    importcpp: "ArrayBounds", header: "Select3D_SensitivePoly.hxx".}
proc GetPoint3d*(this: Select3D_SensitivePoly; thePntIdx: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "GetPoint3d", header: "Select3D_SensitivePoly.hxx".}
proc BoundingBox*(this: var Select3D_SensitivePoly): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitivePoly.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitivePoly): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitivePoly.hxx".}
proc Size*(this: Select3D_SensitivePoly): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitivePoly.hxx".}
proc Box*(this: Select3D_SensitivePoly; theIdx: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitivePoly.hxx".}
proc Center*(this: Select3D_SensitivePoly; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitivePoly.hxx".}
proc Swap*(this: var Select3D_SensitivePoly; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap",
                                     header: "Select3D_SensitivePoly.hxx".}
proc DumpJson*(this: Select3D_SensitivePoly; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitivePoly.hxx".}
discard "forward decl of Select3D_SensitivePoly"
type
  Handle_Select3D_SensitivePoly* = handle[Select3D_SensitivePoly]
