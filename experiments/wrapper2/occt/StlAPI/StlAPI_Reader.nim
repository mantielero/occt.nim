##  Created on: 2000-06-23
##  Created by: Sergey MOZOKHIN
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_CString

discard "forward decl of TopoDS_Shape"
type
  StlAPI_Reader* {.importcpp: "StlAPI_Reader", header: "StlAPI_Reader.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Reads
                                                                                      ## STL
                                                                                      ## file
                                                                                      ## to
                                                                                      ## the
                                                                                      ## TopoDS_Shape
                                                                                      ## (each
                                                                                      ## triangle
                                                                                      ## is
                                                                                      ## converted
                                                                                      ## to
                                                                                      ## the
                                                                                      ## face).
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## True
                                                                                      ## if
                                                                                      ## reading
                                                                                      ## is
                                                                                      ## successful


proc Read*(this: var StlAPI_Reader; theShape: var TopoDS_Shape;
          theFileName: Standard_CString): Standard_Boolean {.importcpp: "Read",
    header: "StlAPI_Reader.hxx".}