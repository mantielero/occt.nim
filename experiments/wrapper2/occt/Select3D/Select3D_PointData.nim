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

##  A framework for safe management of Select3D_SensitivePoly polygons of 3D points

type
  Select3D_PointData* {.importcpp: "Select3D_PointData",
                       header: "Select3D_PointData.hxx", bycopy.} = object ##  Constructs internal array of 3D points defined
                                                                      ##  by number of points theNbPoints


proc constructSelect3D_PointData*(theNbPoints: int): Select3D_PointData {.
    constructor, importcpp: "Select3D_PointData(@)",
    header: "Select3D_PointData.hxx".}
proc destroySelect3D_PointData*(this: var Select3D_PointData) {.
    importcpp: "#.~Select3D_PointData()", header: "Select3D_PointData.hxx".}
proc setPnt*(this: var Select3D_PointData; theIndex: int; theValue: Select3D_Pnt) {.
    importcpp: "SetPnt", header: "Select3D_PointData.hxx".}
proc setPnt*(this: var Select3D_PointData; theIndex: int; theValue: Pnt) {.
    importcpp: "SetPnt", header: "Select3D_PointData.hxx".}
proc pnt*(this: Select3D_PointData; theIndex: int): Select3D_Pnt {.noSideEffect,
    importcpp: "Pnt", header: "Select3D_PointData.hxx".}
proc pnt3d*(this: Select3D_PointData; theIndex: int): Pnt {.noSideEffect,
    importcpp: "Pnt3d", header: "Select3D_PointData.hxx".}
proc size*(this: Select3D_PointData): int {.noSideEffect, importcpp: "Size",
                                        header: "Select3D_PointData.hxx".}
