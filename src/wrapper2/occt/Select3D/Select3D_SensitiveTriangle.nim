##  Created on: 1997-05-14
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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
  Select3D_SensitiveTriangle* {.importcpp: "Select3D_SensitiveTriangle",
                               header: "Select3D_SensitiveTriangle.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                                ## !
                                                                                                                ## Constructs
                                                                                                                ## a
                                                                                                                ## sensitive
                                                                                                                ## triangle
                                                                                                                ## object
                                                                                                                ## defined
                                                                                                                ## by
                                                                                                                ## the
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## owner
                                                                                                                ## theOwnerId,
                                                                                                                ## the
                                                                                                                ## points
                                                                                                                ## P1,
                                                                                                                ## P2,
                                                                                                                ## P3,
                                                                                                                ## and
                                                                                                                ## the
                                                                                                                ## type
                                                                                                                ## of
                                                                                                                ## sensitivity
                                                                                                                ## Sensitivity.
    ## !< Type of sensitivity: boundary or interior
    ## !< Center of triangle


proc constructSelect3D_SensitiveTriangle*(
    theOwnerId: Handle[SelectMgrEntityOwner]; thePnt0: GpPnt; thePnt1: GpPnt;
    thePnt2: GpPnt; theType: Select3D_TypeOfSensitivity = select3D_TOS_INTERIOR): Select3D_SensitiveTriangle {.
    constructor, importcpp: "Select3D_SensitiveTriangle(@)",
    header: "Select3D_SensitiveTriangle.hxx".}
proc matches*(this: var Select3D_SensitiveTriangle;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    importcpp: "Matches", header: "Select3D_SensitiveTriangle.hxx".}
proc points3D*(this: Select3D_SensitiveTriangle; thePnt0: var GpPnt;
              thePnt1: var GpPnt; thePnt2: var GpPnt) {.noSideEffect,
    importcpp: "Points3D", header: "Select3D_SensitiveTriangle.hxx".}
proc center3D*(this: Select3D_SensitiveTriangle): GpPnt {.noSideEffect,
    importcpp: "Center3D", header: "Select3D_SensitiveTriangle.hxx".}
proc getConnected*(this: var Select3D_SensitiveTriangle): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveTriangle.hxx".}
proc boundingBox*(this: var Select3D_SensitiveTriangle): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveTriangle.hxx".}
proc toBuildBVH*(this: Select3D_SensitiveTriangle): StandardBoolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveTriangle.hxx".}
proc nbSubElements*(this: Select3D_SensitiveTriangle): StandardInteger {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitiveTriangle.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveTriangle): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveTriangle.hxx".}
proc dumpJson*(this: Select3D_SensitiveTriangle; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveTriangle.hxx".}
type
  Select3D_SensitiveTrianglebaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveTriangle::get_type_name(@)",
                            header: "Select3D_SensitiveTriangle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveTriangle::get_type_descriptor(@)",
    header: "Select3D_SensitiveTriangle.hxx".}
proc dynamicType*(this: Select3D_SensitiveTriangle): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Select3D_SensitiveTriangle.hxx".}
discard "forward decl of Select3D_SensitiveTriangle"
type
  HandleSelect3D_SensitiveTriangle* = Handle[Select3D_SensitiveTriangle]


