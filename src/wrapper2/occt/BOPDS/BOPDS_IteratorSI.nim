##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BOPDS_Iterator,
  ../NCollection/NCollection_BaseAllocator, ../Standard/Standard_Integer

## ! The class BOPDS_IteratorSI is
## ! 1.to compute self-intersections between BRep sub-shapes
## ! of each argument of an operation (see the class BOPDS_DS)
## ! in terms of theirs bounding boxes
## ! 2.provides interface to iterare the pairs of
## ! intersected sub-shapes of given type

type
  BOPDS_IteratorSI* {.importcpp: "BOPDS_IteratorSI",
                     header: "BOPDS_IteratorSI.hxx", bycopy.} = object of BOPDS_Iterator ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## contructor


proc constructBOPDS_IteratorSI*(): BOPDS_IteratorSI {.constructor,
    importcpp: "BOPDS_IteratorSI(@)", header: "BOPDS_IteratorSI.hxx".}
proc destroyBOPDS_IteratorSI*(this: var BOPDS_IteratorSI) {.
    importcpp: "#.~BOPDS_IteratorSI()", header: "BOPDS_IteratorSI.hxx".}
proc constructBOPDS_IteratorSI*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_IteratorSI {.
    constructor, importcpp: "BOPDS_IteratorSI(@)", header: "BOPDS_IteratorSI.hxx".}
proc UpdateByLevelOfCheck*(this: var BOPDS_IteratorSI; theLevel: Standard_Integer) {.
    importcpp: "UpdateByLevelOfCheck", header: "BOPDS_IteratorSI.hxx".}