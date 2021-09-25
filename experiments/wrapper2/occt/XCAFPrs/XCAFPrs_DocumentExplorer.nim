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

discard "forward decl of TDocStd_Document"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_ColorTool"
discard "forward decl of XCAFDoc_VisMaterialTool"
type
  XCAFPrsDocumentExplorerFlags* = int

## ! Document explorer flags.

const
  XCAFPrsDocumentExplorerFlagsNone* = 0x00 ## !< no flags
  XCAFPrsDocumentExplorerFlagsOnlyLeafNodes* = 0x01 ## !< explore only leaf nodes (skip assembly nodes)
  XCAFPrsDocumentExplorerFlagsNoStyle* = 0x02 ## !< do not fetch styles

## ! Document iterator through shape nodes.

type
  XCAFPrsDocumentExplorer* {.importcpp: "XCAFPrs_DocumentExplorer",
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


proc defineChildId*(theLabel: TDF_Label; theParentId: TCollectionAsciiString): TCollectionAsciiString {.
    importcpp: "XCAFPrs_DocumentExplorer::DefineChildId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc findLabelFromPathId*(theDocument: Handle[TDocStdDocument];
                         theId: TCollectionAsciiString;
                         theParentLocation: var TopLocLocation;
                         theLocation: var TopLocLocation): TDF_Label {.
    importcpp: "XCAFPrs_DocumentExplorer::FindLabelFromPathId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc findLabelFromPathId*(theDocument: Handle[TDocStdDocument];
                         theId: TCollectionAsciiString;
                         theLocation: var TopLocLocation): TDF_Label {.
    importcpp: "XCAFPrs_DocumentExplorer::FindLabelFromPathId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc findShapeFromPathId*(theDocument: Handle[TDocStdDocument];
                         theId: TCollectionAsciiString): TopoDS_Shape {.
    importcpp: "XCAFPrs_DocumentExplorer::FindShapeFromPathId(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc constructXCAFPrsDocumentExplorer*(): XCAFPrsDocumentExplorer {.constructor,
    importcpp: "XCAFPrs_DocumentExplorer(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc constructXCAFPrsDocumentExplorer*(theDocument: Handle[TDocStdDocument];
                                      theFlags: XCAFPrsDocumentExplorerFlags;
    theDefStyle: XCAFPrsStyle = xCAFPrsStyle()): XCAFPrsDocumentExplorer {.
    constructor, importcpp: "XCAFPrs_DocumentExplorer(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc constructXCAFPrsDocumentExplorer*(theDocument: Handle[TDocStdDocument];
                                      theRoots: TDF_LabelSequence;
                                      theFlags: XCAFPrsDocumentExplorerFlags;
    theDefStyle: XCAFPrsStyle = xCAFPrsStyle()): XCAFPrsDocumentExplorer {.
    constructor, importcpp: "XCAFPrs_DocumentExplorer(@)",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc init*(this: var XCAFPrsDocumentExplorer; theDocument: Handle[TDocStdDocument];
          theRoot: TDF_Label; theFlags: XCAFPrsDocumentExplorerFlags;
          theDefStyle: XCAFPrsStyle = xCAFPrsStyle()) {.importcpp: "Init",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc init*(this: var XCAFPrsDocumentExplorer; theDocument: Handle[TDocStdDocument];
          theRoots: TDF_LabelSequence; theFlags: XCAFPrsDocumentExplorerFlags;
          theDefStyle: XCAFPrsStyle = xCAFPrsStyle()) {.importcpp: "Init",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc more*(this: XCAFPrsDocumentExplorer): bool {.noSideEffect, importcpp: "More",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc current*(this: XCAFPrsDocumentExplorer): XCAFPrsDocumentNode {.noSideEffect,
    importcpp: "Current", header: "XCAFPrs_DocumentExplorer.hxx".}
proc changeCurrent*(this: var XCAFPrsDocumentExplorer): var XCAFPrsDocumentNode {.
    importcpp: "ChangeCurrent", header: "XCAFPrs_DocumentExplorer.hxx".}
proc current*(this: XCAFPrsDocumentExplorer; theDepth: int): XCAFPrsDocumentNode {.
    noSideEffect, importcpp: "Current", header: "XCAFPrs_DocumentExplorer.hxx".}
proc currentDepth*(this: XCAFPrsDocumentExplorer): int {.noSideEffect,
    importcpp: "CurrentDepth", header: "XCAFPrs_DocumentExplorer.hxx".}
proc next*(this: var XCAFPrsDocumentExplorer) {.importcpp: "Next",
    header: "XCAFPrs_DocumentExplorer.hxx".}
proc colorTool*(this: XCAFPrsDocumentExplorer): Handle[XCAFDocColorTool] {.
    noSideEffect, importcpp: "ColorTool", header: "XCAFPrs_DocumentExplorer.hxx".}
proc visMaterialTool*(this: XCAFPrsDocumentExplorer): Handle[XCAFDocVisMaterialTool] {.
    noSideEffect, importcpp: "VisMaterialTool",
    header: "XCAFPrs_DocumentExplorer.hxx".}
