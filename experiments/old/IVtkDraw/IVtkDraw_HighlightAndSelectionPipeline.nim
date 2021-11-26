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

##  prevent disabling some MSVC warning messages by VTK headers

type
  DisplayModeFiltersMap* = NCollectionDataMap[IVtkIdType,
      VtkSmartPointer[IVtkToolsDisplayModeFilter]]
  SubShapesFiltersMap* = NCollectionDataMap[IVtkIdType,
      VtkSmartPointer[IVtkToolsSubPolyDataFilter]]

discard "forward decl of IVtkDraw_HighlightAndSelectionPipeline"
discard "forward decl of IVtkDraw_HighlightAndSelectionPipeline"
type
  HandleC1C1* = Handle[IVtkDrawHighlightAndSelectionPipeline]
  IVtkDrawHighlightAndSelectionPipeline* {.
      importcpp: "IVtkDraw_HighlightAndSelectionPipeline",
      header: "IVtkDraw_HighlightAndSelectionPipeline.hxx", bycopy.} = object of StandardTransient ##
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

  IVtkDrawHighlightAndSelectionPipelinebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IVtkDraw_HighlightAndSelectionPipeline::get_type_name(@)", header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "IVtkDraw_HighlightAndSelectionPipeline::get_type_descriptor(@)",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc dynamicType*(this: IVtkDrawHighlightAndSelectionPipeline): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
type
  IVtkDrawHighlightAndSelectionPipelineFilterId* {.size: sizeof(cint),
      importcpp: "IVtkDraw_HighlightAndSelectionPipeline::FilterId",
      header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".} = enum
    FilterDM_Shape = 1,         ## !< Display Mode filter for shape.
    FilterDM_Hili,            ## !< Display Mode filter for highlighting.
    FilterDM_Sel,             ## !< Display Mode filter for selection.
    FilterSUB_Hili,           ## !< Sub-shapes filter for highlighting.
    FilterSUB_Sel             ## !< Sub-shapes filter for selection.


proc constructIVtkDrawHighlightAndSelectionPipeline*(theShape: TopoDS_Shape;
    theShapeID: cint): IVtkDrawHighlightAndSelectionPipeline {.constructor,
    importcpp: "IVtkDraw_HighlightAndSelectionPipeline(@)",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc destroyIVtkDrawHighlightAndSelectionPipeline*(
    this: var IVtkDrawHighlightAndSelectionPipeline) {.
    importcpp: "#.~IVtkDraw_HighlightAndSelectionPipeline()",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc addToRenderer*(this: var IVtkDrawHighlightAndSelectionPipeline;
                   theRenderer: ptr VtkRenderer) {.importcpp: "AddToRenderer",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc removeFromRenderer*(this: var IVtkDrawHighlightAndSelectionPipeline;
                        theRenderer: ptr VtkRenderer) {.
    importcpp: "RemoveFromRenderer",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc actor*(this: var IVtkDrawHighlightAndSelectionPipeline): ptr VtkActor {.
    importcpp: "Actor", header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc mapper*(this: var IVtkDrawHighlightAndSelectionPipeline): ptr VtkMapper {.
    importcpp: "Mapper", header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc clearHighlightFilters*(this: var IVtkDrawHighlightAndSelectionPipeline) {.
    importcpp: "ClearHighlightFilters",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc clearSelectionFilters*(this: var IVtkDrawHighlightAndSelectionPipeline) {.
    importcpp: "ClearSelectionFilters",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc getDisplayModeFilter*(this: var IVtkDrawHighlightAndSelectionPipeline): ptr IVtkToolsDisplayModeFilter {.
    importcpp: "GetDisplayModeFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc getHighlightFilter*(this: var IVtkDrawHighlightAndSelectionPipeline): ptr IVtkToolsSubPolyDataFilter {.
    importcpp: "GetHighlightFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc getSelectionFilter*(this: var IVtkDrawHighlightAndSelectionPipeline): ptr IVtkToolsSubPolyDataFilter {.
    importcpp: "GetSelectionFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc getHighlightDMFilter*(this: var IVtkDrawHighlightAndSelectionPipeline): ptr IVtkToolsDisplayModeFilter {.
    importcpp: "GetHighlightDMFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc getSelectionDMFilter*(this: var IVtkDrawHighlightAndSelectionPipeline): ptr IVtkToolsDisplayModeFilter {.
    importcpp: "GetSelectionDMFilter",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc sharedVerticesSelectionOn*(this: var IVtkDrawHighlightAndSelectionPipeline) {.
    importcpp: "SharedVerticesSelectionOn",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
proc sharedVerticesSelectionOff*(this: var IVtkDrawHighlightAndSelectionPipeline) {.
    importcpp: "SharedVerticesSelectionOff",
    header: "IVtkDraw_HighlightAndSelectionPipeline.hxx".}
## ! Mapping between OCCT topological shape IDs and their correspondent
## ! visualization pipelines.

type
  ShapePipelineMap* = NCollectionShared[NCollectionDataMap[IVtkIdType,
      Handle[IVtkDrawHighlightAndSelectionPipeline]]]


























