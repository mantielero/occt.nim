##  Created on: 1997-05-15
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

discard "forward decl of Poly_Triangulation"
type
  Select3D_SensitiveTriangulation* {.importcpp: "Select3D_SensitiveTriangulation", header: "Select3D_SensitiveTriangulation.hxx",
                                    bycopy.} = object of Select3D_SensitiveSet ## !
                                                                          ## Constructs a
                                                                          ## sensitive
                                                                          ## triangulation object
                                                                          ## defined by
                                                                          ## ! the owner
                                                                          ## theOwnerId, the
                                                                          ## triangulation
                                                                          ## theTrg,
                                                                          ## ! the
                                                                          ## location
                                                                          ## theInitLoc, and the flag
                                                                          ## theIsInterior.
                                                                          ## ! Inner
                                                                          ## function for
                                                                          ## transformation
                                                                          ## application to
                                                                          ## bounding
                                                                          ## ! box of the
                                                                          ## triangulation
                                                                          ## ! Checks
                                                                          ## whether the
                                                                          ## element with index theIdx
                                                                          ## overlaps the
                                                                          ## current
                                                                          ## selecting volume
    ## !< Center of the whole triangulation
    ## !< Type of sensitivity: boundary or interior
    ## !< Amount of free edges or triangles depending on sensitivity type
    ## !< Indexes of edges or triangles for BVH build
    ## !< Bounding box of the whole triangulation

  Select3D_SensitiveTriangulationbaseType* = Select3D_SensitiveSet

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveTriangulation::get_type_name(@)",
                            header: "Select3D_SensitiveTriangulation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveTriangulation::get_type_descriptor(@)",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc dynamicType*(this: Select3D_SensitiveTriangulation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc constructSelect3D_SensitiveTriangulation*(
    theOwnerId: Handle[SelectMgrEntityOwner]; theTrg: Handle[PolyTriangulation];
    theInitLoc: TopLocLocation; theIsInterior: StandardBoolean = standardTrue): Select3D_SensitiveTriangulation {.
    constructor, importcpp: "Select3D_SensitiveTriangulation(@)",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc constructSelect3D_SensitiveTriangulation*(
    theOwnerId: Handle[SelectMgrEntityOwner]; theTrg: Handle[PolyTriangulation];
    theInitLoc: TopLocLocation; theFreeEdges: Handle[TColStdHArray1OfInteger];
    theCOG: GpPnt; theIsInterior: StandardBoolean): Select3D_SensitiveTriangulation {.
    constructor, importcpp: "Select3D_SensitiveTriangulation(@)",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc nbSubElements*(this: Select3D_SensitiveTriangulation): StandardInteger {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc getConnected*(this: var Select3D_SensitiveTriangulation): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveTriangulation.hxx".}
proc triangulation*(this: Select3D_SensitiveTriangulation): Handle[
    PolyTriangulation] {.noSideEffect, importcpp: "Triangulation",
                        header: "Select3D_SensitiveTriangulation.hxx".}
proc size*(this: Select3D_SensitiveTriangulation): StandardInteger {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitiveTriangulation.hxx".}
proc box*(this: Select3D_SensitiveTriangulation; theIdx: StandardInteger): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveTriangulation.hxx".}
proc center*(this: Select3D_SensitiveTriangulation; theIdx: StandardInteger;
            theAxis: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitiveTriangulation.hxx".}
proc swap*(this: var Select3D_SensitiveTriangulation; theIdx1: StandardInteger;
          theIdx2: StandardInteger) {.importcpp: "Swap", header: "Select3D_SensitiveTriangulation.hxx".}
proc boundingBox*(this: var Select3D_SensitiveTriangulation): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveTriangulation.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveTriangulation): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveTriangulation.hxx".}
proc hasInitLocation*(this: Select3D_SensitiveTriangulation): StandardBoolean {.
    noSideEffect, importcpp: "HasInitLocation",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc invInitLocation*(this: Select3D_SensitiveTriangulation): GpGTrsf {.
    noSideEffect, importcpp: "InvInitLocation",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc getInitLocation*(this: Select3D_SensitiveTriangulation): TopLocLocation {.
    noSideEffect, importcpp: "GetInitLocation",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc dumpJson*(this: Select3D_SensitiveTriangulation;
              theOStream: var StandardOStream; theDepth: StandardInteger = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveTriangulation.hxx".}
discard "forward decl of Select3D_SensitiveTriangulation"
type
  HandleSelect3D_SensitiveTriangulation* = Handle[Select3D_SensitiveTriangulation]


