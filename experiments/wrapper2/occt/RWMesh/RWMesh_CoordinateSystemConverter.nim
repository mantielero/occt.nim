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
  RWMeshCoordinateSystemConverter* {.importcpp: "RWMesh_CoordinateSystemConverter", header: "RWMesh_CoordinateSystemConverter.hxx",
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


proc standardCoordinateSystem*(theSys: RWMeshCoordinateSystem): Ax3 {.
    importcpp: "RWMesh_CoordinateSystemConverter::StandardCoordinateSystem(@)",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc constructRWMeshCoordinateSystemConverter*(): RWMeshCoordinateSystemConverter {.
    constructor, importcpp: "RWMesh_CoordinateSystemConverter(@)",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc isEmpty*(this: RWMeshCoordinateSystemConverter): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "RWMesh_CoordinateSystemConverter.hxx".}
proc inputLengthUnit*(this: RWMeshCoordinateSystemConverter): cfloat {.noSideEffect,
    importcpp: "InputLengthUnit", header: "RWMesh_CoordinateSystemConverter.hxx".}
proc setInputLengthUnit*(this: var RWMeshCoordinateSystemConverter;
                        theInputScale: cfloat) {.importcpp: "SetInputLengthUnit",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc outputLengthUnit*(this: RWMeshCoordinateSystemConverter): cfloat {.
    noSideEffect, importcpp: "OutputLengthUnit",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc setOutputLengthUnit*(this: var RWMeshCoordinateSystemConverter;
                         theOutputScale: cfloat) {.
    importcpp: "SetOutputLengthUnit",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc hasInputCoordinateSystem*(this: RWMeshCoordinateSystemConverter): bool {.
    noSideEffect, importcpp: "HasInputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc inputCoordinateSystem*(this: RWMeshCoordinateSystemConverter): Ax3 {.
    noSideEffect, importcpp: "InputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc setInputCoordinateSystem*(this: var RWMeshCoordinateSystemConverter;
                              theSysFrom: Ax3) {.
    importcpp: "SetInputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc setInputCoordinateSystem*(this: var RWMeshCoordinateSystemConverter;
                              theSysFrom: RWMeshCoordinateSystem) {.
    importcpp: "SetInputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc hasOutputCoordinateSystem*(this: RWMeshCoordinateSystemConverter): bool {.
    noSideEffect, importcpp: "HasOutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc outputCoordinateSystem*(this: RWMeshCoordinateSystemConverter): Ax3 {.
    noSideEffect, importcpp: "OutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc setOutputCoordinateSystem*(this: var RWMeshCoordinateSystemConverter;
                               theSysTo: Ax3) {.
    importcpp: "SetOutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc setOutputCoordinateSystem*(this: var RWMeshCoordinateSystemConverter;
                               theSysTo: RWMeshCoordinateSystem) {.
    importcpp: "SetOutputCoordinateSystem",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc init*(this: var RWMeshCoordinateSystemConverter; theInputSystem: Ax3;
          theInputLengthUnit: cfloat; theOutputSystem: Ax3;
          theOutputLengthUnit: cfloat) {.importcpp: "Init", header: "RWMesh_CoordinateSystemConverter.hxx".}
proc transformTransformation*(this: RWMeshCoordinateSystemConverter;
                             theTrsf: var Trsf) {.noSideEffect,
    importcpp: "TransformTransformation",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc transformPosition*(this: RWMeshCoordinateSystemConverter; thePos: var Xyz) {.
    noSideEffect, importcpp: "TransformPosition",
    header: "RWMesh_CoordinateSystemConverter.hxx".}
proc transformNormal*(this: RWMeshCoordinateSystemConverter;
                     theNorm: var Graphic3dVec3) {.noSideEffect,
    importcpp: "TransformNormal", header: "RWMesh_CoordinateSystemConverter.hxx".}

























