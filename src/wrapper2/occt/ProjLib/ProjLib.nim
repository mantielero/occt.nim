##  Created on: 1993-08-11
##  Created by: Bruno DUMORTIER
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
  ../Standard/Standard_Handle, ../Geom2d/Geom2d_Curve

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of ProjLib_ProjectOnPlane"
discard "forward decl of ProjLib_ProjectOnSurface"
discard "forward decl of ProjLib_ComputeApprox"
discard "forward decl of ProjLib_ComputeApproxOnPolarSurface"
discard "forward decl of ProjLib_ProjectedCurve"
discard "forward decl of ProjLib_HProjectedCurve"
discard "forward decl of ProjLib_CompProjectedCurve"
discard "forward decl of ProjLib_HCompProjectedCurve"
discard "forward decl of ProjLib_PrjResolve"
discard "forward decl of ProjLib_PrjFunc"
discard "forward decl of ProjLib_Projector"
discard "forward decl of ProjLib_Plane"
discard "forward decl of ProjLib_Cylinder"
discard "forward decl of ProjLib_Cone"
discard "forward decl of ProjLib_Sphere"
discard "forward decl of ProjLib_Torus"
discard "forward decl of Adaptor3d_HSurface"
type
  ProjLib* {.importcpp: "ProjLib", header: "ProjLib.hxx", bycopy.} = object


proc Project*(Pl: gp_Pln; P: gp_Pnt): gp_Pnt2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Pl: gp_Pln; L: gp_Lin): gp_Lin2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Pl: gp_Pln; C: gp_Circ): gp_Circ2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Pl: gp_Pln; E: gp_Elips): gp_Elips2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Pl: gp_Pln; P: gp_Parab): gp_Parab2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Pl: gp_Pln; H: gp_Hypr): gp_Hypr2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Cy: gp_Cylinder; P: gp_Pnt): gp_Pnt2d {.
    importcpp: "ProjLib::Project(@)", header: "ProjLib.hxx".}
proc Project*(Cy: gp_Cylinder; L: gp_Lin): gp_Lin2d {.
    importcpp: "ProjLib::Project(@)", header: "ProjLib.hxx".}
proc Project*(Cy: gp_Cylinder; Ci: gp_Circ): gp_Lin2d {.
    importcpp: "ProjLib::Project(@)", header: "ProjLib.hxx".}
proc Project*(Co: gp_Cone; P: gp_Pnt): gp_Pnt2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Co: gp_Cone; L: gp_Lin): gp_Lin2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Co: gp_Cone; Ci: gp_Circ): gp_Lin2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Sp: gp_Sphere; P: gp_Pnt): gp_Pnt2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(Sp: gp_Sphere; Ci: gp_Circ): gp_Lin2d {.
    importcpp: "ProjLib::Project(@)", header: "ProjLib.hxx".}
proc Project*(To: gp_Torus; P: gp_Pnt): gp_Pnt2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc Project*(To: gp_Torus; Ci: gp_Circ): gp_Lin2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc MakePCurveOfType*(PC: ProjLib_ProjectedCurve; aC: var handle[Geom2d_Curve]) {.
    importcpp: "ProjLib::MakePCurveOfType(@)", header: "ProjLib.hxx".}
proc IsAnaSurf*(theAS: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "ProjLib::IsAnaSurf(@)", header: "ProjLib.hxx".}