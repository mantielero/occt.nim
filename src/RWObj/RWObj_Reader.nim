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

## ! An abstract class implementing procedure to read OBJ file.
## !
## ! This class is not bound to particular data structure
## ! and can be used to read the file directly into arbitrary data model.
## ! To use it, create descendant class and implement interface methods.
## !
## ! Call method Read() to read the file.

type
  RWObjReader* {.importcpp: "RWObj_Reader", header: "RWObj_Reader.hxx", bycopy.} = object of StandardTransient ##
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
    standardType* {.importc: "Standard_Type".}: Handle
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

  RWObjReaderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "RWObj_Reader::get_type_name(@)",
                            header: "RWObj_Reader.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc constructRWObjReader*(): RWObjReader {.constructor,
    importcpp: "RWObj_Reader(@)", header: "RWObj_Reader.hxx".}
proc read*(this: var RWObjReader; theFile: TCollectionAsciiString;
          theProgress: MessageProgressRange): bool {.importcpp: "Read",
    header: "RWObj_Reader.hxx".}
proc probe*(this: var RWObjReader; theFile: TCollectionAsciiString;
           theProgress: MessageProgressRange): bool {.importcpp: "Probe",
    header: "RWObj_Reader.hxx".}
proc fileComments*(this: RWObjReader): TCollectionAsciiString {.noSideEffect,
    importcpp: "FileComments", header: "RWObj_Reader.hxx".}
proc externalFiles*(this: RWObjReader): NCollectionIndexedMap[
    TCollectionAsciiString] {.noSideEffect, importcpp: "ExternalFiles",
                             header: "RWObj_Reader.hxx".}
proc nbProbeNodes*(this: RWObjReader): int {.noSideEffect, importcpp: "NbProbeNodes",
    header: "RWObj_Reader.hxx".}
proc nbProbeElems*(this: RWObjReader): int {.noSideEffect, importcpp: "NbProbeElems",
    header: "RWObj_Reader.hxx".}
proc memoryLimit*(this: RWObjReader): StandardSize {.noSideEffect,
    importcpp: "MemoryLimit", header: "RWObj_Reader.hxx".}
proc setMemoryLimit*(this: var RWObjReader; theMemLimit: StandardSize) {.
    importcpp: "SetMemoryLimit", header: "RWObj_Reader.hxx".}
proc transformation*(this: RWObjReader): RWMeshCoordinateSystemConverter {.
    noSideEffect, importcpp: "Transformation", header: "RWObj_Reader.hxx".}
proc setTransformation*(this: var RWObjReader;
                       theCSConverter: RWMeshCoordinateSystemConverter) {.
    importcpp: "SetTransformation", header: "RWObj_Reader.hxx".}
proc isSinglePrecision*(this: RWObjReader): bool {.noSideEffect,
    importcpp: "IsSinglePrecision", header: "RWObj_Reader.hxx".}
proc setSinglePrecision*(this: var RWObjReader; theIsSinglePrecision: bool) {.
    importcpp: "SetSinglePrecision", header: "RWObj_Reader.hxx".}













































