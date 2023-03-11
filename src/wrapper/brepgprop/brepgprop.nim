import brepgprop_types
import ../topods/topods_types
import ../gprop/gprop_types
import ../gp/gp_types
##  Created on: 1992-12-04
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of GProp_GProps"
discard "forward decl of gp_Pln"

{.push header:"BRepGProp.hxx".}
proc LinearProperties*(S: TopoDS_Shape; LProps: var GProp_GProps;
                      SkipShared: bool = false; UseTriangulation: bool = false) {.cdecl,
    importcpp: "BRepGProp::LinearProperties(@)".}
proc SurfaceProperties*(S: TopoDS_Shape; SProps: var GProp_GProps;
                       SkipShared: bool = false; UseTriangulation: bool = false) {.
    cdecl, importcpp: "BRepGProp::SurfaceProperties(@)".}
proc SurfaceProperties*(S: TopoDS_Shape; SProps: var GProp_GProps; Eps: cfloat;
                       SkipShared: bool = false): cfloat {.cdecl,
    importcpp: "BRepGProp::SurfaceProperties(@)".}
proc VolumeProperties*(S: TopoDS_Shape; VProps: var GProp_GProps;
                      OnlyClosed: bool = false; SkipShared: bool = false;
                      UseTriangulation: bool = false) {.cdecl,
    importcpp: "BRepGProp::VolumeProperties(@)".}
proc VolumeProperties*(S: TopoDS_Shape; VProps: var GProp_GProps; Eps: cfloat;
                      OnlyClosed: bool = false; SkipShared: bool = false): cfloat {.
    cdecl, importcpp: "BRepGProp::VolumeProperties(@)".}
proc VolumePropertiesGK*(S: TopoDS_Shape; VProps: var GProp_GProps;
                        Eps: cfloat = 0.001; OnlyClosed: bool = false;
                        IsUseSpan: bool = false; CGFlag: bool = false;
                        IFlag: bool = false; SkipShared: bool = false): cfloat {.cdecl,
    importcpp: "BRepGProp::VolumePropertiesGK(@)".}
proc VolumePropertiesGK*(S: TopoDS_Shape; VProps: var GProp_GProps; thePln: gp_Pln;
                        Eps: cfloat = 0.001; OnlyClosed: bool = false;
                        IsUseSpan: bool = false; CGFlag: bool = false;
                        IFlag: bool = false; SkipShared: bool = false): cfloat {.cdecl,
    importcpp: "BRepGProp::VolumePropertiesGK(@)".}
{.pop.}