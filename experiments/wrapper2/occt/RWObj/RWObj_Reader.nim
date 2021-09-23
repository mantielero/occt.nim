##  Author: Kirill Gavrilov
##  Copyright (c) 2015-2019 OPEN CASCADE SAS
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
  ../gp/gp_XYZ, ../Graphic3d/Graphic3d_Vec2, ../Graphic3d/Graphic3d_Vec4,
  ../Message/Message, ../Message/Message_Messenger,
  ../Message/Message_ProgressRange, ../NCollection/NCollection_Array1,
  ../NCollection/NCollection_DataMap, ../NCollection/NCollection_IndexedMap,
  ../NCollection/NCollection_Vector, ../NCollection/NCollection_Shared,
  ../RWMesh/RWMesh_CoordinateSystemConverter, RWObj_Material, RWObj_SubMesh,
  RWObj_SubMeshReason, RWObj_Tools

## ! An abstract class implementing procedure to read OBJ file.
## !
## ! This class is not bound to particular data structure
## ! and can be used to read the file directly into arbitrary data model.
## ! To use it, create descendant class and implement interface methods.
## !
## ! Call method Read() to read the file.

type
  RWObj_Reader* {.importcpp: "RWObj_Reader", header: "RWObj_Reader.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Reads
                                                                                                       ## data
                                                                                                       ## from
                                                                                                       ## OBJ
                                                                                                       ## file.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Unicode
                                                                                                       ## paths
                                                                                                       ## can
                                                                                                       ## be
                                                                                                       ## given
                                                                                                       ## in
                                                                                                       ## UTF-8
                                                                                                       ## encoding.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## true
                                                                                                       ## if
                                                                                                       ## success,
                                                                                                       ## false
                                                                                                       ## on
                                                                                                       ## error
                                                                                                       ## or
                                                                                                       ## user
                                                                                                       ## break.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Add
                                                                                                       ## new
                                                                                                       ## sub-mesh.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Basically,
                                                                                                       ## this
                                                                                                       ## method
                                                                                                       ## will
                                                                                                       ## be
                                                                                                       ## called
                                                                                                       ## multiple
                                                                                                       ## times
                                                                                                       ## for
                                                                                                       ## the
                                                                                                       ## same
                                                                                                       ## group
                                                                                                       ## with
                                                                                                       ## different
                                                                                                       ## reason,
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## so
                                                                                                       ## that
                                                                                                       ## implementation
                                                                                                       ## should
                                                                                                       ## decide
                                                                                                       ## if
                                                                                                       ## previously
                                                                                                       ## allocated
                                                                                                       ## sub-mesh
                                                                                                       ## should
                                                                                                       ## be
                                                                                                       ## used
                                                                                                       ## or
                                                                                                       ## new
                                                                                                       ## one
                                                                                                       ## to
                                                                                                       ## be
                                                                                                       ## allocated.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Sub-mesh
                                                                                                       ## command
                                                                                                       ## can
                                                                                                       ## be
                                                                                                       ## skipped
                                                                                                       ## if
                                                                                                       ## previous
                                                                                                       ## sub-mesh
                                                                                                       ## is
                                                                                                       ## empty,
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## or
                                                                                                       ## if
                                                                                                       ## the
                                                                                                       ## reason
                                                                                                       ## is
                                                                                                       ## out
                                                                                                       ## of
                                                                                                       ## interest
                                                                                                       ## for
                                                                                                       ## particular
                                                                                                       ## reader
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## (e.g.
                                                                                                       ## if
                                                                                                       ## materials
                                                                                                       ## are
                                                                                                       ## ignored,
                                                                                                       ## reader
                                                                                                       ## may
                                                                                                       ## ignore
                                                                                                       ## RWObj_SubMeshReason_NewMaterial
                                                                                                       ## reason).
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## theMesh
                                                                                                       ## mesh
                                                                                                       ## definition
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## theReason
                                                                                                       ## reason
                                                                                                       ## to
                                                                                                       ## create
                                                                                                       ## new
                                                                                                       ## sub-mesh
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @return
                                                                                                       ## TRUE
                                                                                                       ## if
                                                                                                       ## new
                                                                                                       ## sub-mesh
                                                                                                       ## should
                                                                                                       ## be
                                                                                                       ## started
                                                                                                       ## since
                                                                                                       ## this
                                                                                                       ## point
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Handle
                                                                                                       ## "v
                                                                                                       ## X
                                                                                                       ## Y
                                                                                                       ## Z".
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Hasher
                                                                                                       ## for
                                                                                                       ## 3
                                                                                                       ## ordered
                                                                                                       ## integers.
    ## !< list of external file references
    ## !< file header comments
    ## !< folder containing the OBJ file
    ## !< coordinate system flipper
    ## !< memory limit in bytes
    ## !< estimated memory occupation in bytes
    ## !< number of parsed lines (e.g. current line)
    ## !< number of probed nodes
    ## !< number of probed elements
    ## !< number of big elements (polygons with 5+ nodes)
    ## !< flag indicating abort state (e.g. syntax error)
    ##  Each node in the Element specifies independent indices of Vertex position, Texture coordinates and Normal.
    ##  This scheme does not match natural definition of Primitive Array
    ##  where each unique set of nodal properties defines Vertex
    ##  (thus node at the same location but with different normal should be duplicated).
    ##  The following code converts OBJ definition of nodal properties to Primitive Array definition.
    ## !< temporary vector of vertices
    ## !< temporary vector of UV parameters
    ## !< temporary vector of normals
    ## !< map of known materials
    ## !< active sub-mesh definition
    ## !< indices for the current element

  RWObj_Readerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "RWObj_Reader::get_type_name(@)",
                              header: "RWObj_Reader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWObj_Reader::get_type_descriptor(@)", header: "RWObj_Reader.hxx".}
