##  Created on: 2000-08-21
##  Created by: Andrey BETENEV
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

discard "forward decl of ShapeProcess_Operator"
discard "forward decl of ShapeProcess_Context"
discard "forward decl of ShapeProcess_Context"
discard "forward decl of ShapeProcess_ShapeContext"
discard "forward decl of ShapeProcess_Operator"
discard "forward decl of ShapeProcess_UOperator"
discard "forward decl of ShapeProcess_OperLibrary"
type
  ShapeProcess* {.importcpp: "ShapeProcess", header: "ShapeProcess.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Registers
                                                                                   ## operator
                                                                                   ## to
                                                                                   ## make
                                                                                   ## it
                                                                                   ## visible
                                                                                   ## for
                                                                                   ## Performer


proc registerOperator*(name: StandardCString; op: Handle[ShapeProcessOperator]): StandardBoolean {.
    importcpp: "ShapeProcess::RegisterOperator(@)", header: "ShapeProcess.hxx".}
proc findOperator*(name: StandardCString; op: var Handle[ShapeProcessOperator]): StandardBoolean {.
    importcpp: "ShapeProcess::FindOperator(@)", header: "ShapeProcess.hxx".}
proc perform*(context: Handle[ShapeProcessContext]; seq: StandardCString;
             theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "ShapeProcess::Perform(@)", header: "ShapeProcess.hxx".}

