##  Created on: 1993-08-06
##  Created by: Martine LANGLOIS
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

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepToTopoDS_PointPairHasher"
type
  StepToTopoDS_PointPair* {.importcpp: "StepToTopoDS_PointPair",
                           header: "StepToTopoDS_PointPair.hxx", bycopy.} = object


proc `new`*(this: var StepToTopoDS_PointPair; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_PointPair::operator new",
    header: "StepToTopoDS_PointPair.hxx".}
proc `delete`*(this: var StepToTopoDS_PointPair; theAddress: pointer) {.
    importcpp: "StepToTopoDS_PointPair::operator delete",
    header: "StepToTopoDS_PointPair.hxx".}
proc `new[]`*(this: var StepToTopoDS_PointPair; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_PointPair::operator new[]",
    header: "StepToTopoDS_PointPair.hxx".}
proc `delete[]`*(this: var StepToTopoDS_PointPair; theAddress: pointer) {.
    importcpp: "StepToTopoDS_PointPair::operator delete[]",
    header: "StepToTopoDS_PointPair.hxx".}
proc `new`*(this: var StepToTopoDS_PointPair; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepToTopoDS_PointPair::operator new",
    header: "StepToTopoDS_PointPair.hxx".}
proc `delete`*(this: var StepToTopoDS_PointPair; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS_PointPair::operator delete",
    header: "StepToTopoDS_PointPair.hxx".}
proc constructStepToTopoDS_PointPair*(p1: Handle[StepGeomCartesianPoint];
                                     p2: Handle[StepGeomCartesianPoint]): StepToTopoDS_PointPair {.
    constructor, importcpp: "StepToTopoDS_PointPair(@)",
    header: "StepToTopoDS_PointPair.hxx".}