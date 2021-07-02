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

discard "forward decl of Bnd_Box"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IMeshTools_Parameters"
type
  BRepMeshDeflection* {.importcpp: "BRepMesh_Deflection",
                       header: "BRepMesh_Deflection.hxx", bycopy.} = object of StandardTransient ##
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


proc computeAbsoluteDeflection*(theShape: TopoDS_Shape;
                               theRelativeDeflection: StandardReal;
                               theMaxShapeSize: StandardReal): StandardReal {.
    importcpp: "BRepMesh_Deflection::ComputeAbsoluteDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc computeDeflection*(theDEdge: IEdgeHandle; theMaxShapeSize: StandardReal;
                       theParameters: IMeshToolsParameters) {.
    importcpp: "BRepMesh_Deflection::ComputeDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc computeDeflection*(theDWire: IWireHandle; theParameters: IMeshToolsParameters) {.
    importcpp: "BRepMesh_Deflection::ComputeDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc computeDeflection*(theDFace: IFaceHandle; theParameters: IMeshToolsParameters) {.
    importcpp: "BRepMesh_Deflection::ComputeDeflection(@)",
    header: "BRepMesh_Deflection.hxx".}
proc isConsistent*(theCurrent: StandardReal; theRequired: StandardReal;
                  theAllowDecrease: StandardBoolean; theRatio: StandardReal = 0.1): StandardBoolean {.
    importcpp: "BRepMesh_Deflection::IsConsistent(@)",
    header: "BRepMesh_Deflection.hxx".}
type
  BRepMeshDeflectionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_Deflection::get_type_name(@)",
                            header: "BRepMesh_Deflection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_Deflection::get_type_descriptor(@)",
    header: "BRepMesh_Deflection.hxx".}
proc dynamicType*(this: BRepMeshDeflection): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_Deflection.hxx".}

