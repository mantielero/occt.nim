import topopebrepds_types

##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_SurfaceCurveInterference"




proc newTopOpeBRepDS_SurfaceCurveInterference*(): TopOpeBRepDS_SurfaceCurveInterference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_SurfaceCurveInterference(@)",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc newTopOpeBRepDS_SurfaceCurveInterference*(
    transition: TopOpeBRepDS_Transition; supportType: TopOpeBRepDS_Kind;
    support: cint; geometryType: TopOpeBRepDS_Kind; geometry: cint;
    pc: Handle[Geom2dCurve]): TopOpeBRepDS_SurfaceCurveInterference {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_SurfaceCurveInterference(@)",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc newTopOpeBRepDS_SurfaceCurveInterference*(
    i: Handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_SurfaceCurveInterference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_SurfaceCurveInterference(@)",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc pCurve*(this: TopOpeBRepDS_SurfaceCurveInterference): Handle[Geom2dCurve] {.
    noSideEffect, cdecl, importcpp: "PCurve", header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc pCurve*(this: var TopOpeBRepDS_SurfaceCurveInterference;
            pc: Handle[Geom2dCurve]) {.cdecl, importcpp: "PCurve", header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
