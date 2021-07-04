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

import
  ../TopLoc/TopLoc_Location, ../gp/gp_Trsf, ../gp/gp_Pnt,
  ../TColStd/TColStd_HArray1OfInteger, Select3D_SensitiveEntity,
  ../SelectMgr/SelectMgr_SelectingVolumeManager, Select3D_SensitiveSet

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

  Select3D_SensitiveTriangulationbase_type* = Select3D_SensitiveSet

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveTriangulation::get_type_name(@)",
                              header: "Select3D_SensitiveTriangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveTriangulation::get_type_descriptor(@)",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc DynamicType*(this: Select3D_SensitiveTriangulation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc constructSelect3D_SensitiveTriangulation*(
    theOwnerId: handle[SelectMgr_EntityOwner]; theTrg: handle[Poly_Triangulation];
    theInitLoc: TopLoc_Location; theIsInterior: Standard_Boolean = Standard_True): Select3D_SensitiveTriangulation {.
    constructor, importcpp: "Select3D_SensitiveTriangulation(@)",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc constructSelect3D_SensitiveTriangulation*(
    theOwnerId: handle[SelectMgr_EntityOwner]; theTrg: handle[Poly_Triangulation];
    theInitLoc: TopLoc_Location; theFreeEdges: handle[TColStd_HArray1OfInteger];
    theCOG: gp_Pnt; theIsInterior: Standard_Boolean): Select3D_SensitiveTriangulation {.
    constructor, importcpp: "Select3D_SensitiveTriangulation(@)",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc NbSubElements*(this: Select3D_SensitiveTriangulation): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc GetConnected*(this: var Select3D_SensitiveTriangulation): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveTriangulation.hxx".}
proc Triangulation*(this: Select3D_SensitiveTriangulation): handle[
    Poly_Triangulation] {.noSideEffect, importcpp: "Triangulation",
                         header: "Select3D_SensitiveTriangulation.hxx".}
proc Size*(this: Select3D_SensitiveTriangulation): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitiveTriangulation.hxx".}
proc Box*(this: Select3D_SensitiveTriangulation; theIdx: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveTriangulation.hxx".}
proc Center*(this: Select3D_SensitiveTriangulation; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitiveTriangulation.hxx".}
proc Swap*(this: var Select3D_SensitiveTriangulation; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap", header: "Select3D_SensitiveTriangulation.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveTriangulation): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveTriangulation.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveTriangulation): gp_Pnt {.
    noSideEffect, importcpp: "CenterOfGeometry",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc HasInitLocation*(this: Select3D_SensitiveTriangulation): Standard_Boolean {.
    noSideEffect, importcpp: "HasInitLocation",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc InvInitLocation*(this: Select3D_SensitiveTriangulation): gp_GTrsf {.
    noSideEffect, importcpp: "InvInitLocation",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc GetInitLocation*(this: Select3D_SensitiveTriangulation): TopLoc_Location {.
    noSideEffect, importcpp: "GetInitLocation",
    header: "Select3D_SensitiveTriangulation.hxx".}
proc DumpJson*(this: Select3D_SensitiveTriangulation;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveTriangulation.hxx".}
discard "forward decl of Select3D_SensitiveTriangulation"
type
  Handle_Select3D_SensitiveTriangulation* = handle[Select3D_SensitiveTriangulation]
