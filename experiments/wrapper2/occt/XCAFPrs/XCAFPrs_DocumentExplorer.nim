##  Author: Kirill Gavrilov
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Vector, ../NCollection/NCollection_Sequence,
  XCAFPrs_DocumentNode, ../TDF/TDF_LabelSequence, ../TopoDS/TopoDS_Shape

discard "forward decl of TDocStd_Document"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_ColorTool"
discard "forward decl of XCAFDoc_VisMaterialTool"
type
  XCAFPrs_DocumentExplorerFlags* = Standard_Integer

## ! Document explorer flags.

const
  XCAFPrs_DocumentExplorerFlags_None* = 0x00 ## !< no flags
  XCAFPrs_DocumentExplorerFlags_OnlyLeafNodes* = 0x01 ## !< explore only leaf nodes (skip assembly nodes)
  XCAFPrs_DocumentExplorerFlags_NoStyle* = 0x02 ## !< do not fetch styles

## ! Document iterator through shape nodes.

type
  XCAFPrs_DocumentExplorer* {.importcpp: "XCAFPrs_DocumentExplorer",
                             header: "XCAFPrs_DocumentExplorer.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## @name
                                                                                  ## string
                                                                                  ## identification
                                                                                  ## tools
                                                                                  ##
                                                                                  ## !
                                                                                  ## Construct
                                                                                  ## a
                                                                                  ## unique
                                                                                  ## string
                                                                                  ## identifier
                                                                                  ## for
                                                                                  ## the
                                                                                  ## given
                                                                                  ## label.
                                                                                  ##
                                                                                  ## !
                                                                                  ## The
                                                                                  ## identifier
                                                                                  ## is
                                                                                  ## a
                                                                                  ## concatenation
                                                                                  ## of
                                                                                  ## label
                                                                                  ## entries
                                                                                  ## (TDF_Tool::Entry()
                                                                                  ## with
                                                                                  ## tailing
                                                                                  ## '.')
                                                                                  ## of
                                                                                  ## hierarchy
                                                                                  ## from
                                                                                  ## parent
                                                                                  ## to
                                                                                  ## child
                                                                                  ##
                                                                                  ## !
                                                                                  ## joined
                                                                                  ## via
                                                                                  ## '/'
                                                                                  ## and
                                                                                  ## looking
                                                                                  ## like
                                                                                  ## this:
                                                                                  ##
                                                                                  ## !
                                                                                  ## @code
                                                                                  ##
                                                                                  ## !
                                                                                  ## 0:1:1:1./0:1:1:1:9./0:1:1:5:7.
                                                                                  ##
                                                                                  ## !
                                                                                  ## @endcode
                                                                                  ##
                                                                                  ## !
                                                                                  ## This
                                                                                  ## generation
                                                                                  ## scheme
                                                                                  ## also
                                                                                  ## allows
                                                                                  ## finding
                                                                                  ## originating
                                                                                  ## labels
                                                                                  ## using
                                                                                  ## TDF_Tool::Label().
                                                                                  ##
                                                                                  ## !
                                                                                  ## The
                                                                                  ## tailing
                                                                                  ## dot
                                                                                  ## simplifies
                                                                                  ## parent
                                                                                  ## equality
                                                                                  ## check.
                                                                                  ##
                                                                                  ## !
                                                                                  ## @param
                                                                                  ## theLabel
                                                                                  ## child
                                                                                  ## label
                                                                                  ## to
                                                                                  ## define
                                                                                  ## id
                                                                                  ##
                                                                                  ## !
                                                                                  ## @param
                                                                                  ## theParentId
                                                                                  ## parent
                                                                                  ## string
                                                                                  ## identifier
                                                                                  ## defined
                                                                                  ## by
                                                                                  ## this
                                                                                  ## method
                                                                                  ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Initialize
                                                                                  ## root
                                                                                  ## label.
    ## !< color tool
    ## !< visual material tool
    ## !< sequence of root labels
    ## !< current root label
    ## !< node stack
    ## !< top position in the node stack
    ## !< global flag indicating that iterator points to the label
    ## !< default style
    ## !< current label info
    ## !< iteration flags


proc DefineChildId*(theLabel: TDF_Label; theParentId: TCollection_AsciiString): TCollection_AsciiString {.
    importcpp: "XCAFPrs_DocumentExplorer::DefineChildId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc FindLabelFromPathId*(theDocument: handle[TDocStd_Document];
                         theId: TCollection_AsciiString;
                         theParentLocation: var TopLoc_Location;
                         theLocation: var TopLoc_Location): TDF_Label {.
    importcpp: "XCAFPrs_DocumentExplorer::FindLabelFromPathId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc FindLabelFromPathId*(theDocument: handle[TDocStd_Document];
                         theId: TCollection_AsciiString;
                         theLocation: var TopLoc_Location): TDF_Label {.
    importcpp: "XCAFPrs_DocumentExplorer::FindLabelFromPathId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc FindShapeFromPathId*(theDocument: handle[TDocStd_Document];
                         theId: TCollection_AsciiString): TopoDS_Shape {.
    importcpp: "XCAFPrs_DocumentExplorer::FindShapeFromPathId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc constructXCAFPrs_DocumentExplorer*(): XCAFPrs_DocumentExplorer {.constructor,
    importcpp: "XCAFPrs_DocumentExplorer(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc constructXCAFPrs_DocumentExplorer*(theDocument: handle[TDocStd_Document];
                                       theFlags: XCAFPrs_DocumentExplorerFlags;
    theDefStyle: XCAFPrs_Style = XCAFPrs_Style()): XCAFPrs_DocumentExplorer {.
    constructor, importcpp: "XCAFPrs_DocumentExplorer(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc constructXCAFPrs_DocumentExplorer*(theDocument: handle[TDocStd_Document];
                                       theRoots: TDF_LabelSequence;
                                       theFlags: XCAFPrs_DocumentExplorerFlags;
    theDefStyle: XCAFPrs_Style = XCAFPrs_Style()): XCAFPrs_DocumentExplorer {.
    constructor, importcpp: "XCAFPrs_DocumentExplorer(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc Init*(this: var XCAFPrs_DocumentExplorer;
          theDocument: handle[TDocStd_Document]; theRoot: TDF_Label;
          theFlags: XCAFPrs_DocumentExplorerFlags;
          theDefStyle: XCAFPrs_Style = XCAFPrs_Style()) {.importcpp: "Init",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc Init*(this: var XCAFPrs_DocumentExplorer;
          theDocument: handle[TDocStd_Document]; theRoots: TDF_LabelSequence;
          theFlags: XCAFPrs_DocumentExplorerFlags;
          theDefStyle: XCAFPrs_Style = XCAFPrs_Style()) {.importcpp: "Init",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc More*(this: XCAFPrs_DocumentExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "XCAFPrs_DocumentExplorer.hxx".}
proc Current*(this: XCAFPrs_DocumentExplorer): XCAFPrs_DocumentNode {.noSideEffect,
    importcpp: "Current", header: "XCAFPrs_DocumentExplorer.hxx".}
proc ChangeCurrent*(this: var XCAFPrs_DocumentExplorer): var XCAFPrs_DocumentNode {.
    importcpp: "ChangeCurrent", header: "XCAFPrs_DocumentExplorer.hxx".}
proc Current*(this: XCAFPrs_DocumentExplorer; theDepth: Standard_Integer): XCAFPrs_DocumentNode {.
    noSideEffect, importcpp: "Current", header: "XCAFPrs_DocumentExplorer.hxx".}
proc CurrentDepth*(this: XCAFPrs_DocumentExplorer): Standard_Integer {.noSideEffect,
    importcpp: "CurrentDepth", header: "XCAFPrs_DocumentExplorer.hxx".}
proc Next*(this: var XCAFPrs_DocumentExplorer) {.importcpp: "Next",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc ColorTool*(this: XCAFPrs_DocumentExplorer): handle[XCAFDoc_ColorTool] {.
    noSideEffect, importcpp: "ColorTool", header: "XCAFPrs_DocumentExplorer.hxx".}
proc VisMaterialTool*(this: XCAFPrs_DocumentExplorer): handle[
    XCAFDoc_VisMaterialTool] {.noSideEffect, importcpp: "VisMaterialTool",
                              header: "XCAFPrs_DocumentExplorer.hxx".}