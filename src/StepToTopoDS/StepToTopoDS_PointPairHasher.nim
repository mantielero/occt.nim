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

discard "forward decl of StepToTopoDS_PointPair"
type
  StepToTopoDS_PointPairHasher* {.importcpp: "StepToTopoDS_PointPairHasher",
                                 header: "StepToTopoDS_PointPairHasher.hxx",
                                 bycopy.} = object


proc `new`*(this: var StepToTopoDS_PointPairHasher; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_PointPairHasher::operator new",
    header: "StepToTopoDS_PointPairHasher.hxx".}
proc `delete`*(this: var StepToTopoDS_PointPairHasher; theAddress: pointer) {.
    importcpp: "StepToTopoDS_PointPairHasher::operator delete",
    header: "StepToTopoDS_PointPairHasher.hxx".}
proc `new[]`*(this: var StepToTopoDS_PointPairHasher; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_PointPairHasher::operator new[]",
    header: "StepToTopoDS_PointPairHasher.hxx".}
proc `delete[]`*(this: var StepToTopoDS_PointPairHasher; theAddress: pointer) {.
    importcpp: "StepToTopoDS_PointPairHasher::operator delete[]",
    header: "StepToTopoDS_PointPairHasher.hxx".}
proc `new`*(this: var StepToTopoDS_PointPairHasher; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepToTopoDS_PointPairHasher::operator new",
    header: "StepToTopoDS_PointPairHasher.hxx".}
proc `delete`*(this: var StepToTopoDS_PointPairHasher; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS_PointPairHasher::operator delete",
    header: "StepToTopoDS_PointPairHasher.hxx".}
proc hashCode*(thePointPair: StepToTopoDS_PointPair; theUpperBound: int): int {.
    importcpp: "StepToTopoDS_PointPairHasher::HashCode(@)",
    header: "StepToTopoDS_PointPairHasher.hxx".}
proc isEqual*(k1: StepToTopoDS_PointPair; k2: StepToTopoDS_PointPair): StandardBoolean {.
    importcpp: "StepToTopoDS_PointPairHasher::IsEqual(@)",
    header: "StepToTopoDS_PointPairHasher.hxx".}