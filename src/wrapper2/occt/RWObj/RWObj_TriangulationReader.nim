##  Author: Kirill Gavrilov
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  RWObj_Reader, ../Poly/Poly_Triangulation, ../TopoDS/TopoDS_Compound

## ! Interface to store shape attributes into document.

type
  RWObj_IShapeReceiver* {.importcpp: "RWObj_IShapeReceiver",
                         header: "RWObj_TriangulationReader.hxx", bycopy.} = object ## !
                                                                               ## @param
                                                                               ## theShape
                                                                               ## shape
                                                                               ## to
                                                                               ## register
                                                                               ## !
                                                                               ## @param
                                                                               ## theName
                                                                               ## shape
                                                                               ## name
                                                                               ## !
                                                                               ## @param
                                                                               ## theMaterial
                                                                               ## shape
                                                                               ## material
                                                                               ## !
                                                                               ## @param
                                                                               ## theIsRootShape
                                                                               ## indicates
                                                                               ## that
                                                                               ## this
                                                                               ## is a
                                                                               ## root
                                                                               ## object
                                                                               ## (free
                                                                               ## shape)


proc BindNamedShape*(this: var RWObj_IShapeReceiver; theShape: TopoDS_Shape;
                    theName: TCollection_AsciiString;
                    theMaterial: ptr RWObj_Material;
                    theIsRootShape: Standard_Boolean) {.
    importcpp: "BindNamedShape", header: "RWObj_TriangulationReader.hxx".}
## ! RWObj_Reader implementation dumping OBJ file into Poly_Triangulation.

type
  RWObj_TriangulationReader* {.importcpp: "RWObj_TriangulationReader",
                              header: "RWObj_TriangulationReader.hxx", bycopy.} = object of RWObj_Reader ##
                                                                                                  ## !
                                                                                                  ## Constructor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Flush
                                                                                                  ## active
                                                                                                  ## sub-mesh.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Add
                                                                                                  ## sub-shape
                                                                                                  ## into
                                                                                                  ## specified
                                                                                                  ## shape
    ## !< nodes   of currently filled triangulation
    ## !< normals of currently filled triangulation
    ## !< UVs     of currently filled triangulation
    ## !< indexes of currently filled triangulation
    ## !< optional shape receiver
    ## !< result shape as Compound of objects
    ## !< Compound containing current object groups
    ## !< current group shape - either a single Face or Compound of Faces
    ## !< current group name
    ## !< last face material name
    ## !< create a single triangulation

  RWObj_TriangulationReaderbase_type* = RWObj_Reader

proc get_type_name*(): cstring {.importcpp: "RWObj_TriangulationReader::get_type_name(@)",
                              header: "RWObj_TriangulationReader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWObj_TriangulationReader::get_type_descriptor(@)",
    header: "RWObj_TriangulationReader.hxx".}
proc DynamicType*(this: RWObj_TriangulationReader): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "RWObj_TriangulationReader.hxx".}
proc constructRWObj_TriangulationReader*(): RWObj_TriangulationReader {.
    constructor, importcpp: "RWObj_TriangulationReader(@)",
    header: "RWObj_TriangulationReader.hxx".}
proc SetCreateShapes*(this: var RWObj_TriangulationReader;
                     theToCreateShapes: Standard_Boolean) {.
    importcpp: "SetCreateShapes", header: "RWObj_TriangulationReader.hxx".}
proc SetShapeReceiver*(this: var RWObj_TriangulationReader;
                      theReceiver: ptr RWObj_IShapeReceiver) {.
    importcpp: "SetShapeReceiver", header: "RWObj_TriangulationReader.hxx".}
proc GetTriangulation*(this: var RWObj_TriangulationReader): handle[
    Poly_Triangulation] {.importcpp: "GetTriangulation",
                         header: "RWObj_TriangulationReader.hxx".}
proc ResultShape*(this: var RWObj_TriangulationReader): TopoDS_Shape {.
    importcpp: "ResultShape", header: "RWObj_TriangulationReader.hxx".}