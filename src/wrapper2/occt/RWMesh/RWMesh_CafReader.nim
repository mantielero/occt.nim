##  Author: Kirill Gavrilov
##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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
  ../Message/Message_ProgressRange, ../NCollection/NCollection_IndexedMap,
  RWMesh_CoordinateSystemConverter, RWMesh_NodeAttributes,
  ../TColStd/TColStd_IndexedDataMapOfStringString, ../TDF/TDF_Label,
  ../TopTools/TopTools_SequenceOfShape

discard "forward decl of TDocStd_Document"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_ColorTool"
discard "forward decl of XCAFDoc_VisMaterialTool"
type
  RWMesh_CafReaderStatusEx* {.size: sizeof(cint),
                             importcpp: "RWMesh_CafReaderStatusEx",
                             header: "RWMesh_CafReader.hxx".} = enum
    RWMesh_CafReaderStatusEx_NONE = 0, ## !< empty status
    RWMesh_CafReaderStatusEx_Partial = 0x01 ## !< partial read (due to unexpected EOF, syntax error, memory limit)


## ! The general interface for importing mesh data into XDE document.
## !
## ! The tool implements auxiliary structures for creating an XDE document in two steps:
## ! 1) Creating TopoDS_Shape hierarchy (myRootShapes)
## !    and Shape attributes (myAttribMap) separately within performMesh().
## !    Attributes include names and styles.
## ! 2) Filling XDE document from these auxiliary structures.
## !    Named elements are expanded within document structure, while Compounds having no named children will remain collapsed.
## !    In addition, unnamed nodes can be filled with generated names like "Face", "Compound" via generateNames() method,
## !    and the very root unnamed node can be filled from file name like "MyModel.obj".

type
  RWMesh_CafReader* {.importcpp: "RWMesh_CafReader",
                     header: "RWMesh_CafReader.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Structure
                                                                                      ## holding
                                                                                      ## tools
                                                                                      ## for
                                                                                      ## filling
                                                                                      ## the
                                                                                      ## document.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## coordinate
                                                                                      ## system
                                                                                      ## converter.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Read
                                                                                      ## the
                                                                                      ## data
                                                                                      ## from
                                                                                      ## specified
                                                                                      ## file.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## Document
                                                                                      ## instance
                                                                                      ## should
                                                                                      ## be
                                                                                      ## set
                                                                                      ## beforehand.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## result
                                                                                      ## as
                                                                                      ## a
                                                                                      ## single
                                                                                      ## shape.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Read
                                                                                      ## the
                                                                                      ## data
                                                                                      ## from
                                                                                      ## specified
                                                                                      ## file.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Default
                                                                                      ## implementation
                                                                                      ## calls
                                                                                      ## performMesh()
                                                                                      ## and
                                                                                      ## fills
                                                                                      ## XDE
                                                                                      ## document
                                                                                      ## from
                                                                                      ## collected
                                                                                      ## shapes.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theFile
                                                                                      ## file
                                                                                      ## to
                                                                                      ## read
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## optional
                                                                                      ## progress
                                                                                      ## indicator
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theToProbe
                                                                                      ## flag
                                                                                      ## indicating
                                                                                      ## that
                                                                                      ## mesh
                                                                                      ## data
                                                                                      ## should
                                                                                      ## be
                                                                                      ## skipped
                                                                                      ## and
                                                                                      ## only
                                                                                      ## basing
                                                                                      ## information
                                                                                      ## to
                                                                                      ## be
                                                                                      ## read
                                                                                      ##
                                                                                      ## !
                                                                                      ## Fill
                                                                                      ## document
                                                                                      ## with
                                                                                      ## new
                                                                                      ## root
                                                                                      ## shapes.
    ## !< target document
    ## !< metadata map
    ## !< the list of complementary files - external references (textures, data, etc.)
    ## !< root folder for generating root labels names
    ## !< sequence of result root shapes
    ## !< map of per-shape attributes
    ## !< coordinate system converter
    ## !< fill document from shape sequence
    ## !< fill the document with partially retrieved data even if reader has failed with error
    ## !< memory usage limit
    ## !< extra status bitmask

  RWMesh_CafReaderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "RWMesh_CafReader::get_type_name(@)",
                              header: "RWMesh_CafReader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWMesh_CafReader::get_type_descriptor(@)",
    header: "RWMesh_CafReader.hxx".}
proc DynamicType*(this: RWMesh_CafReader): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "RWMesh_CafReader.hxx".}
type
  RWMesh_CafReaderCafDocumentTools* {.importcpp: "RWMesh_CafReader::CafDocumentTools",
                                     header: "RWMesh_CafReader.hxx", bycopy.} = object
    ShapeTool* {.importc: "ShapeTool".}: handle[XCAFDoc_ShapeTool]
    ColorTool* {.importc: "ColorTool".}: handle[XCAFDoc_ColorTool]
    VisMaterialTool* {.importc: "VisMaterialTool".}: handle[XCAFDoc_VisMaterialTool]
    ComponentMap* {.importc: "ComponentMap".}: NCollection_DataMap[TopoDS_Shape,
        TDF_Label, TopTools_ShapeMapHasher]


proc constructRWMesh_CafReader*(): RWMesh_CafReader {.constructor,
    importcpp: "RWMesh_CafReader(@)", header: "RWMesh_CafReader.hxx".}
proc destroyRWMesh_CafReader*(this: var RWMesh_CafReader) {.
    importcpp: "#.~RWMesh_CafReader()", header: "RWMesh_CafReader.hxx".}
