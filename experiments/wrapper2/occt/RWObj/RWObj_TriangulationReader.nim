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

## ! Interface to store shape attributes into document.

type
  RWObjIShapeReceiver* {.importcpp: "RWObj_IShapeReceiver",
                        header: "RWObj_TriangulationReader.hxx", bycopy.} = object ## !
                                                                              ## @param
                                                                              ## theShape
                                                                              ## shape to
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
                                                                              ## this is a
                                                                              ## root
                                                                              ## object
                                                                              ## (free
                                                                              ## shape)


proc bindNamedShape*(this: var RWObjIShapeReceiver; theShape: TopoDS_Shape;
                    theName: TCollectionAsciiString;
                    theMaterial: ptr RWObjMaterial; theIsRootShape: bool) {.
    importcpp: "BindNamedShape", header: "RWObj_TriangulationReader.hxx".}
## ! RWObj_Reader implementation dumping OBJ file into Poly_Triangulation.

type
  RWObjTriangulationReader* {.importcpp: "RWObj_TriangulationReader",
                             header: "RWObj_TriangulationReader.hxx", bycopy.} = object of RWObjReader ##
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

  RWObjTriangulationReaderbaseType* = RWObjReader

proc getTypeName*(): cstring {.importcpp: "RWObj_TriangulationReader::get_type_name(@)",
                            header: "RWObj_TriangulationReader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWObj_TriangulationReader::get_type_descriptor(@)",
    header: "RWObj_TriangulationReader.hxx".}
proc dynamicType*(this: RWObjTriangulationReader): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "RWObj_TriangulationReader.hxx".}
proc constructRWObjTriangulationReader*(): RWObjTriangulationReader {.constructor,
    importcpp: "RWObj_TriangulationReader(@)",
    header: "RWObj_TriangulationReader.hxx".}
proc setCreateShapes*(this: var RWObjTriangulationReader; theToCreateShapes: bool) {.
    importcpp: "SetCreateShapes", header: "RWObj_TriangulationReader.hxx".}
proc setShapeReceiver*(this: var RWObjTriangulationReader;
                      theReceiver: ptr RWObjIShapeReceiver) {.
    importcpp: "SetShapeReceiver", header: "RWObj_TriangulationReader.hxx".}
proc getTriangulation*(this: var RWObjTriangulationReader): Handle[PolyTriangulation] {.
    importcpp: "GetTriangulation", header: "RWObj_TriangulationReader.hxx".}
proc resultShape*(this: var RWObjTriangulationReader): TopoDS_Shape {.
    importcpp: "ResultShape", header: "RWObj_TriangulationReader.hxx".}
