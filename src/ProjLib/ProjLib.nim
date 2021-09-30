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


proc project*(pl: Pln; p: Pnt): Pnt2d {.importcpp: "ProjLib::Project(@)",
                                  header: "ProjLib.hxx".}
proc project*(pl: Pln; L: Lin): Lin2d {.importcpp: "ProjLib::Project(@)",
                                  header: "ProjLib.hxx".}
proc project*(pl: Pln; c: Circ): Circ2d {.importcpp: "ProjLib::Project(@)",
                                    header: "ProjLib.hxx".}
proc project*(pl: Pln; e: Elips): Elips2d {.importcpp: "ProjLib::Project(@)",
                                      header: "ProjLib.hxx".}
proc project*(pl: Pln; p: Parab): Parab2d {.importcpp: "ProjLib::Project(@)",
                                      header: "ProjLib.hxx".}
proc project*(pl: Pln; h: Hypr): Hypr2d {.importcpp: "ProjLib::Project(@)",
                                    header: "ProjLib.hxx".}
proc project*(cy: Cylinder; p: Pnt): Pnt2d {.importcpp: "ProjLib::Project(@)",
                                       header: "ProjLib.hxx".}
proc project*(cy: Cylinder; L: Lin): Lin2d {.importcpp: "ProjLib::Project(@)",
                                       header: "ProjLib.hxx".}
proc project*(cy: Cylinder; ci: Circ): Lin2d {.importcpp: "ProjLib::Project(@)",
    header: "ProjLib.hxx".}
proc project*(co: Cone; p: Pnt): Pnt2d {.importcpp: "ProjLib::Project(@)",
                                   header: "ProjLib.hxx".}
proc project*(co: Cone; L: Lin): Lin2d {.importcpp: "ProjLib::Project(@)",
                                   header: "ProjLib.hxx".}
proc project*(co: Cone; ci: Circ): Lin2d {.importcpp: "ProjLib::Project(@)",
                                     header: "ProjLib.hxx".}
proc project*(sp: Sphere; p: Pnt): Pnt2d {.importcpp: "ProjLib::Project(@)",
                                     header: "ProjLib.hxx".}
proc project*(sp: Sphere; ci: Circ): Lin2d {.importcpp: "ProjLib::Project(@)",
                                       header: "ProjLib.hxx".}
proc project*(to: Torus; p: Pnt): Pnt2d {.importcpp: "ProjLib::Project(@)",
                                    header: "ProjLib.hxx".}
proc project*(to: Torus; ci: Circ): Lin2d {.importcpp: "ProjLib::Project(@)",
                                      header: "ProjLib.hxx".}
proc makePCurveOfType*(pc: ProjLibProjectedCurve; aC: var Handle[Geom2dCurve]) {.
    importcpp: "ProjLib::MakePCurveOfType(@)", header: "ProjLib.hxx".}
proc isAnaSurf*(theAS: Handle[Adaptor3dHSurface]): bool {.
    importcpp: "ProjLib::IsAnaSurf(@)", header: "ProjLib.hxx".}

























