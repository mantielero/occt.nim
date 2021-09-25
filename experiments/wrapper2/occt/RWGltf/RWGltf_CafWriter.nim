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

discard "forward decl of Message_ProgressRange"
discard "forward decl of RWMesh_FaceIterator"
discard "forward decl of RWGltf_GltfOStreamWriter"
discard "forward decl of RWGltf_GltfMaterialMap"
discard "forward decl of RWGltf_GltfSceneNodeMap"
discard "forward decl of TDocStd_Document"
type
  RWGltfCafWriter* {.importcpp: "RWGltf_CafWriter", header: "RWGltf_CafWriter.hxx",
                    bycopy.} = object of StandardTransient ## ! Main constructor.
                                                      ## ! @param theFile     [in] path to output glTF file
                                                      ## ! @param theIsBinary [in] flag to write into binary glTF format (.glb)
                                                      ## ! Write binary data file with triangulation data.
                                                      ## ! Triangulation data should be precomputed within shapes!
                                                      ## ! @param theDocument    [in] input document
                                                      ## ! @param theRootLabels  [in] list of root shapes to export
                                                      ## ! @param theLabelFilter [in] optional filter with document nodes to export
                                                      ## ! @param theProgress    [in] optional progress indicator
                                                      ## ! @return FALSE on file writing failure
                                                      ## ! Return TRUE if face mesh should be skipped (e.g. because it is invalid or empty).
                                                      ## ! Write bufferView for vertex positions within
                                                      ## RWGltf_GltfRootElement_Accessors section
                                                      ## ! @param theGltfFace [in] face definition to write
                                                      ## ! Write
                                                      ## RWGltf_GltfRootElement_Accessors section.
                                                      ## ! @param theSceneNodeMap [in] ordered map of scene nodes
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

  RWGltfCafWriterbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "RWGltf_CafWriter::get_type_name(@)",
                            header: "RWGltf_CafWriter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWGltf_CafWriter::get_type_descriptor(@)",
    header: "RWGltf_CafWriter.hxx".}
proc dynamicType*(this: RWGltfCafWriter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "RWGltf_CafWriter.hxx".}
proc constructRWGltfCafWriter*(theFile: TCollectionAsciiString; theIsBinary: bool): RWGltfCafWriter {.
    constructor, importcpp: "RWGltf_CafWriter(@)", header: "RWGltf_CafWriter.hxx".}
proc destroyRWGltfCafWriter*(this: var RWGltfCafWriter) {.
    importcpp: "#.~RWGltf_CafWriter()", header: "RWGltf_CafWriter.hxx".}
proc coordinateSystemConverter*(this: RWGltfCafWriter): RWMeshCoordinateSystemConverter {.
    noSideEffect, importcpp: "CoordinateSystemConverter",
    header: "RWGltf_CafWriter.hxx".}
proc changeCoordinateSystemConverter*(this: var RWGltfCafWriter): var RWMeshCoordinateSystemConverter {.
    importcpp: "ChangeCoordinateSystemConverter", header: "RWGltf_CafWriter.hxx".}
proc setCoordinateSystemConverter*(this: var RWGltfCafWriter;
                                  theConverter: RWMeshCoordinateSystemConverter) {.
    importcpp: "SetCoordinateSystemConverter", header: "RWGltf_CafWriter.hxx".}
proc isBinary*(this: RWGltfCafWriter): bool {.noSideEffect, importcpp: "IsBinary",
    header: "RWGltf_CafWriter.hxx".}
proc transformationFormat*(this: RWGltfCafWriter): RWGltfWriterTrsfFormat {.
    noSideEffect, importcpp: "TransformationFormat", header: "RWGltf_CafWriter.hxx".}
proc setTransformationFormat*(this: var RWGltfCafWriter;
                             theFormat: RWGltfWriterTrsfFormat) {.
    importcpp: "SetTransformationFormat", header: "RWGltf_CafWriter.hxx".}
proc isForcedUVExport*(this: RWGltfCafWriter): bool {.noSideEffect,
    importcpp: "IsForcedUVExport", header: "RWGltf_CafWriter.hxx".}
proc setForcedUVExport*(this: var RWGltfCafWriter; theToForce: bool) {.
    importcpp: "SetForcedUVExport", header: "RWGltf_CafWriter.hxx".}
proc defaultStyle*(this: RWGltfCafWriter): XCAFPrsStyle {.noSideEffect,
    importcpp: "DefaultStyle", header: "RWGltf_CafWriter.hxx".}
proc setDefaultStyle*(this: var RWGltfCafWriter; theStyle: XCAFPrsStyle) {.
    importcpp: "SetDefaultStyle", header: "RWGltf_CafWriter.hxx".}
proc perform*(this: var RWGltfCafWriter; theDocument: Handle[TDocStdDocument];
             theRootLabels: TDF_LabelSequence;
             theLabelFilter: ptr TColStdMapOfAsciiString;
             theFileInfo: TColStdIndexedDataMapOfStringString;
             theProgress: MessageProgressRange): bool {.importcpp: "Perform",
    header: "RWGltf_CafWriter.hxx".}
proc perform*(this: var RWGltfCafWriter; theDocument: Handle[TDocStdDocument];
             theFileInfo: TColStdIndexedDataMapOfStringString;
             theProgress: MessageProgressRange): bool {.importcpp: "Perform",
    header: "RWGltf_CafWriter.hxx".}
