##  Created on: 2012-04-02
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
  ../NCollection/NCollection_DataMap, ../NCollection/NCollection_Shared,
  ../Standard/Standard_Transient, ../TopoDS/TopoDS_Shape

##  prevent disabling some MSVC warning messages by VTK headers

import
  ../Standard/Standard_WarningsDisable, ../Standard/Standard_WarningsRestore,
  ../IVtk/IVtk_Types, ../IVtkTools/IVtkTools_DisplayModeFilter,
  ../IVtkTools/IVtkTools_SubPolyDataFilter

type
  DisplayModeFiltersMap* = NCollection_DataMap[IVtk_IdType,
      vtkSmartPointer[IVtkTools_DisplayModeFilter]]
  SubShapesFiltersMap* = NCollection_DataMap[IVtk_IdType,
      vtkSmartPointer[IVtkTools_SubPolyDataFilter]]

discard "forward decl of IVtkDraw_HighlightAndSelectionPipeline"
discard "forward decl of IVtkDraw_HighlightAndSelectionPipeline"
type
  Handle_IVtkDraw_HighlightAndSelectionPipeline* = handle[
      IVtkDraw_HighlightAndSelectionPipeline]
  IVtkDraw_HighlightAndSelectionPipeline* {.
      importcpp: "IVtkDraw_HighlightAndSelectionPipeline",
      header: "IVtkDraw_HighlightAndSelectionPipeline.hxx", bycopy.} = object of Standard_Transient ##
                                                                                             ## !
                                                                                             ## Filters
                                                                                             ## comprising
                                                                                             ## the
                                                                                             ## pipeline.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Auxiliary
                                                                                             ## map
                                                                                             ## of
                                                                                             ## internal
                                                                                             ## filters
                                                                                             ## by
                                                                                             ## their
                                                                                             ## correspondent
                                                                                             ## IDs.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Actor.
    ## ! Polygonal mapper.
    ## ! Actor for highlighting.
    ## ! Polygonal mapper for highlighting.
    ## ! Actor for selection.
    ## ! Polygonal mapper for selection.
    ## ! Map of involved VTK filters.

  IVtkDraw_HighlightAndSelectionPipelinebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IVtkDraw_HighlightAndSelectionPipeline::get_type_name(@)", header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "IVtkDraw_HighlightAndSelectionPipeline::get_type_descriptor(@)",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc DynamicType*(this: IVtkDraw_HighlightAndSelectionPipeline): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
type
  IVtkDraw_HighlightAndSelectionPipelineFilterId* {.size: sizeof(cint),
      importcpp: "IVtkDraw_HighlightAndSelectionPipeline::FilterId",
      header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".} = enum
    Filter_DM_Shape = 1,        ## !< Display Mode filter for shape.
    Filter_DM_Hili,           ## !< Display Mode filter for highlighting.
    Filter_DM_Sel,            ## !< Display Mode filter for selection.
    Filter_SUB_Hili,          ## !< Sub-shapes filter for highlighting.
    Filter_SUB_Sel            ## !< Sub-shapes filter for selection.


proc constructIVtkDraw_HighlightAndSelectionPipeline*(theShape: TopoDS_Shape;
    theShapeID: Standard_Integer): IVtkDraw_HighlightAndSelectionPipeline {.
    constructor, importcpp: "IVtkDraw_HighlightAndSelectionPipeline(@)",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc destroyIVtkDraw_HighlightAndSelectionPipeline*(
    this: var IVtkDraw_HighlightAndSelectionPipeline) {.
    importcpp: "#.~IVtkDraw_HighlightAndSelectionPipeline()",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc AddToRenderer*(this: var IVtkDraw_HighlightAndSelectionPipeline;
                   theRenderer: ptr vtkRenderer) {.importcpp: "AddToRenderer",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc RemoveFromRenderer*(this: var IVtkDraw_HighlightAndSelectionPipeline;
                        theRenderer: ptr vtkRenderer) {.
    importcpp: "RemoveFromRenderer",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc Actor*(this: var IVtkDraw_HighlightAndSelectionPipeline): ptr vtkActor {.
    importcpp: "Actor", header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc Mapper*(this: var IVtkDraw_HighlightAndSelectionPipeline): ptr vtkMapper {.
    importcpp: "Mapper", header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc ClearHighlightFilters*(this: var IVtkDraw_HighlightAndSelectionPipeline) {.
    importcpp: "ClearHighlightFilters",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc ClearSelectionFilters*(this: var IVtkDraw_HighlightAndSelectionPipeline) {.
    importcpp: "ClearSelectionFilters",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc GetDisplayModeFilter*(this: var IVtkDraw_HighlightAndSelectionPipeline): ptr IVtkTools_DisplayModeFilter {.
    importcpp: "GetDisplayModeFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc GetHighlightFilter*(this: var IVtkDraw_HighlightAndSelectionPipeline): ptr IVtkTools_SubPolyDataFilter {.
    importcpp: "GetHighlightFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc GetSelectionFilter*(this: var IVtkDraw_HighlightAndSelectionPipeline): ptr IVtkTools_SubPolyDataFilter {.
    importcpp: "GetSelectionFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc GetHighlightDMFilter*(this: var IVtkDraw_HighlightAndSelectionPipeline): ptr IVtkTools_DisplayModeFilter {.
    importcpp: "GetHighlightDMFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc GetSelectionDMFilter*(this: var IVtkDraw_HighlightAndSelectionPipeline): ptr IVtkTools_DisplayModeFilter {.
    importcpp: "GetSelectionDMFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc SharedVerticesSelectionOn*(this: var IVtkDraw_HighlightAndSelectionPipeline) {.
    importcpp: "SharedVerticesSelectionOn",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc SharedVerticesSelectionOff*(this: var IVtkDraw_HighlightAndSelectionPipeline) {.
    importcpp: "SharedVerticesSelectionOff",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
## ! Mapping between OCCT topological shape IDs and their correspondent
## ! visualization pipelines.

type
  ShapePipelineMap* = NCollection_Shared[NCollection_DataMap[IVtk_IdType,
      handle[IVtkDraw_HighlightAndSelectionPipeline]]]
