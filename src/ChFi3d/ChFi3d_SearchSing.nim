##  Created on: 1997-03-28
##  Created by: Philippe MANGIN
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

discard "forward decl of Geom_Curve"
type
  ChFi3dSearchSing* {.importcpp: "ChFi3d_SearchSing",
                     header: "ChFi3d_SearchSing.hxx", bycopy.} = object of MathFunctionWithDerivative


proc `new`*(this: var ChFi3dSearchSing; theSize: csize_t): pointer {.
    importcpp: "ChFi3d_SearchSing::operator new", header: "ChFi3d_SearchSing.hxx".}
proc `delete`*(this: var ChFi3dSearchSing; theAddress: pointer) {.
    importcpp: "ChFi3d_SearchSing::operator delete",
    header: "ChFi3d_SearchSing.hxx".}
proc `new[]`*(this: var ChFi3dSearchSing; theSize: csize_t): pointer {.
    importcpp: "ChFi3d_SearchSing::operator new[]",
    header: "ChFi3d_SearchSing.hxx".}
proc `delete[]`*(this: var ChFi3dSearchSing; theAddress: pointer) {.
    importcpp: "ChFi3d_SearchSing::operator delete[]",
    header: "ChFi3d_SearchSing.hxx".}
proc `new`*(this: var ChFi3dSearchSing; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "ChFi3d_SearchSing::operator new", header: "ChFi3d_SearchSing.hxx".}
proc `delete`*(this: var ChFi3dSearchSing; a2: pointer; a3: pointer) {.
    importcpp: "ChFi3d_SearchSing::operator delete",
    header: "ChFi3d_SearchSing.hxx".}
proc constructChFi3dSearchSing*(c1: Handle[GeomCurve]; c2: Handle[GeomCurve]): ChFi3dSearchSing {.
    constructor, importcpp: "ChFi3d_SearchSing(@)", header: "ChFi3d_SearchSing.hxx".}
proc value*(this: var ChFi3dSearchSing; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "ChFi3d_SearchSing.hxx".}
proc derivative*(this: var ChFi3dSearchSing; x: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "ChFi3d_SearchSing.hxx".}
proc values*(this: var ChFi3dSearchSing; x: StandardReal; f: var StandardReal;
            d: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "ChFi3d_SearchSing.hxx".}