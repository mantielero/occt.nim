##  Created on: 1993-08-30
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
type
  StepToTopoDS_CartesianPointHasher* {.importcpp: "StepToTopoDS_CartesianPointHasher", header: "StepToTopoDS_CartesianPointHasher.hxx",
                                      bycopy.} = object


proc `new`*(this: var StepToTopoDS_CartesianPointHasher; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_CartesianPointHasher::operator new",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc `delete`*(this: var StepToTopoDS_CartesianPointHasher; theAddress: pointer) {.
    importcpp: "StepToTopoDS_CartesianPointHasher::operator delete",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc `new[]`*(this: var StepToTopoDS_CartesianPointHasher; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_CartesianPointHasher::operator new[]",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc `delete[]`*(this: var StepToTopoDS_CartesianPointHasher; theAddress: pointer) {.
    importcpp: "StepToTopoDS_CartesianPointHasher::operator delete[]",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc `new`*(this: var StepToTopoDS_CartesianPointHasher; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepToTopoDS_CartesianPointHasher::operator new", header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc `delete`*(this: var StepToTopoDS_CartesianPointHasher; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS_CartesianPointHasher::operator delete",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc hashCode*(theCartesianPoint: Handle[StepGeomCartesianPoint];
              theUpperBound: int): int {.importcpp: "StepToTopoDS_CartesianPointHasher::HashCode(@)", header: "StepToTopoDS_CartesianPointHasher.hxx".}
proc isEqual*(k1: Handle[StepGeomCartesianPoint];
             k2: Handle[StepGeomCartesianPoint]): StandardBoolean {.
    importcpp: "StepToTopoDS_CartesianPointHasher::IsEqual(@)",
    header: "StepToTopoDS_CartesianPointHasher.hxx".}