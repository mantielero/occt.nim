import tdf_types



##  Created by: DAUTRY Philippe
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

## ! A label hasher for label maps.



proc hashCode*(theLabel: TDF_Label; theUpperBound: cint): cint {.cdecl,
    importcpp: "TDF_LabelMapHasher::HashCode(@)", header: "TDF_LabelMapHasher.hxx".}
proc isEqual*(aLab1: TDF_Label; aLab2: TDF_Label): bool {.cdecl,
    importcpp: "TDF_LabelMapHasher::IsEqual(@)", header: "TDF_LabelMapHasher.hxx".}

