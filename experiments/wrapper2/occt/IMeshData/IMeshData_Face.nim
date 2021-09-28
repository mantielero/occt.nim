##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

discard "forward decl of IMeshData_Wire"
discard "forward decl of TopoDS_Wire"
type
  IMeshDataFace* {.importcpp: "IMeshData_Face", header: "IMeshData_Face.hxx", bycopy.} = object of IMeshDataTessellatedShape ##
                                                                                                                   ## !
                                                                                                                   ## Destructor.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Constructor.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Initializes
                                                                                                                   ## empty
                                                                                                                   ## model.
    bRepAdaptorHSurface* {.importc: "BRepAdaptor_HSurface".}: Handle
    standardType* {.importc: "Standard_Type".}: Handle


proc destroyIMeshDataFace*(this: var IMeshDataFace) {.
    importcpp: "#.~IMeshData_Face()", header: "IMeshData_Face.hxx".}
proc wiresNb*(this: IMeshDataFace): int {.noSideEffect, importcpp: "WiresNb",
                                      header: "IMeshData_Face.hxx".}
proc addWire*(this: var IMeshDataFace; theWire: TopoDS_Wire; theEdgeNb: int = 0): IWireHandle {.
    importcpp: "AddWire", header: "IMeshData_Face.hxx".}
proc getWire*(this: IMeshDataFace; theIndex: int): IWireHandle {.noSideEffect,
    importcpp: "GetWire", header: "IMeshData_Face.hxx".}
## !!!Ignored construct:  & GetSurface ( ) const { return mySurface ; } ! Returns TopoDS_Face attached to model. const TopoDS_Face & GetFace ( ) const { return TopoDS :: Face ( GetShape ( ) ) ; } ! Returns whether the face discrete model is valid. Standard_Boolean IsValid ( ) const { return ( IsEqual ( IMeshData_NoError ) || IsEqual ( IMeshData_ReMesh ) || IsEqual ( IMeshData_UnorientedWire ) ) ; } public : typedef IMeshData_TessellatedShape base_type ;
## Error: identifier expected, but got: &!!!

proc getTypeName*(): cstring {.importcpp: "IMeshData_Face::get_type_name(@)",
                            header: "IMeshData_Face.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  mySurface ;
## Error: identifier expected, but got: ;!!!














































