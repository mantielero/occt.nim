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

discard "forward decl of IMeshTools_Parameters"
type
  IMeshToolsModelBuilder* {.importcpp: "IMeshTools_ModelBuilder",
                           header: "IMeshTools_ModelBuilder.hxx", bycopy.} = object of MessageAlgorithm ##
                                                                                                 ## !
                                                                                                 ## Destructor.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Constructor.


proc destroyIMeshToolsModelBuilder*(this: var IMeshToolsModelBuilder) {.
    importcpp: "#.~IMeshTools_ModelBuilder()",
    header: "IMeshTools_ModelBuilder.hxx".}
proc perform*(this: var IMeshToolsModelBuilder; theShape: TopoDS_Shape;
             theParameters: IMeshToolsParameters): Handle[IMeshDataModel] {.
    importcpp: "Perform", header: "IMeshTools_ModelBuilder.hxx".}
type
  IMeshToolsModelBuilderbaseType* = MessageAlgorithm

proc getTypeName*(): cstring {.importcpp: "IMeshTools_ModelBuilder::get_type_name(@)",
                            header: "IMeshTools_ModelBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshTools_ModelBuilder::get_type_descriptor(@)",
    header: "IMeshTools_ModelBuilder.hxx".}
proc dynamicType*(this: IMeshToolsModelBuilder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshTools_ModelBuilder.hxx".}
