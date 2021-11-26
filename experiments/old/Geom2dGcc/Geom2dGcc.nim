##  Created on: 1992-06-29
##  Created by: Remi GILET
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

discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2dGcc_CurveTool"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2dGcc_Circ2d3Tan"
discard "forward decl of Geom2dGcc_Circ2d2TanRad"
discard "forward decl of Geom2dGcc_Circ2d2TanOn"
discard "forward decl of Geom2dGcc_Circ2dTanOnRad"
discard "forward decl of Geom2dGcc_Circ2dTanCen"
discard "forward decl of Geom2dGcc_Lin2d2Tan"
discard "forward decl of Geom2dGcc_Lin2dTanObl"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of Geom2dGcc_CurveToolGeo"
discard "forward decl of Geom2dGcc_Circ2d2TanOnGeo"
discard "forward decl of Geom2dGcc_Circ2d2TanRadGeo"
discard "forward decl of Geom2dGcc_Circ2dTanCenGeo"
discard "forward decl of Geom2dGcc_Circ2dTanOnRadGeo"
discard "forward decl of Geom2dGcc_Circ2d3TanIter"
discard "forward decl of Geom2dGcc_FunctionTanCuCuCu"
discard "forward decl of Geom2dGcc_Circ2d2TanOnIter"
discard "forward decl of Geom2dGcc_FunctionTanCuCuOnCu"
discard "forward decl of Geom2dGcc_Lin2dTanOblIter"
discard "forward decl of Geom2dGcc_FunctionTanObl"
discard "forward decl of Geom2dGcc_Lin2d2TanIter"
discard "forward decl of Geom2dGcc_FunctionTanCuCu"
discard "forward decl of Geom2dGcc_FunctionTanCuPnt"
discard "forward decl of Geom2dGcc_FunctionTanCirCu"
type
  Geom2dGcc* {.importcpp: "Geom2dGcc", header: "Geom2dGcc.hxx", bycopy.} = object


proc `new`*(this: var Geom2dGcc; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc::operator new", header: "Geom2dGcc.hxx".}
proc `delete`*(this: var Geom2dGcc; theAddress: pointer) {.
    importcpp: "Geom2dGcc::operator delete", header: "Geom2dGcc.hxx".}
proc `new[]`*(this: var Geom2dGcc; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc::operator new[]", header: "Geom2dGcc.hxx".}
proc `delete[]`*(this: var Geom2dGcc; theAddress: pointer) {.
    importcpp: "Geom2dGcc::operator delete[]", header: "Geom2dGcc.hxx".}
proc `new`*(this: var Geom2dGcc; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc::operator new", header: "Geom2dGcc.hxx".}
proc `delete`*(this: var Geom2dGcc; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc::operator delete", header: "Geom2dGcc.hxx".}
proc unqualified*(obj: Geom2dAdaptorCurve): Geom2dGccQualifiedCurve {.
    importcpp: "Geom2dGcc::Unqualified(@)", header: "Geom2dGcc.hxx".}
proc enclosing*(obj: Geom2dAdaptorCurve): Geom2dGccQualifiedCurve {.
    importcpp: "Geom2dGcc::Enclosing(@)", header: "Geom2dGcc.hxx".}
proc enclosed*(obj: Geom2dAdaptorCurve): Geom2dGccQualifiedCurve {.
    importcpp: "Geom2dGcc::Enclosed(@)", header: "Geom2dGcc.hxx".}
proc outside*(obj: Geom2dAdaptorCurve): Geom2dGccQualifiedCurve {.
    importcpp: "Geom2dGcc::Outside(@)", header: "Geom2dGcc.hxx".}