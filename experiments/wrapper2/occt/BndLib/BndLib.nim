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


proc add*(L: Lin; p1: float; p2: float; tol: float; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(L: Lin2d; p1: float; p2: float; tol: float; b: var BndBox2d) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: Circ; tol: float; b: var BndBox) {.importcpp: "BndLib::Add(@)",
                                        header: "BndLib.hxx".}
proc add*(c: Circ; p1: float; p2: float; tol: float; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: Circ2d; tol: float; b: var BndBox2d) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(c: Circ2d; p1: float; p2: float; tol: float; b: var BndBox2d) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: Elips; tol: float; b: var BndBox) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(c: Elips; p1: float; p2: float; tol: float; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(c: Elips2d; tol: float; b: var BndBox2d) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(c: Elips2d; p1: float; p2: float; tol: float; b: var BndBox2d) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(p: Parab; p1: float; p2: float; tol: float; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(p: Parab2d; p1: float; p2: float; tol: float; b: var BndBox2d) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(h: Hypr; p1: float; p2: float; tol: float; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(h: Hypr2d; p1: float; p2: float; tol: float; b: var BndBox2d) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: Cylinder; uMin: float; uMax: float; vMin: float; vMax: float; tol: float;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: Cylinder; vMin: float; vMax: float; tol: float; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: Cone; uMin: float; uMax: float; vMin: float; vMax: float; tol: float;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: Cone; vMin: float; vMax: float; tol: float; b: var BndBox) {.
    importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(s: Sphere; tol: float; b: var BndBox) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(s: Sphere; uMin: float; uMax: float; vMin: float; vMax: float; tol: float;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
proc add*(p: Torus; tol: float; b: var BndBox) {.importcpp: "BndLib::Add(@)",
    header: "BndLib.hxx".}
proc add*(p: Torus; uMin: float; uMax: float; vMin: float; vMax: float; tol: float;
         b: var BndBox) {.importcpp: "BndLib::Add(@)", header: "BndLib.hxx".}
