##  Created on: 2011-10-27
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

##  prevent disabling some MSVC warning messages by VTK headers

discard "forward decl of vtkActor"
discard "forward decl of vtkDataSet"
discard "forward decl of vtkInformationObjectBaseKey"
discard "forward decl of IVtkTools_ShapeDataSource"
when defined(_MSC_VER):
## ! @class IVtkTools_ShapeObject
## ! @brief VTK holder class for OCC shapes to pass them through pipelines.
## !
## ! It is descendent of vtkObject (data). Logically it is a one of milestones of VTK pipeline.
## ! It stores data of OCC shape (the OccShape instance) in vtkInformation object of vtkDataObject.
## ! Then pass it to the actors through pipelines,
## ! so selection logic can access OccShape easily given the actor instance.

type
  IVtkToolsShapeObject* {.importcpp: "IVtkTools_ShapeObject",
                         header: "IVtkTools_ShapeObject.hxx", bycopy.} = object of VtkDataObject ##  not copyable
                                                                                          ##  OCC


## !!!Ignored construct:  public : vtkTypeMacro ( IVtkTools_ShapeObject , vtkDataObject ) static IVtkTools_ShapeObject * New ( ) ;
## Error: token expected: ) but got: ,!!!

proc getShapeSource*(theActor: ptr VtkActor): VtkSmartPointer[
    IVtkToolsShapeDataSource] {.importcpp: "IVtkTools_ShapeObject::GetShapeSource(@)",
                               header: "IVtkTools_ShapeObject.hxx".}
proc getOccShape*(theActor: ptr VtkActor): Handle {.
    importcpp: "IVtkTools_ShapeObject::GetOccShape(@)",
    header: "IVtkTools_ShapeObject.hxx".}
proc setShapeSource*(theDataSource: ptr IVtkToolsShapeDataSource;
                    theData: ptr VtkDataSet) {.
    importcpp: "IVtkTools_ShapeObject::SetShapeSource(@)",
    header: "IVtkTools_ShapeObject.hxx".}
proc setShapeSource*(theDataSource: ptr IVtkToolsShapeDataSource;
                    theActor: ptr VtkActor) {.
    importcpp: "IVtkTools_ShapeObject::SetShapeSource(@)",
    header: "IVtkTools_ShapeObject.hxx".}
type
  IVtkToolsShapeObjectKeyPtr* = ptr VtkInformationObjectBaseKey

proc getKey*(): IVtkToolsShapeObjectKeyPtr {.
    importcpp: "IVtkTools_ShapeObject::getKey(@)",
    header: "IVtkTools_ShapeObject.hxx".}
proc setShapeSource*(this: var IVtkToolsShapeObject;
                    theDataSource: ptr IVtkToolsShapeDataSource) {.
    importcpp: "SetShapeSource", header: "IVtkTools_ShapeObject.hxx".}
proc getShapeSource*(this: IVtkToolsShapeObject): ptr IVtkToolsShapeDataSource {.
    noSideEffect, importcpp: "GetShapeSource", header: "IVtkTools_ShapeObject.hxx".}
# when defined(_MSC_VER):
#   discard













































