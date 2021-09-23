##  Created on: 2007-08-04
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  VrmlData_Geometry, VrmlData_Appearance, VrmlData_Group,
  ../NCollection/NCollection_List, ../NCollection/NCollection_DataMap,
  ../TopoDS/TopoDS_Shape

discard "forward decl of VrmlData_Scene"
discard "forward decl of VrmlData_Coordinate"
discard "forward decl of TopoDS_Face"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_Triangulation"
discard "forward decl of XCAFPrs_Style"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDF_Label"
type
  VrmlData_ShapeConvert* {.importcpp: "VrmlData_ShapeConvert",
                          header: "VrmlData_ShapeConvert.hxx", bycopy.} = object ##  ---------- PROTECTED METHODS ----------
                                                                            ##  ---------- PRIVATE FIELDS ----------
    ##  ---------- PRIVATE METHODS ----------

  VrmlData_ShapeConvertShapeData* {.importcpp: "VrmlData_ShapeConvert::ShapeData",
                                   header: "VrmlData_ShapeConvert.hxx", bycopy.} = object
    Name* {.importc: "Name".}: TCollection_AsciiString
    Shape* {.importc: "Shape".}: TopoDS_Shape
    Node* {.importc: "Node".}: handle[VrmlData_Node]


proc constructVrmlData_ShapeConvert*(theScene: var VrmlData_Scene;
                                    theScale: Standard_Real = 1.0): VrmlData_ShapeConvert {.
    constructor, importcpp: "VrmlData_ShapeConvert(@)",
    header: "VrmlData_ShapeConvert.hxx".}
proc AddShape*(this: var VrmlData_ShapeConvert; theShape: TopoDS_Shape;
              theName: cstring = 0L'i64) {.importcpp: "AddShape",
                                       header: "VrmlData_ShapeConvert.hxx".}
proc Convert*(this: var VrmlData_ShapeConvert; theExtractFaces: Standard_Boolean;
             theExtractEdges: Standard_Boolean;
             theDeflection: Standard_Real = 0.01;
             theDeflAngle: Standard_Real = 20.0 * M_PI div 180.0) {.
    importcpp: "Convert", header: "VrmlData_ShapeConvert.hxx".}
proc ConvertDocument*(this: var VrmlData_ShapeConvert;
                     theDoc: handle[TDocStd_Document]) {.
    importcpp: "ConvertDocument", header: "VrmlData_ShapeConvert.hxx".}