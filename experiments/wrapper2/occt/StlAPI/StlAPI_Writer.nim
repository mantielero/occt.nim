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
  ../Message/Message_ProgressScope, ../Message/Message_ProgressIndicator

discard "forward decl of TopoDS_Shape"
type
  StlAPI_Writer* {.importcpp: "StlAPI_Writer", header: "StlAPI_Writer.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## writer
                                                                                      ## object
                                                                                      ## with
                                                                                      ## default
                                                                                      ## parameters:
                                                                                      ## ASCIIMode.


proc constructStlAPI_Writer*(): StlAPI_Writer {.constructor,
    importcpp: "StlAPI_Writer(@)", header: "StlAPI_Writer.hxx".}
proc ASCIIMode*(this: var StlAPI_Writer): var Standard_Boolean {.
    importcpp: "ASCIIMode", header: "StlAPI_Writer.hxx".}
proc Write*(this: var StlAPI_Writer; theShape: TopoDS_Shape;
           theFileName: Standard_CString;
           theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Write", header: "StlAPI_Writer.hxx".}