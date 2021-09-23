##  Author: Kirill Gavrilov
##  Copyright: Open CASCADE 2015-2019
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
  RWMesh_CoordinateSystem, ../gp/gp, ../gp/gp_Ax3, ../gp/gp_XYZ, ../gp/gp_Trsf,
  ../Graphic3d/Graphic3d_Mat4, ../Graphic3d/Graphic3d_Vec

## ! Coordinate system converter defining the following tools:
## ! - Initialization for commonly used coordinate systems Z-up and Y-up.
## ! - Perform length unit conversion (scaling).
## ! - Conversion of three basic elements:
## !   a) mesh node Positions,
## !   b) mesh node Normals,
## !   c) model nodes Transformations (locations).
## !
## ! RWMesh_CoordinateSystem enumeration is used for convenient conversion between two commonly
## ! used coordinate systems, to make sure that imported model is oriented up.
## ! But gp_Ax3 can be used instead for defining a conversion between arbitrary systems (e.g. including non-zero origin).
## !
## ! The converter requires defining explicitly both input and output systems,
## ! so that if either input or output is undefined, then conversion will be skipped.
## ! Length units conversion and coordinate system conversion are decomposed,
## ! so that application might specify no length units conversion but Y-up to Z-up coordinate system conversion.
## !
## ! Class defines dedicated methods for parameters of input and output systems.
## ! This allows passing tool through several initialization steps,
## ! so that a reader can initialize input length units (only if file format defines such information),
## ! while application specifies output length units, and conversion will be done only when both defined.

type
  RWMesh_CoordinateSystemConverter* {.importcpp: "RWMesh_CoordinateSystemConverter", header: "RWMesh_CoordinateSystemConverter.hxx",
                                     bycopy.} = object ## ! Return a standard coordinate system definition.
                                                    ## ! Empty constructor.
                                                    ## ! Transform transformation.
    ## !< source      coordinate system
    ## !< destination coordinate system
    ## !< source      length units, defined as scale factor to m (meters); -1.0 by default which means UNDEFINED
    ## !< destination length units, defined as scale factor to m (meters); -1.0 by default which means UNDEFINED
    ## !< flag indicating if source coordinate system is defined or not
    ## !< flag indicating if destination coordinate system is defined or not
    ## !< transformation from input Ax3 to output Ax3
    ## !< inversed transformation from input Ax3 to output Ax3
    ## !< transformation 4x4 matrix from input Ax3 to output Ax3
    ## !< unit scale factor
    ## !< flag indicating that length unit transformation should be performed
    ## !< flag indicating that transformation is empty


proc StandardCoordinateSystem*(theSys: RWMesh_CoordinateSystem): gp_Ax3 {.
    importcpp: "RWMesh_CoordinateSystemConverter::StandardCoordinateSystem(@)",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc constructRWMesh_CoordinateSystemConverter*(): RWMesh_CoordinateSystemConverter {.
    constructor, importcpp: "RWMesh_CoordinateSystemConverter(@)",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc IsEmpty*(this: RWMesh_CoordinateSystemConverter): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc InputLengthUnit*(this: RWMesh_CoordinateSystemConverter): Standard_Real {.
    noSideEffect, importcpp: "InputLengthUnit",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc SetInputLengthUnit*(this: var RWMesh_CoordinateSystemConverter;
                        theInputScale: Standard_Real) {.
    importcpp: "SetInputLengthUnit",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc OutputLengthUnit*(this: RWMesh_CoordinateSystemConverter): Standard_Real {.
    noSideEffect, importcpp: "OutputLengthUnit",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc SetOutputLengthUnit*(this: var RWMesh_CoordinateSystemConverter;
                         theOutputScale: Standard_Real) {.
    importcpp: "SetOutputLengthUnit",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc HasInputCoordinateSystem*(this: RWMesh_CoordinateSystemConverter): Standard_Boolean {.
    noSideEffect, importcpp: "HasInputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc InputCoordinateSystem*(this: RWMesh_CoordinateSystemConverter): gp_Ax3 {.
    noSideEffect, importcpp: "InputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc SetInputCoordinateSystem*(this: var RWMesh_CoordinateSystemConverter;
                              theSysFrom: gp_Ax3) {.
    importcpp: "SetInputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc SetInputCoordinateSystem*(this: var RWMesh_CoordinateSystemConverter;
                              theSysFrom: RWMesh_CoordinateSystem) {.
    importcpp: "SetInputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc HasOutputCoordinateSystem*(this: RWMesh_CoordinateSystemConverter): Standard_Boolean {.
    noSideEffect, importcpp: "HasOutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc OutputCoordinateSystem*(this: RWMesh_CoordinateSystemConverter): gp_Ax3 {.
    noSideEffect, importcpp: "OutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc SetOutputCoordinateSystem*(this: var RWMesh_CoordinateSystemConverter;
                               theSysTo: gp_Ax3) {.
    importcpp: "SetOutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc SetOutputCoordinateSystem*(this: var RWMesh_CoordinateSystemConverter;
                               theSysTo: RWMesh_CoordinateSystem) {.
    importcpp: "SetOutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc Init*(this: var RWMesh_CoordinateSystemConverter; theInputSystem: gp_Ax3;
          theInputLengthUnit: Standard_Real; theOutputSystem: gp_Ax3;
          theOutputLengthUnit: Standard_Real) {.importcpp: "Init",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc TransformTransformation*(this: RWMesh_CoordinateSystemConverter;
                             theTrsf: var gp_Trsf) {.noSideEffect,
    importcpp: "TransformTransformation",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc TransformPosition*(this: RWMesh_CoordinateSystemConverter; thePos: var gp_XYZ) {.
    noSideEffect, importcpp: "TransformPosition",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc TransformNormal*(this: RWMesh_CoordinateSystemConverter;
                     theNorm: var Graphic3d_Vec3) {.noSideEffect,
    importcpp: "TransformNormal", header: "RWMesh_CoordinateSystemConverter.hxx".}