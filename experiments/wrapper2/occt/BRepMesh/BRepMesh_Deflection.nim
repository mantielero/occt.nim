##  Created on: 2016-04-19
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

import
  ../Standard/Standard_Type, ../Standard/Standard_Handle,
  ../Standard/Standard_Transient, ../IMeshData/IMeshData_Types

discard "forward decl of Bnd_Box"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IMeshTools_Parameters"
type
  BRepMesh_Deflection* {.importcpp: "BRepMesh_Deflection",
                        header: "BRepMesh_Deflection.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## absolute
                                                                                            ## deflection
                                                                                            ## for
                                                                                            ## theShape
                                                                                            ## with
                                                                                            ## respect
                                                                                            ## to
                                                                                            ## the
                                                                                            ##
                                                                                            ## !
                                                                                            ## relative
                                                                                            ## deflection
                                                                                            ## and
                                                                                            ## theMaxShapeSize.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theShape
                                                                                            ## shape
                                                                                            ## for
                                                                                            ## that
                                                                                            ## the
                                                                                            ## deflection
                                                                                            ## should
                                                                                            ## be
                                                                                            ## computed.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theRelativeDeflection
                                                                                            ## relative
                                                                                            ## deflection.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theMaxShapeSize
                                                                                            ## maximum
                                                                                            ## size
                                                                                            ## of
                                                                                            ## the
                                                                                            ## whole
                                                                                            ## shape.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @return
                                                                                            ## absolute
                                                                                            ## deflection
                                                                                            ## for
                                                                                            ## the
                                                                                            ## shape.


proc ComputeAbsoluteDeflection*(theShape: TopoDS_Shape;
                               theRelativeDeflection: Standard_Real;
                               theMaxShapeSize: Standard_Real): Standard_Real {.
    importcpp: "BRepMesh_Deflection::ComputeAbsoluteDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc ComputeDeflection*(theDEdge: IEdgeHandle; theMaxShapeSize: Standard_Real;
                       theParameters: IMeshTools_Parameters) {.
    importcpp: "BRepMesh_Deflection::ComputeDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc ComputeDeflection*(theDWire: IWireHandle; theParameters: IMeshTools_Parameters) {.
    importcpp: "BRepMesh_Deflection::ComputeDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc ComputeDeflection*(theDFace: IFaceHandle; theParameters: IMeshTools_Parameters) {.
    importcpp: "BRepMesh_Deflection::ComputeDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc IsConsistent*(theCurrent: Standard_Real; theRequired: Standard_Real;
                  theAllowDecrease: Standard_Boolean;
                  theRatio: Standard_Real = 0.1): Standard_Boolean {.
    importcpp: "BRepMesh_Deflection::IsConsistent(@)",
    header: "BRepMesh_Deflection.hxx".}
type
  BRepMesh_Deflectionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_Deflection::get_type_name(@)",
                              header: "BRepMesh_Deflection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_Deflection::get_type_descriptor(@)",
    header: "BRepMesh_Deflection.hxx".}
proc DynamicType*(this: BRepMesh_Deflection): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_Deflection.hxx".}