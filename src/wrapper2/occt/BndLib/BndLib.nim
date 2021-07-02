##  Created on: 1993-07-08
##  Created by: Isabelle GRIGNON
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

discard "forward decl of gp_Lin"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Lin2d"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of BndLib_Add3dCurve"
discard "forward decl of BndLib_Add2dCurve"
discard "forward decl of BndLib_AddSurface"
type
  BndLib* {.importcpp: "BndLib", header: "BndLib.hxx", bycopy.} = object ## ! Bounding box for a surface trimmed or not
                                                                 ## ! Adds the segment of the line L limited by the two
                                                                 ## ! parameter values P1 and P2, to the bounding box B, and
                                                                 ## ! then enlarges B by the tolerance value Tol.
                                                                 ## ! Tol is the tolerance value to enlarge the minimun and maximum dimension
                                                                 ## ! P1 and P2 may represent infinite values.
                                                                 ## ! Exceptions
                                                                 ## !
                                                                 ## Standard_Failure if P1 and P2 are either two negative
                                                                 ## ! infinite real numbers, or two positive infinite real numbers.


proc add*(L: GpLin; p1: StandardReal; p2: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(L: GpLin2d; p1: StandardReal; p2: StandardReal; tol: StandardReal;
         b: var BndBox2d) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: GpCirc; tol: StandardReal; b: var BndBox) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(c: GpCirc; p1: StandardReal; p2: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: GpCirc2d; tol: StandardReal; b: var BndBox2d) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: GpCirc2d; p1: StandardReal; p2: StandardReal; tol: StandardReal;
         b: var BndBox2d) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: GpElips; tol: StandardReal; b: var BndBox) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(c: GpElips; p1: StandardReal; p2: StandardReal; tol: StandardReal;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: GpElips2d; tol: StandardReal; b: var BndBox2d) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: GpElips2d; p1: StandardReal; p2: StandardReal; tol: StandardReal;
         b: var BndBox2d) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(p: GpParab; p1: StandardReal; p2: StandardReal; tol: StandardReal;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(p: GpParab2d; p1: StandardReal; p2: StandardReal; tol: StandardReal;
         b: var BndBox2d) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(h: GpHypr; p1: StandardReal; p2: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(h: GpHypr2d; p1: StandardReal; p2: StandardReal; tol: StandardReal;
         b: var BndBox2d) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: GpCylinder; uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
         vMax: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: GpCylinder; vMin: StandardReal; vMax: StandardReal; tol: StandardReal;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: GpCone; uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
         vMax: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: GpCone; vMin: StandardReal; vMax: StandardReal; tol: StandardReal;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: GpSphere; tol: StandardReal; b: var BndBox) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(s: GpSphere; uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
         vMax: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(p: GpTorus; tol: StandardReal; b: var BndBox) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(p: GpTorus; uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
         vMax: StandardReal; tol: StandardReal; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}

