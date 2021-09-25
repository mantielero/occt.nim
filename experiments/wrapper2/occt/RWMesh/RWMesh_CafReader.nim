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

discard "forward decl of TDocStd_Document"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_ColorTool"
discard "forward decl of XCAFDoc_VisMaterialTool"
type
  RWMeshCafReaderStatusEx* {.size: sizeof(cint),
                            importcpp: "RWMesh_CafReaderStatusEx",
                            header: "RWMesh_CafReader.hxx".} = enum
    RWMeshCafReaderStatusExNONE = 0, ## !< empty status
    RWMeshCafReaderStatusExPartial = 0x01 ## !< partial read (due to unexpected EOF, syntax error, memory limit)


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
  RWMeshCafReader* {.importcpp: "RWMesh_CafReader", header: "RWMesh_CafReader.hxx",
                    bycopy.} = object of StandardTransient ## ! Structure holding tools for filling the document.
                                                      ## ! Empty constructor.
                                                      ## ! Return coordinate system converter.
                                                      ## ! Read the data from specified file.
                                                      ## ! The Document instance should be set beforehand.
                                                      ## ! Return result as a single shape.
                                                      ## ! Read the data from specified file.
                                                      ## ! Default implementation calls performMesh() and fills XDE document from collected shapes.
                                                      ## ! @param theFile    file to read
                                                      ## ! @param optional   progress indicator
                                                      ## ! @param theToProbe flag indicating that mesh data should be skipped and only basing information to be read
                                                      ## ! Fill document with new root shapes.
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

  RWMeshCafReaderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "RWMesh_CafReader::get_type_name(@)",
                            header: "RWMesh_CafReader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWMesh_CafReader::get_type_descriptor(@)",
    header: "RWMesh_CafReader.hxx".}
proc dynamicType*(this: RWMeshCafReader): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "RWMesh_CafReader.hxx".}
type
  RWMeshCafReaderCafDocumentTools* {.importcpp: "RWMesh_CafReader::CafDocumentTools",
                                    header: "RWMesh_CafReader.hxx", bycopy.} = object
    shapeTool* {.importc: "ShapeTool".}: Handle[XCAFDocShapeTool]
    colorTool* {.importc: "ColorTool".}: Handle[XCAFDocColorTool]
    visMaterialTool* {.importc: "VisMaterialTool".}: Handle[XCAFDocVisMaterialTool]
    componentMap* {.importc: "ComponentMap".}: NCollectionDataMap[TopoDS_Shape,
        TDF_Label, TopToolsShapeMapHasher]


proc constructRWMeshCafReader*(): RWMeshCafReader {.constructor,
    importcpp: "RWMesh_CafReader(@)", header: "RWMesh_CafReader.hxx".}
proc destroyRWMeshCafReader*(this: var RWMeshCafReader) {.
    importcpp: "#.~RWMesh_CafReader()", header: "RWMesh_CafReader.hxx".}
proc document*(this: RWMeshCafReader): Handle[TDocStdDocument] {.noSideEffect,
    importcpp: "Document", header: "RWMesh_CafReader.hxx".}
proc setDocument*(this: var RWMeshCafReader; theDoc: Handle[TDocStdDocument]) {.
    importcpp: "SetDocument", header: "RWMesh_CafReader.hxx".}
proc rootPrefix*(this: RWMeshCafReader): TCollectionAsciiString {.noSideEffect,
    importcpp: "RootPrefix", header: "RWMesh_CafReader.hxx".}
proc setRootPrefix*(this: var RWMeshCafReader; theRootPrefix: TCollectionAsciiString) {.
    importcpp: "SetRootPrefix", header: "RWMesh_CafReader.hxx".}
proc toFillIncompleteDocument*(this: RWMeshCafReader): bool {.noSideEffect,
    importcpp: "ToFillIncompleteDocument", header: "RWMesh_CafReader.hxx".}
proc setFillIncompleteDocument*(this: var RWMeshCafReader; theToFillIncomplete: bool) {.
    importcpp: "SetFillIncompleteDocument", header: "RWMesh_CafReader.hxx".}
