import ../../tkmath/tcolgp/tcolgp_types
import ../../tkernel/standard/standard_types
import ais_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types
import ../../tkernel/tcolstd/tcolstd_types
import ../graphic3d/graphic3d_types
import ../../tkernel/quantity/quantity_types
import ../../tkmath/bnd/bnd_types





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






proc newAIS_PointCloud*(): AIS_PointCloud {.cdecl, constructor,
    importcpp: "AIS_PointCloud(@)", header: "AIS_PointCloud.hxx".}
proc setPoints*(this: var AIS_PointCloud; thePoints: Handle[Graphic3dArrayOfPoints]) {.
    cdecl, importcpp: "SetPoints", header: "AIS_PointCloud.hxx".}
proc setPoints*(this: var AIS_PointCloud; theCoords: Handle[TColgpHArray1OfPnt];
               theColors: Handle[QuantityHArray1OfColor] = cast[Handle[QuantityHArray1OfColor]](nil);
               theNormals: Handle[TColgpHArray1OfDir] = cast[Handle[TColgpHArray1OfDir]](nil)) {.cdecl,
    importcpp: "SetPoints", header: "AIS_PointCloud.hxx".}
proc getPoints*(this: AIS_PointCloud): Handle[Graphic3dArrayOfPoints] {.
    noSideEffect, cdecl, importcpp: "GetPoints", header: "AIS_PointCloud.hxx".}
proc getBoundingBox*(this: AIS_PointCloud): BndBox {.noSideEffect, cdecl,
    importcpp: "GetBoundingBox", header: "AIS_PointCloud.hxx".}
proc setColor*(this: var AIS_PointCloud; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_PointCloud.hxx".}
proc unsetColor*(this: var AIS_PointCloud) {.cdecl, importcpp: "UnsetColor",
    header: "AIS_PointCloud.hxx".}
proc setMaterial*(this: var AIS_PointCloud; theMat: Graphic3dMaterialAspect) {.cdecl,
    importcpp: "SetMaterial", header: "AIS_PointCloud.hxx".}
proc unsetMaterial*(this: var AIS_PointCloud) {.cdecl, importcpp: "UnsetMaterial",
    header: "AIS_PointCloud.hxx".}




proc newAIS_PointCloudOwner*(theOrigin: Handle[AIS_PointCloud]): AIS_PointCloudOwner {.
    cdecl, constructor, importcpp: "AIS_PointCloudOwner(@)", header: "AIS_PointCloud.hxx".}
proc destroyAIS_PointCloudOwner*(this: var AIS_PointCloudOwner) {.cdecl,
    importcpp: "#.~AIS_PointCloudOwner()", header: "AIS_PointCloud.hxx".}
proc selectedPoints*(this: AIS_PointCloudOwner): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, cdecl, importcpp: "SelectedPoints", header: "AIS_PointCloud.hxx".}
proc detectedPoints*(this: AIS_PointCloudOwner): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, cdecl, importcpp: "DetectedPoints", header: "AIS_PointCloud.hxx".}
proc isForcedHilight*(this: AIS_PointCloudOwner): bool {.noSideEffect, cdecl,
    importcpp: "IsForcedHilight", header: "AIS_PointCloud.hxx".}
proc hilightWithColor*(this: var AIS_PointCloudOwner;
                      thePrsMgr: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: cint) {.cdecl,
    importcpp: "HilightWithColor", header: "AIS_PointCloud.hxx".}
proc unhilight*(this: var AIS_PointCloudOwner;
               thePrsMgr: Handle[PrsMgrPresentationManager]; theMode: cint) {.cdecl,
    importcpp: "Unhilight", header: "AIS_PointCloud.hxx".}
proc clear*(this: var AIS_PointCloudOwner;
           thePrsMgr: Handle[PrsMgrPresentationManager]; theMode: cint) {.cdecl,
    importcpp: "Clear", header: "AIS_PointCloud.hxx".}


