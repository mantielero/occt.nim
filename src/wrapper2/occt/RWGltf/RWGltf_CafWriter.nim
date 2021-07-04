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
  ../TColStd/TColStd_IndexedDataMapOfStringString,
  ../TColStd/TColStd_MapOfAsciiString, ../TDF/TDF_LabelSequence,
  ../TopTools/TopTools_ShapeMapHasher, RWGltf_GltfBufferView, RWGltf_GltfFace,
  RWGltf_WriterTrsfFormat, ../RWMesh/RWMesh_CoordinateSystemConverter,
  ../XCAFPrs/XCAFPrs_Style

discard "forward decl of Message_ProgressRange"
discard "forward decl of RWMesh_FaceIterator"
discard "forward decl of RWGltf_GltfOStreamWriter"
discard "forward decl of RWGltf_GltfMaterialMap"
discard "forward decl of RWGltf_GltfSceneNodeMap"
discard "forward decl of TDocStd_Document"
type
  RWGltf_CafWriter* {.importcpp: "RWGltf_CafWriter",
                     header: "RWGltf_CafWriter.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Main
                                                                                      ## constructor.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theFile
                                                                                      ## [in]
                                                                                      ## path
                                                                                      ## to
                                                                                      ## output
                                                                                      ## glTF
                                                                                      ## file
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theIsBinary
                                                                                      ## [in]
                                                                                      ## flag
                                                                                      ## to
                                                                                      ## write
                                                                                      ## into
                                                                                      ## binary
                                                                                      ## glTF
                                                                                      ## format
                                                                                      ## (.glb)
                                                                                      ##
                                                                                      ## !
                                                                                      ## Write
                                                                                      ## binary
                                                                                      ## data
                                                                                      ## file
                                                                                      ## with
                                                                                      ## triangulation
                                                                                      ## data.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Triangulation
                                                                                      ## data
                                                                                      ## should
                                                                                      ## be
                                                                                      ## precomputed
                                                                                      ## within
                                                                                      ## shapes!
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theDocument
                                                                                      ## [in]
                                                                                      ## input
                                                                                      ## document
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theRootLabels
                                                                                      ## [in]
                                                                                      ## list
                                                                                      ## of
                                                                                      ## root
                                                                                      ## shapes
                                                                                      ## to
                                                                                      ## export
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theLabelFilter
                                                                                      ## [in]
                                                                                      ## optional
                                                                                      ## filter
                                                                                      ## with
                                                                                      ## document
                                                                                      ## nodes
                                                                                      ## to
                                                                                      ## export
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theProgress
                                                                                      ## [in]
                                                                                      ## optional
                                                                                      ## progress
                                                                                      ## indicator
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## FALSE
                                                                                      ## on
                                                                                      ## file
                                                                                      ## writing
                                                                                      ## failure
                                                                                      ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## TRUE
                                                                                      ## if
                                                                                      ## face
                                                                                      ## mesh
                                                                                      ## should
                                                                                      ## be
                                                                                      ## skipped
                                                                                      ## (e.g.
                                                                                      ## because
                                                                                      ## it
                                                                                      ## is
                                                                                      ## invalid
                                                                                      ## or
                                                                                      ## empty).
                                                                                      ##
                                                                                      ## !
                                                                                      ## Write
                                                                                      ## bufferView
                                                                                      ## for
                                                                                      ## vertex
                                                                                      ## positions
                                                                                      ## within
                                                                                      ## RWGltf_GltfRootElement_Accessors
                                                                                      ## section
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theGltfFace
                                                                                      ## [in]
                                                                                      ## face
                                                                                      ## definition
                                                                                      ## to
                                                                                      ## write
                                                                                      ##
                                                                                      ## !
                                                                                      ## Write
                                                                                      ## RWGltf_GltfRootElement_Accessors
                                                                                      ## section.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theSceneNodeMap
                                                                                      ## [in]
                                                                                      ## ordered
                                                                                      ## map
                                                                                      ## of
                                                                                      ## scene
                                                                                      ## nodes
    ## !< output glTF file
    ## !< output file with binary data (full  path)
    ## !< output file with binary data (short path)
    ## !< transformation format to write into glTF file
    ## !< flag to write into binary glTF format (.glb)
    ## !< export UV coordinates even if there are no mapped texture
    ## !< transformation from OCCT to glTF coordinate system
    ## !< default material definition to be used for nodes with only color defined
    ## !< JSON writer
    ## !< current buffer view with nodes positions
    ## !< current buffer view with nodes normals
    ## !< current buffer view with nodes UV coordinates
    ## !< current buffer view with triangulation indexes
    ## !< map for TopoDS_Face to glTF face (merging duplicates)
    ## !< length of binary file

  RWGltf_CafWriterbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "RWGltf_CafWriter::get_type_name(@)",
                              header: "RWGltf_CafWriter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWGltf_CafWriter::get_type_descriptor(@)",
    header: "RWGltf_CafWriter.hxx".}
