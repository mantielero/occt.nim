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

# # # # when defined(_MSC_VER):
## ! @class IVtkTools_SubPolyDataFilter
## ! @brief Cells filter according to the given set of cells ids.

type
  IVtkToolsSubPolyDataFilter* {.importcpp: "IVtkTools_SubPolyDataFilter",
                               header: "IVtkTools_SubPolyDataFilter.hxx", bycopy.} = object of VtkPolyDataAlgorithm ##
                                                                                                             ## !
                                                                                                             ## @brief
                                                                                                             ## Filter
                                                                                                             ## cells
                                                                                                             ## according
                                                                                                             ## to
                                                                                                             ## the
                                                                                                             ## given
                                                                                                             ## set
                                                                                                             ## of
                                                                                                             ## ids.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Note:
                                                                                                             ## Data
                                                                                                             ## arrays
                                                                                                             ## are
                                                                                                             ## not
                                                                                                             ## passed
                                                                                                             ## through
                                                                                                             ## if
                                                                                                             ## filtering
                                                                                                             ## is
                                                                                                             ## turned
                                                                                                             ## on.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Set
                                                                                                             ## of
                                                                                                             ## ids
                                                                                                             ## to
                                                                                                             ## be
                                                                                                             ## passed
                                                                                                             ## through
                                                                                                             ## this
                                                                                                             ## filter.


## !!!Ignored construct:  public : vtkTypeMacro ( IVtkTools_SubPolyDataFilter , vtkPolyDataAlgorithm ) static IVtkTools_SubPolyDataFilter * New ( ) ;
## Error: token expected: ) but got: ,!!!

proc printSelf*(this: var IVtkToolsSubPolyDataFilter; theOs: var Ostream;
               theIndent: VtkIndent) {.importcpp: "PrintSelf",
                                     header: "IVtkTools_SubPolyDataFilter.hxx".}
proc setData*(this: var IVtkToolsSubPolyDataFilter; theSet: IVtkIdTypeMap) {.
    importcpp: "SetData", header: "IVtkTools_SubPolyDataFilter.hxx".}
proc addData*(this: var IVtkToolsSubPolyDataFilter; theSet: IVtkIdTypeMap) {.
    importcpp: "AddData", header: "IVtkTools_SubPolyDataFilter.hxx".}
proc setData*(this: var IVtkToolsSubPolyDataFilter; theIds: IVtkShapeIdList) {.
    importcpp: "SetData", header: "IVtkTools_SubPolyDataFilter.hxx".}
proc addData*(this: var IVtkToolsSubPolyDataFilter; theIds: IVtkShapeIdList) {.
    importcpp: "AddData", header: "IVtkTools_SubPolyDataFilter.hxx".}
proc clear*(this: var IVtkToolsSubPolyDataFilter) {.importcpp: "Clear",
    header: "IVtkTools_SubPolyDataFilter.hxx".}
proc setIdsArrayName*(this: var IVtkToolsSubPolyDataFilter; theArrayName: cstring) {.
    importcpp: "SetIdsArrayName", header: "IVtkTools_SubPolyDataFilter.hxx".}
proc setDoFiltering*(this: var IVtkToolsSubPolyDataFilter; theDoFiltering: bool) {.
    importcpp: "SetDoFiltering", header: "IVtkTools_SubPolyDataFilter.hxx".}
# # # # # # # # when defined(_MSC_VER):
# # # #   discard