proc DynamicType*(this: RWObj_Reader): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "RWObj_Reader.hxx".}
proc constructRWObj_Reader*(): RWObj_Reader {.constructor,
    importcpp: "RWObj_Reader(@)", header: "RWObj_Reader.hxx".}
proc Read*(this: var RWObj_Reader; theFile: TCollection_AsciiString;
          theProgress: Message_ProgressRange): Standard_Boolean {.
    importcpp: "Read", header: "RWObj_Reader.hxx".}
proc Probe*(this: var RWObj_Reader; theFile: TCollection_AsciiString;
           theProgress: Message_ProgressRange): Standard_Boolean {.
    importcpp: "Probe", header: "RWObj_Reader.hxx".}
proc FileComments*(this: RWObj_Reader): TCollection_AsciiString {.noSideEffect,
    importcpp: "FileComments", header: "RWObj_Reader.hxx".}
proc ExternalFiles*(this: RWObj_Reader): NCollection_IndexedMap[
    TCollection_AsciiString] {.noSideEffect, importcpp: "ExternalFiles",
                              header: "RWObj_Reader.hxx".}
proc NbProbeNodes*(this: RWObj_Reader): Standard_Integer {.noSideEffect,
    importcpp: "NbProbeNodes", header: "RWObj_Reader.hxx".}
proc NbProbeElems*(this: RWObj_Reader): Standard_Integer {.noSideEffect,
    importcpp: "NbProbeElems", header: "RWObj_Reader.hxx".}
proc MemoryLimit*(this: RWObj_Reader): Standard_Size {.noSideEffect,
    importcpp: "MemoryLimit", header: "RWObj_Reader.hxx".}
proc SetMemoryLimit*(this: var RWObj_Reader; theMemLimit: Standard_Size) {.
    importcpp: "SetMemoryLimit", header: "RWObj_Reader.hxx".}
proc Transformation*(this: RWObj_Reader): RWMesh_CoordinateSystemConverter {.
    noSideEffect, importcpp: "Transformation", header: "RWObj_Reader.hxx".}
proc SetTransformation*(this: var RWObj_Reader;
                       theCSConverter: RWMesh_CoordinateSystemConverter) {.
    importcpp: "SetTransformation", header: "RWObj_Reader.hxx".}
proc IsSinglePrecision*(this: RWObj_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "IsSinglePrecision", header: "RWObj_Reader.hxx".}
proc SetSinglePrecision*(this: var RWObj_Reader;
                        theIsSinglePrecision: Standard_Boolean) {.
    importcpp: "SetSinglePrecision", header: "RWObj_Reader.hxx".}