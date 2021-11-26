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

discard "forward decl of VrmlData_Scene"
discard "forward decl of VrmlData_Coordinate"
discard "forward decl of TopoDS_Face"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_Triangulation"
discard "forward decl of XCAFPrs_Style"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDF_Label"
type
  VrmlDataShapeConvert* {.importcpp: "VrmlData_ShapeConvert",
                         header: "VrmlData_ShapeConvert.hxx", bycopy.} = object ##  ---------- PROTECTED METHODS ----------
                                                                           ##  ---------- PRIVATE FIELDS ----------
    ##  ---------- PRIVATE METHODS ----------

  VrmlDataShapeConvertShapeData* {.importcpp: "VrmlData_ShapeConvert::ShapeData",
                                  header: "VrmlData_ShapeConvert.hxx", bycopy.} = object
    name* {.importc: "Name".}: TCollectionAsciiString
    shape* {.importc: "Shape".}: TopoDS_Shape
    node* {.importc: "Node".}: Handle[VrmlDataNode]


proc constructVrmlDataShapeConvert*(theScene: var VrmlDataScene;
                                   theScale: cfloat = 1.0): VrmlDataShapeConvert {.
    constructor, importcpp: "VrmlData_ShapeConvert(@)",
    header: "VrmlData_ShapeConvert.hxx".}
proc addShape*(this: var VrmlDataShapeConvert; theShape: TopoDS_Shape;
              theName: cstring = 0'i64) {.importcpp: "AddShape",
                                       header: "VrmlData_ShapeConvert.hxx".}
proc convert*(this: var VrmlDataShapeConvert; theExtractFaces: bool;
             theExtractEdges: bool; theDeflection: cfloat = 0.01;
             theDeflAngle: cfloat = 20.0 * m_Pi div 180.0) {.importcpp: "Convert",
    header: "VrmlData_ShapeConvert.hxx".}
proc convertDocument*(this: var VrmlDataShapeConvert;
                     theDoc: Handle[TDocStdDocument]) {.
    importcpp: "ConvertDocument", header: "VrmlData_ShapeConvert.hxx".}

























