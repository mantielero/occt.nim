##  Created on: 1993-11-16
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
type
  ChFiDS_FaceInterference* {.importcpp: "ChFiDS_FaceInterference",
                            header: "ChFiDS_FaceInterference.hxx", bycopy.} = object


proc constructChFiDS_FaceInterference*(): ChFiDS_FaceInterference {.constructor,
    importcpp: "ChFiDS_FaceInterference(@)", header: "ChFiDS_FaceInterference.hxx".}
proc SetInterference*(this: var ChFiDS_FaceInterference;
                     LineIndex: Standard_Integer; Trans: TopAbs_Orientation;
                     PCurv1: handle[Geom2d_Curve]; PCurv2: handle[Geom2d_Curve]) {.
    importcpp: "SetInterference", header: "ChFiDS_FaceInterference.hxx".}
proc SetTransition*(this: var ChFiDS_FaceInterference; Trans: TopAbs_Orientation) {.
    importcpp: "SetTransition", header: "ChFiDS_FaceInterference.hxx".}
proc SetFirstParameter*(this: var ChFiDS_FaceInterference; U1: Standard_Real) {.
    importcpp: "SetFirstParameter", header: "ChFiDS_FaceInterference.hxx".}
proc SetLastParameter*(this: var ChFiDS_FaceInterference; U1: Standard_Real) {.
    importcpp: "SetLastParameter", header: "ChFiDS_FaceInterference.hxx".}
proc SetParameter*(this: var ChFiDS_FaceInterference; U1: Standard_Real;
                  IsFirst: Standard_Boolean) {.importcpp: "SetParameter",
    header: "ChFiDS_FaceInterference.hxx".}
proc LineIndex*(this: ChFiDS_FaceInterference): Standard_Integer {.noSideEffect,
    importcpp: "LineIndex", header: "ChFiDS_FaceInterference.hxx".}
proc SetLineIndex*(this: var ChFiDS_FaceInterference; I: Standard_Integer) {.
    importcpp: "SetLineIndex", header: "ChFiDS_FaceInterference.hxx".}
proc Transition*(this: ChFiDS_FaceInterference): TopAbs_Orientation {.noSideEffect,
    importcpp: "Transition", header: "ChFiDS_FaceInterference.hxx".}
proc PCurveOnFace*(this: ChFiDS_FaceInterference): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurveOnFace", header: "ChFiDS_FaceInterference.hxx".}
proc PCurveOnSurf*(this: ChFiDS_FaceInterference): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurveOnSurf", header: "ChFiDS_FaceInterference.hxx".}
proc ChangePCurveOnFace*(this: var ChFiDS_FaceInterference): var handle[Geom2d_Curve] {.
    importcpp: "ChangePCurveOnFace", header: "ChFiDS_FaceInterference.hxx".}
proc ChangePCurveOnSurf*(this: var ChFiDS_FaceInterference): var handle[Geom2d_Curve] {.
    importcpp: "ChangePCurveOnSurf", header: "ChFiDS_FaceInterference.hxx".}
proc FirstParameter*(this: ChFiDS_FaceInterference): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "ChFiDS_FaceInterference.hxx".}
proc LastParameter*(this: ChFiDS_FaceInterference): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "ChFiDS_FaceInterference.hxx".}
proc Parameter*(this: ChFiDS_FaceInterference; IsFirst: Standard_Boolean): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "ChFiDS_FaceInterference.hxx".}