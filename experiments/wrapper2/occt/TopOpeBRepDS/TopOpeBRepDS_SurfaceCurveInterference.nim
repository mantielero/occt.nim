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

import
  ../Standard/Standard, ../Standard/Standard_Type, TopOpeBRepDS_Interference,
  TopOpeBRepDS_Kind, ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_SurfaceCurveInterference"
discard "forward decl of TopOpeBRepDS_SurfaceCurveInterference"
type
  Handle_TopOpeBRepDS_SurfaceCurveInterference* = handle[
      TopOpeBRepDS_SurfaceCurveInterference]

## ! an interference with a 2d curve

type
  TopOpeBRepDS_SurfaceCurveInterference* {.
      importcpp: "TopOpeBRepDS_SurfaceCurveInterference",
      header: "TopOpeBRepDS_SurfaceCurveInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference


proc constructTopOpeBRepDS_SurfaceCurveInterference*(): TopOpeBRepDS_SurfaceCurveInterference {.
    constructor, importcpp: "TopOpeBRepDS_SurfaceCurveInterference(@)",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc constructTopOpeBRepDS_SurfaceCurveInterference*(
    Transition: TopOpeBRepDS_Transition; SupportType: TopOpeBRepDS_Kind;
    Support: Standard_Integer; GeometryType: TopOpeBRepDS_Kind;
    Geometry: Standard_Integer; PC: handle[Geom2d_Curve]): TopOpeBRepDS_SurfaceCurveInterference {.
    constructor, importcpp: "TopOpeBRepDS_SurfaceCurveInterference(@)",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc constructTopOpeBRepDS_SurfaceCurveInterference*(
    I: handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_SurfaceCurveInterference {.
    constructor, importcpp: "TopOpeBRepDS_SurfaceCurveInterference(@)",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc PCurve*(this: TopOpeBRepDS_SurfaceCurveInterference): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurve",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc PCurve*(this: var TopOpeBRepDS_SurfaceCurveInterference;
            PC: handle[Geom2d_Curve]) {.importcpp: "PCurve", header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
type
  TopOpeBRepDS_SurfaceCurveInterferencebase_type* = TopOpeBRepDS_Interference

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_SurfaceCurveInterference::get_type_name(@)", header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_SurfaceCurveInterference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}
proc DynamicType*(this: TopOpeBRepDS_SurfaceCurveInterference): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "TopOpeBRepDS_SurfaceCurveInterference.hxx".}