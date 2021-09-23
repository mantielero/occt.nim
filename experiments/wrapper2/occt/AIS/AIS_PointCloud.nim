##  Created on: 2014-08-13
##  Created by: Maxim GLIBIN
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  AIS, AIS_InteractiveObject, ../Bnd/Bnd_Box, ../Graphic3d/Graphic3d_ArrayOfPoints,
  ../Quantity/Quantity_HArray1OfColor, ../SelectMgr/SelectMgr_EntityOwner,
  ../TColgp/TColgp_HArray1OfDir, ../TColgp/TColgp_HArray1OfPnt

discard "forward decl of TColStd_HPackedMapOfInteger"
type
  AIS_PointCloud* {.importcpp: "AIS_PointCloud", header: "AIS_PointCloud.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                                ## !
                                                                                                                ## Display
                                                                                                                ## modes
                                                                                                                ## supported
                                                                                                                ## by
                                                                                                                ## this
                                                                                                                ## Point
                                                                                                                ## Cloud
                                                                                                                ## object
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Constructor.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Get
                                                                                                                ## the
                                                                                                                ## points
                                                                                                                ## array.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Method
                                                                                                                ## might
                                                                                                                ## be
                                                                                                                ## overridden
                                                                                                                ## to
                                                                                                                ## fill
                                                                                                                ## in
                                                                                                                ## points
                                                                                                                ## array
                                                                                                                ## dynamically
                                                                                                                ## from
                                                                                                                ## application
                                                                                                                ## data
                                                                                                                ## structures.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @return
                                                                                                                ## the
                                                                                                                ## array
                                                                                                                ## of
                                                                                                                ## points
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Setup
                                                                                                                ## custom
                                                                                                                ## color.
                                                                                                                ## Affects
                                                                                                                ## presentation
                                                                                                                ## only
                                                                                                                ## when
                                                                                                                ## no
                                                                                                                ## per-point
                                                                                                                ## color
                                                                                                                ## attribute
                                                                                                                ## has
                                                                                                                ## been
                                                                                                                ## assigned.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Prepare
                                                                                                                ## presentation
                                                                                                                ## for
                                                                                                                ## this
                                                                                                                ## object.
    ## !< points array for presentation
    ## !< bounding box for presentation

  AIS_PointCloudbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_PointCloud::get_type_name(@)",
                              header: "AIS_PointCloud.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_PointCloud::get_type_descriptor(@)",
    header: "AIS_PointCloud.hxx".}
proc DynamicType*(this: AIS_PointCloud): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_PointCloud.hxx".}
type
  AIS_PointCloudDisplayMode* {.size: sizeof(cint),
                              importcpp: "AIS_PointCloud::DisplayMode",
                              header: "AIS_PointCloud.hxx".} = enum
    DM_Points = 0,              ## !< display as normal points, default presentation
    DM_BndBox = 2


type
  AIS_PointCloudSelectionMode* {.size: sizeof(cint),
                                importcpp: "AIS_PointCloud::SelectionMode",
                                header: "AIS_PointCloud.hxx".} = enum
    SM_Points = 0,              ## !< detected by points
    SM_SubsetOfPoints = 1,      ## !< detect point(s) within Point Cloud rather than object as whole
    SM_BndBox = 2               ## !< detected by bounding box


proc constructAIS_PointCloud*(): AIS_PointCloud {.constructor,
    importcpp: "AIS_PointCloud(@)", header: "AIS_PointCloud.hxx".}
proc SetPoints*(this: var AIS_PointCloud; thePoints: handle[Graphic3d_ArrayOfPoints]) {.
    importcpp: "SetPoints", header: "AIS_PointCloud.hxx".}
proc SetPoints*(this: var AIS_PointCloud; theCoords: handle[TColgp_HArray1OfPnt];
               theColors: handle[Quantity_HArray1OfColor] = nil;
               theNormals: handle[TColgp_HArray1OfDir] = nil) {.
    importcpp: "SetPoints", header: "AIS_PointCloud.hxx".}
proc GetPoints*(this: AIS_PointCloud): handle[Graphic3d_ArrayOfPoints] {.
    noSideEffect, importcpp: "GetPoints", header: "AIS_PointCloud.hxx".}
proc GetBoundingBox*(this: AIS_PointCloud): Bnd_Box {.noSideEffect,
    importcpp: "GetBoundingBox", header: "AIS_PointCloud.hxx".}
proc SetColor*(this: var AIS_PointCloud; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_PointCloud.hxx".}
proc UnsetColor*(this: var AIS_PointCloud) {.importcpp: "UnsetColor",
    header: "AIS_PointCloud.hxx".}
proc SetMaterial*(this: var AIS_PointCloud; theMat: Graphic3d_MaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_PointCloud.hxx".}
proc UnsetMaterial*(this: var AIS_PointCloud) {.importcpp: "UnsetMaterial",
    header: "AIS_PointCloud.hxx".}
discard "forward decl of AIS_PointCloud"
type
  Handle_AIS_PointCloud* = handle[AIS_PointCloud]

## ! Custom owner for highlighting selected points.

type
  AIS_PointCloudOwner* {.importcpp: "AIS_PointCloudOwner",
                        header: "AIS_PointCloud.hxx", bycopy.} = object of SelectMgr_EntityOwner ##
                                                                                          ## !
                                                                                          ## Main
                                                                                          ## constructor.
    ## !< last detected points
    ## !< selected points

  AIS_PointCloudOwnerbase_type* = SelectMgr_EntityOwner

proc get_type_name*(): cstring {.importcpp: "AIS_PointCloudOwner::get_type_name(@)",
                              header: "AIS_PointCloud.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_PointCloudOwner::get_type_descriptor(@)",
    header: "AIS_PointCloud.hxx".}
proc DynamicType*(this: AIS_PointCloudOwner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_PointCloud.hxx".}
proc constructAIS_PointCloudOwner*(theOrigin: handle[AIS_PointCloud]): AIS_PointCloudOwner {.
    constructor, importcpp: "AIS_PointCloudOwner(@)", header: "AIS_PointCloud.hxx".}
proc destroyAIS_PointCloudOwner*(this: var AIS_PointCloudOwner) {.
    importcpp: "#.~AIS_PointCloudOwner()", header: "AIS_PointCloud.hxx".}
proc SelectedPoints*(this: AIS_PointCloudOwner): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "SelectedPoints", header: "AIS_PointCloud.hxx".}
proc DetectedPoints*(this: AIS_PointCloudOwner): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "DetectedPoints", header: "AIS_PointCloud.hxx".}
proc IsForcedHilight*(this: AIS_PointCloudOwner): Standard_Boolean {.noSideEffect,
    importcpp: "IsForcedHilight", header: "AIS_PointCloud.hxx".}
proc HilightWithColor*(this: var AIS_PointCloudOwner;
                      thePrsMgr: handle[PrsMgr_PresentationManager3d];
                      theStyle: handle[Prs3d_Drawer]; theMode: Standard_Integer) {.
    importcpp: "HilightWithColor", header: "AIS_PointCloud.hxx".}
proc Unhilight*(this: var AIS_PointCloudOwner;
               thePrsMgr: handle[PrsMgr_PresentationManager];
               theMode: Standard_Integer) {.importcpp: "Unhilight",
    header: "AIS_PointCloud.hxx".}
proc Clear*(this: var AIS_PointCloudOwner;
           thePrsMgr: handle[PrsMgr_PresentationManager];
           theMode: Standard_Integer) {.importcpp: "Clear",
                                      header: "AIS_PointCloud.hxx".}