import ../../tkernel/standard/standard_types
import chfi3d_types
import ../../tkg3d/geom/geom_types



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



proc newChFi3dSearchSing*(c1: Handle[GeomCurve]; c2: Handle[GeomCurve]): ChFi3dSearchSing {.
    cdecl, constructor, importcpp: "ChFi3d_SearchSing(@)", header: "ChFi3d_SearchSing.hxx".}
proc value*(this: var ChFi3dSearchSing; x: cfloat; f: var cfloat): bool {.cdecl,
    importcpp: "Value", header: "ChFi3d_SearchSing.hxx".}
proc derivative*(this: var ChFi3dSearchSing; x: cfloat; d: var cfloat): bool {.cdecl,
    importcpp: "Derivative", header: "ChFi3d_SearchSing.hxx".}
proc values*(this: var ChFi3dSearchSing; x: cfloat; f: var cfloat; d: var cfloat): bool {.
    cdecl, importcpp: "Values", header: "ChFi3d_SearchSing.hxx".}