proc memoryLimitMiB*(this: RWMeshCafReader): int {.noSideEffect,
    importcpp: "MemoryLimitMiB", header: "RWMesh_CafReader.hxx".}
proc setMemoryLimitMiB*(this: var RWMeshCafReader; theLimitMiB: int) {.
    importcpp: "SetMemoryLimitMiB", header: "RWMesh_CafReader.hxx".}
proc coordinateSystemConverter*(this: RWMeshCafReader): RWMeshCoordinateSystemConverter {.
    noSideEffect, importcpp: "CoordinateSystemConverter",
    header: "RWMesh_CafReader.hxx".}
proc setCoordinateSystemConverter*(this: var RWMeshCafReader;
                                  theConverter: RWMeshCoordinateSystemConverter) {.
    importcpp: "SetCoordinateSystemConverter", header: "RWMesh_CafReader.hxx".}
proc systemLengthUnit*(this: RWMeshCafReader): float {.noSideEffect,
    importcpp: "SystemLengthUnit", header: "RWMesh_CafReader.hxx".}
proc setSystemLengthUnit*(this: var RWMeshCafReader; theUnits: float) {.
    importcpp: "SetSystemLengthUnit", header: "RWMesh_CafReader.hxx".}
proc hasSystemCoordinateSystem*(this: RWMeshCafReader): bool {.noSideEffect,
    importcpp: "HasSystemCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc systemCoordinateSystem*(this: RWMeshCafReader): Ax3 {.noSideEffect,
    importcpp: "SystemCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc setSystemCoordinateSystem*(this: var RWMeshCafReader; theCS: Ax3) {.
    importcpp: "SetSystemCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc setSystemCoordinateSystem*(this: var RWMeshCafReader;
                               theCS: RWMeshCoordinateSystem) {.
    importcpp: "SetSystemCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc fileLengthUnit*(this: RWMeshCafReader): float {.noSideEffect,
    importcpp: "FileLengthUnit", header: "RWMesh_CafReader.hxx".}
proc setFileLengthUnit*(this: var RWMeshCafReader; theUnits: float) {.
    importcpp: "SetFileLengthUnit", header: "RWMesh_CafReader.hxx".}
proc hasFileCoordinateSystem*(this: RWMeshCafReader): bool {.noSideEffect,
    importcpp: "HasFileCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc fileCoordinateSystem*(this: RWMeshCafReader): Ax3 {.noSideEffect,
    importcpp: "FileCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc setFileCoordinateSystem*(this: var RWMeshCafReader; theCS: Ax3) {.
    importcpp: "SetFileCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc setFileCoordinateSystem*(this: var RWMeshCafReader;
                             theCS: RWMeshCoordinateSystem) {.
    importcpp: "SetFileCoordinateSystem", header: "RWMesh_CafReader.hxx".}
proc perform*(this: var RWMeshCafReader; theFile: TCollectionAsciiString;
             theProgress: MessageProgressRange): bool {.importcpp: "Perform",
    header: "RWMesh_CafReader.hxx".}
proc extraStatus*(this: RWMeshCafReader): int {.noSideEffect,
    importcpp: "ExtraStatus", header: "RWMesh_CafReader.hxx".}
proc singleShape*(this: RWMeshCafReader): TopoDS_Shape {.noSideEffect,
    importcpp: "SingleShape", header: "RWMesh_CafReader.hxx".}
proc externalFiles*(this: RWMeshCafReader): NCollectionIndexedMap[
    TCollectionAsciiString] {.noSideEffect, importcpp: "ExternalFiles",
                             header: "RWMesh_CafReader.hxx".}
proc metadata*(this: RWMeshCafReader): TColStdIndexedDataMapOfStringString {.
    noSideEffect, importcpp: "Metadata", header: "RWMesh_CafReader.hxx".}
proc probeHeader*(this: var RWMeshCafReader; theFile: TCollectionAsciiString;
                 theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "ProbeHeader", header: "RWMesh_CafReader.hxx".}
