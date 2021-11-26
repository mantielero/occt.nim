##  Created on: 1997-05-13
##  Created by: Stagiaire Francois DUMONT
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
type
  GeomLibDenominatorMultiplier* {.importcpp: "GeomLib_DenominatorMultiplier",
                                 header: "GeomLib_DenominatorMultiplier.hxx",
                                 bycopy.} = object


proc `new`*(this: var GeomLibDenominatorMultiplier; theSize: csize_t): pointer {.
    importcpp: "GeomLib_DenominatorMultiplier::operator new",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc `delete`*(this: var GeomLibDenominatorMultiplier; theAddress: pointer) {.
    importcpp: "GeomLib_DenominatorMultiplier::operator delete",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc `new[]`*(this: var GeomLibDenominatorMultiplier; theSize: csize_t): pointer {.
    importcpp: "GeomLib_DenominatorMultiplier::operator new[]",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc `delete[]`*(this: var GeomLibDenominatorMultiplier; theAddress: pointer) {.
    importcpp: "GeomLib_DenominatorMultiplier::operator delete[]",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc `new`*(this: var GeomLibDenominatorMultiplier; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLib_DenominatorMultiplier::operator new",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc `delete`*(this: var GeomLibDenominatorMultiplier; a2: pointer; a3: pointer) {.
    importcpp: "GeomLib_DenominatorMultiplier::operator delete",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc constructGeomLibDenominatorMultiplier*(surface: Handle[GeomBSplineSurface];
    knotVector: TColStdArray1OfReal): GeomLibDenominatorMultiplier {.constructor,
    importcpp: "GeomLib_DenominatorMultiplier(@)",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc value*(this: GeomLibDenominatorMultiplier; uParameter: StandardReal;
           vParameter: StandardReal): StandardReal {.noSideEffect,
    importcpp: "Value", header: "GeomLib_DenominatorMultiplier.hxx".}