##  Copyright (c) 2015 OPEN CASCADE SAS
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
  StdObjMgt_Persistent, ../NCollection/NCollection_DataMap,
  ../TCollection/TCollection_AsciiString

type
  StdObjMgt_MapOfInstantiators* {.importcpp: "StdObjMgt_MapOfInstantiators",
                                 header: "StdObjMgt_MapOfInstantiators.hxx",
                                 bycopy.} = object of NCollection_DataMap[
      TCollection_AsciiString, Instantiator, TCollection_AsciiString]


proc Bind*[Persistent](this: var StdObjMgt_MapOfInstantiators;
                      theTypeName: TCollection_AsciiString) {.importcpp: "Bind",
    header: "StdObjMgt_MapOfInstantiators.hxx".}