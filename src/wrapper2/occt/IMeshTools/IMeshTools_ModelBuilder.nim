##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../Message/Message_Algorithm, ../Standard/Standard_ErrorHandler,
  ../Standard/Standard_Failure, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../IMeshData/IMeshData_Model

discard "forward decl of IMeshTools_Parameters"
type
  IMeshTools_ModelBuilder* {.importcpp: "IMeshTools_ModelBuilder",
                            header: "IMeshTools_ModelBuilder.hxx", bycopy.} = object of Message_Algorithm ##
                                                                                                   ## !
                                                                                                   ## Destructor.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Constructor.


proc destroyIMeshTools_ModelBuilder*(this: var IMeshTools_ModelBuilder) {.
    importcpp: "#.~IMeshTools_ModelBuilder()",
    header: "IMeshTools_ModelBuilder.hxx".}
proc Perform*(this: var IMeshTools_ModelBuilder; theShape: TopoDS_Shape;
             theParameters: IMeshTools_Parameters): handle[IMeshData_Model] {.
    importcpp: "Perform", header: "IMeshTools_ModelBuilder.hxx".}
type
  IMeshTools_ModelBuilderbase_type* = Message_Algorithm

proc get_type_name*(): cstring {.importcpp: "IMeshTools_ModelBuilder::get_type_name(@)",
                              header: "IMeshTools_ModelBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshTools_ModelBuilder::get_type_descriptor(@)",
    header: "IMeshTools_ModelBuilder.hxx".}
proc DynamicType*(this: IMeshTools_ModelBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshTools_ModelBuilder.hxx".}