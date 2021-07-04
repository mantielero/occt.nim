##  Created on: 1998-12-04
##  Created by: DUSUZEAU Louis
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

discard "forward decl of TCollection_AsciiString"
type
  Resource_LexicalCompare* {.importcpp: "Resource_LexicalCompare",
                            header: "Resource_LexicalCompare.hxx", bycopy.} = object


proc constructResource_LexicalCompare*(): Resource_LexicalCompare {.constructor,
    importcpp: "Resource_LexicalCompare(@)", header: "Resource_LexicalCompare.hxx".}
proc IsLower*(this: Resource_LexicalCompare; Left: TCollection_AsciiString;
             Right: TCollection_AsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "IsLower", header: "Resource_LexicalCompare.hxx".}