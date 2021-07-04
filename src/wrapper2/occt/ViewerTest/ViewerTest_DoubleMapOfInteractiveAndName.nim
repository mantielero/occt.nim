##  Created on: 1997-07-23
##  Created by: Henri JEANNIN
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

import
  ../Standard/Standard_Transient, ../TCollection/TCollection_AsciiString,
  ../TColStd/TColStd_MapTransientHasher, ../TCollection/TCollection_AsciiString,
  ../NCollection/NCollection_DoubleMap

discard "forward decl of AIS_InteractiveObject"
type
  ViewerTest_DoubleMapOfInteractiveAndName* = NCollection_DoubleMap[
      handle[AIS_InteractiveObject], TCollection_AsciiString,
      TColStd_MapTransientHasher, TCollection_AsciiString]
  ViewerTest_DoubleMapIteratorOfDoubleMapOfInteractiveAndName* = Iterator[
      handle[AIS_InteractiveObject], TCollection_AsciiString,
      TColStd_MapTransientHasher, TCollection_AsciiString]
