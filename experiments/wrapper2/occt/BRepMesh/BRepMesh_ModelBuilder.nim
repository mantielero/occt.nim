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

## ! Class implements interface representing tool for discrete model building.
## !
## ! The following statuses should be used by default:
## ! Message_Done1 - model has been sucessfully built.
## ! Message_Fail1 - empty shape.
## ! Message_Fail2 - model has not been build due to unexpected reason.

type
  BRepMeshModelBuilder* {.importcpp: "BRepMesh_ModelBuilder",
                         header: "BRepMesh_ModelBuilder.hxx", bycopy.} = object of IMeshToolsModelBuilder ##
                                                                                                   ## !
                                                                                                   ## Constructor.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## discrete
                                                                                                   ## model
                                                                                                   ## for
                                                                                                   ## the
                                                                                                   ## given
                                                                                                   ## shape.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## nullptr
                                                                                                   ## in
                                                                                                   ## case
                                                                                                   ## of
                                                                                                   ## failure.


proc constructBRepMeshModelBuilder*(): BRepMeshModelBuilder {.constructor,
    importcpp: "BRepMesh_ModelBuilder(@)", header: "BRepMesh_ModelBuilder.hxx".}
proc destroyBRepMeshModelBuilder*(this: var BRepMeshModelBuilder) {.
    importcpp: "#.~BRepMesh_ModelBuilder()", header: "BRepMesh_ModelBuilder.hxx".}
type
  BRepMeshModelBuilderbaseType* = IMeshToolsModelBuilder

proc getTypeName*(): cstring {.importcpp: "BRepMesh_ModelBuilder::get_type_name(@)",
                            header: "BRepMesh_ModelBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_ModelBuilder::get_type_descriptor(@)",
    header: "BRepMesh_ModelBuilder.hxx".}
proc dynamicType*(this: BRepMeshModelBuilder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_ModelBuilder.hxx".}

























