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

  AIS_PointCloudbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_PointCloud::get_type_name(@)",
                            header: "AIS_PointCloud.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_PointCloud::get_type_descriptor(@)",
    header: "AIS_PointCloud.hxx".}
proc dynamicType*(this: AIS_PointCloud): Handle[StandardType] {.noSideEffect,
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
proc setPoints*(this: var AIS_PointCloud; thePoints: Handle[Graphic3dArrayOfPoints]) {.
    importcpp: "SetPoints", header: "AIS_PointCloud.hxx".}
proc setPoints*(this: var AIS_PointCloud; theCoords: Handle[TColgpHArray1OfPnt];
               theColors: Handle[QuantityHArray1OfColor] = nil;
               theNormals: Handle[TColgpHArray1OfDir] = nil) {.
    importcpp: "SetPoints", header: "AIS_PointCloud.hxx".}
proc getPoints*(this: AIS_PointCloud): Handle[Graphic3dArrayOfPoints] {.
    noSideEffect, importcpp: "GetPoints", header: "AIS_PointCloud.hxx".}
proc getBoundingBox*(this: AIS_PointCloud): BndBox {.noSideEffect,
    importcpp: "GetBoundingBox", header: "AIS_PointCloud.hxx".}
proc setColor*(this: var AIS_PointCloud; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_PointCloud.hxx".}
proc unsetColor*(this: var AIS_PointCloud) {.importcpp: "UnsetColor",
    header: "AIS_PointCloud.hxx".}
proc setMaterial*(this: var AIS_PointCloud; theMat: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_PointCloud.hxx".}
proc unsetMaterial*(this: var AIS_PointCloud) {.importcpp: "UnsetMaterial",
    header: "AIS_PointCloud.hxx".}
discard "forward decl of AIS_PointCloud"
type
  HandleAIS_PointCloud* = Handle[AIS_PointCloud]

## ! Custom owner for highlighting selected points.

type
  AIS_PointCloudOwner* {.importcpp: "AIS_PointCloudOwner",
                        header: "AIS_PointCloud.hxx", bycopy.} = object of SelectMgrEntityOwner ##
                                                                                         ## !
                                                                                         ## Main
                                                                                         ## constructor.
    ## !< last detected points
    ## !< selected points

  AIS_PointCloudOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "AIS_PointCloudOwner::get_type_name(@)",
                            header: "AIS_PointCloud.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_PointCloudOwner::get_type_descriptor(@)",
    header: "AIS_PointCloud.hxx".}
proc dynamicType*(this: AIS_PointCloudOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_PointCloud.hxx".}
proc constructAIS_PointCloudOwner*(theOrigin: Handle[AIS_PointCloud]): AIS_PointCloudOwner {.
    constructor, importcpp: "AIS_PointCloudOwner(@)", header: "AIS_PointCloud.hxx".}
proc destroyAIS_PointCloudOwner*(this: var AIS_PointCloudOwner) {.
    importcpp: "#.~AIS_PointCloudOwner()", header: "AIS_PointCloud.hxx".}
proc selectedPoints*(this: AIS_PointCloudOwner): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, importcpp: "SelectedPoints", header: "AIS_PointCloud.hxx".}
proc detectedPoints*(this: AIS_PointCloudOwner): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, importcpp: "DetectedPoints", header: "AIS_PointCloud.hxx".}
proc isForcedHilight*(this: AIS_PointCloudOwner): bool {.noSideEffect,
    importcpp: "IsForcedHilight", header: "AIS_PointCloud.hxx".}
proc hilightWithColor*(this: var AIS_PointCloudOwner;
                      thePrsMgr: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: int) {.
    importcpp: "HilightWithColor", header: "AIS_PointCloud.hxx".}
proc unhilight*(this: var AIS_PointCloudOwner;
               thePrsMgr: Handle[PrsMgrPresentationManager]; theMode: int) {.
    importcpp: "Unhilight", header: "AIS_PointCloud.hxx".}
proc clear*(this: var AIS_PointCloudOwner;
           thePrsMgr: Handle[PrsMgrPresentationManager]; theMode: int) {.
    importcpp: "Clear", header: "AIS_PointCloud.hxx".}