proc DynamicType*(this: RWGltf_CafWriter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "RWGltf_CafWriter.hxx".}
proc constructRWGltf_CafWriter*(theFile: TCollection_AsciiString;
                               theIsBinary: Standard_Boolean): RWGltf_CafWriter {.
    constructor, importcpp: "RWGltf_CafWriter(@)", header: "RWGltf_CafWriter.hxx".}
proc destroyRWGltf_CafWriter*(this: var RWGltf_CafWriter) {.
    importcpp: "#.~RWGltf_CafWriter()", header: "RWGltf_CafWriter.hxx".}
proc CoordinateSystemConverter*(this: RWGltf_CafWriter): RWMesh_CoordinateSystemConverter {.
    noSideEffect, importcpp: "CoordinateSystemConverter",
    header: "RWGltf_CafWriter.hxx".}
proc ChangeCoordinateSystemConverter*(this: var RWGltf_CafWriter): var RWMesh_CoordinateSystemConverter {.
    importcpp: "ChangeCoordinateSystemConverter", header: "RWGltf_CafWriter.hxx".}
proc SetCoordinateSystemConverter*(this: var RWGltf_CafWriter; theConverter: RWMesh_CoordinateSystemConverter) {.
    importcpp: "SetCoordinateSystemConverter", header: "RWGltf_CafWriter.hxx".}
proc IsBinary*(this: RWGltf_CafWriter): bool {.noSideEffect, importcpp: "IsBinary",
    header: "RWGltf_CafWriter.hxx".}
proc TransformationFormat*(this: RWGltf_CafWriter): RWGltf_WriterTrsfFormat {.
    noSideEffect, importcpp: "TransformationFormat", header: "RWGltf_CafWriter.hxx".}
proc SetTransformationFormat*(this: var RWGltf_CafWriter;
                             theFormat: RWGltf_WriterTrsfFormat) {.
    importcpp: "SetTransformationFormat", header: "RWGltf_CafWriter.hxx".}
proc IsForcedUVExport*(this: RWGltf_CafWriter): bool {.noSideEffect,
    importcpp: "IsForcedUVExport", header: "RWGltf_CafWriter.hxx".}
proc SetForcedUVExport*(this: var RWGltf_CafWriter; theToForce: bool) {.
    importcpp: "SetForcedUVExport", header: "RWGltf_CafWriter.hxx".}
proc DefaultStyle*(this: RWGltf_CafWriter): XCAFPrs_Style {.noSideEffect,
    importcpp: "DefaultStyle", header: "RWGltf_CafWriter.hxx".}
proc SetDefaultStyle*(this: var RWGltf_CafWriter; theStyle: XCAFPrs_Style) {.
    importcpp: "SetDefaultStyle", header: "RWGltf_CafWriter.hxx".}
proc Perform*(this: var RWGltf_CafWriter; theDocument: handle[TDocStd_Document];
             theRootLabels: TDF_LabelSequence;
             theLabelFilter: ptr TColStd_MapOfAsciiString;
             theFileInfo: TColStd_IndexedDataMapOfStringString;
             theProgress: Message_ProgressRange): bool {.importcpp: "Perform",
    header: "RWGltf_CafWriter.hxx".}
proc Perform*(this: var RWGltf_CafWriter; theDocument: handle[TDocStd_Document];
             theFileInfo: TColStd_IndexedDataMapOfStringString;
             theProgress: Message_ProgressRange): bool {.importcpp: "Perform",
    header: "RWGltf_CafWriter.hxx".}