proc Document*(this: RWMesh_CafReader): handle[TDocStd_Document] {.noSideEffect,
    importcpp: "Document", header: "RWMesh_CafReader.hxx".}
proc SetDocument*(this: var RWMesh_CafReader; theDoc: handle[TDocStd_Document]) {.
    importcpp: "SetDocument", header: "RWMesh_CafReader.hxx".}
proc RootPrefix*(this: RWMesh_CafReader): TCollection_AsciiString {.noSideEffect,
    importcpp: "RootPrefix", header: "RWMesh_CafReader.hxx".}
proc SetRootPrefix*(this: var RWMesh_CafReader;
                   theRootPrefix: TCollection_AsciiString) {.
    importcpp: "SetRootPrefix", header: "RWMesh_CafReader.hxx".}
proc ToFillIncompleteDocument*(this: RWMesh_CafReader): Standard_Boolean {.
    noSideEffect, importcpp: "ToFillIncompleteDocument",
    header: "RWMesh_CafReader.hxx".}
proc SetFillIncompleteDocument*(this: var RWMesh_CafReader;
                               theToFillIncomplete: Standard_Boolean) {.
    importcpp: "SetFillIncompleteDocument", header: "RWMesh_CafReader.hxx".}
proc MemoryLimitMiB*(this: RWMesh_CafReader): Standard_Integer {.noSideEffect,
    importcpp: "MemoryLimitMiB", header: "RWMesh_CafReader.hxx".}
proc SetMemoryLimitMiB*(this: var RWMesh_CafReader; theLimitMiB: Standard_Integer) {.
    importcpp: "SetMemoryLimitMiB", header: "RWMesh_CafReader.hxx".}
proc CoordinateSystemConverter*(this: RWMesh_CafReader): RWMesh_CoordinateSystemConverter {.
    noSideEffect, importcpp: "CoordinateSystemConverter",
    header: "RWMesh_CafReader.hxx".}
proc SetCoordinateSystemConverter*(this: var RWMesh_CafReader; theConverter: RWMesh_CoordinateSystemConverter) {.
    importcpp: "SetCoordinateSystemConverter", header: "RWMesh_CafReader.hxx".}
proc SystemLengthUnit*(this: RWMesh_CafReader): Standard_Real {.noSideEffect,
    importcpp: "SystemLengthUnit", header: "RWMesh_CafReader.hxx".}
proc SetSystemLengthUnit*(this: var RWMesh_CafReader; theUnits: Standard_Real) {.
    importcpp: "SetSystemLengthUnit", header: "RWMesh_CafReader.hxx".}
proc HasSystemCoordinateSystem*(this: RWMesh_CafReader): Standard_Boolean {.
    noSideEffect, importcpp: "HasSystemCoordinateSystem",
    header: "RWMesh_CafReader.hxx".}
proc SystemCoordinateSystem*(this: RWMesh_CafReader): gp_Ax3 {.noSideEffect,
    importcpp: "SystemCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc SetSystemCoordinateSystem*(this: var RWMesh_CafReader; theCS: gp_Ax3) {.
    importcpp: "SetSystemCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc SetSystemCoordinateSystem*(this: var RWMesh_CafReader;
                               theCS: RWMesh_CoordinateSystem) {.
    importcpp: "SetSystemCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc FileLengthUnit*(this: RWMesh_CafReader): Standard_Real {.noSideEffect,
    importcpp: "FileLengthUnit", header: "RWMesh_CafReader.hxx".}
proc SetFileLengthUnit*(this: var RWMesh_CafReader; theUnits: Standard_Real) {.
    importcpp: "SetFileLengthUnit", header: "RWMesh_CafReader.hxx".}
proc HasFileCoordinateSystem*(this: RWMesh_CafReader): Standard_Boolean {.
    noSideEffect, importcpp: "HasFileCoordinateSystem",
    header: "RWMesh_CafReader.hxx".}
proc FileCoordinateSystem*(this: RWMesh_CafReader): gp_Ax3 {.noSideEffect,
    importcpp: "FileCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc SetFileCoordinateSystem*(this: var RWMesh_CafReader; theCS: gp_Ax3) {.
    importcpp: "SetFileCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc SetFileCoordinateSystem*(this: var RWMesh_CafReader;
                             theCS: RWMesh_CoordinateSystem) {.
    importcpp: "SetFileCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc Perform*(this: var RWMesh_CafReader; theFile: TCollection_AsciiString;
             theProgress: Message_ProgressRange): bool {.importcpp: "Perform",
    header: "RWMesh_CafReader.hxx".}
proc ExtraStatus*(this: RWMesh_CafReader): Standard_Integer {.noSideEffect,
    importcpp: "ExtraStatus", header: "RWMesh_CafReader.hxx".}
proc SingleShape*(this: RWMesh_CafReader): TopoDS_Shape {.noSideEffect,
    importcpp: "SingleShape", header: "RWMesh_CafReader.hxx".}
proc ExternalFiles*(this: RWMesh_CafReader): NCollection_IndexedMap[
    TCollection_AsciiString] {.noSideEffect, importcpp: "ExternalFiles",
                              header: "RWMesh_CafReader.hxx".}
proc Metadata*(this: RWMesh_CafReader): TColStd_IndexedDataMapOfStringString {.
    noSideEffect, importcpp: "Metadata", header: "RWMesh_CafReader.hxx".}
proc ProbeHeader*(this: var RWMesh_CafReader; theFile: TCollection_AsciiString;
                 theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "ProbeHeader", header: "RWMesh_CafReader.hxx".}