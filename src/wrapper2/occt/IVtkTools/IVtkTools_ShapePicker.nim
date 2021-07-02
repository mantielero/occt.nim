##  Created: 2011-10-27
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

discard "forward decl of vtkRenderer"
discard "forward decl of vtkActorCollection"
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when defined(_MSC_VER):
## ! @class IVtkTools_ShapePicker
## ! @brief VTK picker for OCC shapes with OCC selection algorithm.

type
  IVtkToolsShapePicker* {.importcpp: "IVtkTools_ShapePicker",
                         header: "IVtkTools_ShapePicker.hxx", bycopy.} = object of VtkAbstractPropPicker ##
                                                                                                  ## !
                                                                                                  ## Constructs
                                                                                                  ## the
                                                                                                  ## picker
                                                                                                  ## with
                                                                                                  ## empty
                                                                                                  ## renderer
                                                                                                  ## and
                                                                                                  ## ready
                                                                                                  ## for
                                                                                                  ## point
                                                                                                  ## selection.
                                                                                                  ##
                                                                                                  ## not
                                                                                                  ## copyable
    ## !< Picking algorithm implementation
    ## !< VTK renderer
    ## !< Rectangle selection mode flag
    ## !< Polyline selection mode flag
    ## !< Selectoin tolerance


## !!!Ignored construct:  public : vtkTypeMacro ( IVtkTools_ShapePicker , vtkAbstractPropPicker ) static IVtkTools_ShapePicker * New ( ) ;
## Error: token expected: ) but got: ,!!!

proc pick*(this: var IVtkToolsShapePicker; thePos: ptr cdouble;
          theRenderer: ptr VtkRenderer; theNbPoints: cint = -1): cint {.
    importcpp: "pick", header: "IVtkTools_ShapePicker.hxx".}
proc pick*(this: var IVtkToolsShapePicker; theX: cdouble; theY: cdouble; theZ: cdouble;
          theRenderer: ptr VtkRenderer = nil): cint {.importcpp: "Pick",
    header: "IVtkTools_ShapePicker.hxx".}
proc pick*(this: var IVtkToolsShapePicker; theX0: cdouble; theY0: cdouble;
          theX1: cdouble; theY1: cdouble; theRenderer: ptr VtkRenderer = nil): cint {.
    importcpp: "Pick", header: "IVtkTools_ShapePicker.hxx".}
proc pick*(this: var IVtkToolsShapePicker; poly: ptr array[3, cdouble];
          theNbPoints: cint; theRenderer: ptr VtkRenderer = nil): cint {.
    importcpp: "Pick", header: "IVtkTools_ShapePicker.hxx".}
proc setTolerance*(this: var IVtkToolsShapePicker; theTolerance: cfloat) {.
    importcpp: "SetTolerance", header: "IVtkTools_ShapePicker.hxx".}
proc getTolerance*(this: IVtkToolsShapePicker): cfloat {.noSideEffect,
    importcpp: "GetTolerance", header: "IVtkTools_ShapePicker.hxx".}
proc setRenderer*(this: var IVtkToolsShapePicker; theRenderer: ptr VtkRenderer) {.
    importcpp: "SetRenderer", header: "IVtkTools_ShapePicker.hxx".}
proc setAreaSelection*(this: var IVtkToolsShapePicker; theIsOn: bool) {.
    importcpp: "SetAreaSelection", header: "IVtkTools_ShapePicker.hxx".}
proc getSelectionModes*(this: IVtkToolsShapePicker; theShape: Handle): IVtkSelectionModeList {.
    noSideEffect, importcpp: "GetSelectionModes",
    header: "IVtkTools_ShapePicker.hxx".}
proc getSelectionModes*(this: IVtkToolsShapePicker; theShapeActor: ptr VtkActor): IVtkSelectionModeList {.
    noSideEffect, importcpp: "GetSelectionModes",
    header: "IVtkTools_ShapePicker.hxx".}
proc setSelectionMode*(this: IVtkToolsShapePicker; theShape: Handle;
                      theMode: IVtkSelectionMode; theIsTurnOn: bool = true) {.
    noSideEffect, importcpp: "SetSelectionMode",
    header: "IVtkTools_ShapePicker.hxx".}
proc setSelectionMode*(this: IVtkToolsShapePicker; theShapeActor: ptr VtkActor;
                      theMode: IVtkSelectionMode; theIsTurnOn: bool = true) {.
    noSideEffect, importcpp: "SetSelectionMode",
    header: "IVtkTools_ShapePicker.hxx".}
proc setSelectionMode*(this: IVtkToolsShapePicker; theMode: IVtkSelectionMode;
                      theIsTurnOn: bool = true) {.noSideEffect,
    importcpp: "SetSelectionMode", header: "IVtkTools_ShapePicker.hxx".}
proc getPickedShapesIds*(this: IVtkToolsShapePicker; theIsAll: bool = false): IVtkShapeIdList {.
    noSideEffect, importcpp: "GetPickedShapesIds",
    header: "IVtkTools_ShapePicker.hxx".}
proc getPickedSubShapesIds*(this: IVtkToolsShapePicker; theId: IVtkIdType;
                           theIsAll: bool = false): IVtkShapeIdList {.noSideEffect,
    importcpp: "GetPickedSubShapesIds", header: "IVtkTools_ShapePicker.hxx".}
proc getPickedActors*(this: IVtkToolsShapePicker; theIsAll: bool = false): VtkSmartPointer[
    VtkActorCollection] {.noSideEffect, importcpp: "GetPickedActors",
                         header: "IVtkTools_ShapePicker.hxx".}
proc removeSelectableObject*(this: var IVtkToolsShapePicker; theShape: Handle) {.
    importcpp: "RemoveSelectableObject", header: "IVtkTools_ShapePicker.hxx".}
proc removeSelectableActor*(this: var IVtkToolsShapePicker;
                           theShapeActor: ptr VtkActor) {.
    importcpp: "RemoveSelectableActor", header: "IVtkTools_ShapePicker.hxx".}
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when defined(_MSC_VER):
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   discard























































