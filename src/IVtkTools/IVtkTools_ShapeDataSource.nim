##  Created on: 2011-10-14
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

discard "forward decl of vtkIdTypeArray"
discard "forward decl of vtkPolyData"
when defined(_MSC_VER):
## ! @class IVtkTools_ShapeDataSource.
## ! @brief VTK data source for OCC shapes polygonal data.

type
  IVtkToolsShapeDataSource* {.importcpp: "IVtkTools_ShapeDataSource",
                             header: "IVtkTools_ShapeDataSource.hxx", bycopy.} = object of VtkPolyDataAlgorithm ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## Initialization
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Set
                                                                                                         ## the
                                                                                                         ## source
                                                                                                         ## OCCT
                                                                                                         ## shape.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theOccShape
                                                                                                         ## [in]
                                                                                                         ## OCCT
                                                                                                         ## shape
                                                                                                         ## wrapper.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## Data
                                                                                                         ## accessors
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## ID
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## shape
                                                                                                         ## used
                                                                                                         ## as
                                                                                                         ## a
                                                                                                         ## topological
                                                                                                         ## input
                                                                                                         ## for
                                                                                                         ## this
                                                                                                         ## data
                                                                                                         ## source.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @return
                                                                                                         ## requested
                                                                                                         ## ID.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## Interface
                                                                                                         ## to
                                                                                                         ## override
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## This
                                                                                                         ## is
                                                                                                         ## called
                                                                                                         ## by
                                                                                                         ## the
                                                                                                         ## superclass.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## This
                                                                                                         ## is
                                                                                                         ## the
                                                                                                         ## method
                                                                                                         ## you
                                                                                                         ## should
                                                                                                         ## override
                                                                                                         ## if
                                                                                                         ## you
                                                                                                         ## use
                                                                                                         ## this
                                                                                                         ## class
                                                                                                         ## as
                                                                                                         ## ancestor.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Build
                                                                                                         ## output
                                                                                                         ## polygonal
                                                                                                         ## data
                                                                                                         ## set
                                                                                                         ## from
                                                                                                         ## the
                                                                                                         ## shape
                                                                                                         ## wrapper.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theRequest
                                                                                                         ## [in]
                                                                                                         ## information
                                                                                                         ## about
                                                                                                         ## data
                                                                                                         ## object.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## In
                                                                                                         ## current
                                                                                                         ## implementation
                                                                                                         ## it
                                                                                                         ## is
                                                                                                         ## ignored.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theInputVector
                                                                                                         ## [in]
                                                                                                         ## the
                                                                                                         ## input
                                                                                                         ## data.
                                                                                                         ## As
                                                                                                         ## adata
                                                                                                         ## source
                                                                                                         ## is
                                                                                                         ## the
                                                                                                         ## start
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## stage
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## VTK
                                                                                                         ## pipeline,
                                                                                                         ## theInputVector
                                                                                                         ## is
                                                                                                         ## empty
                                                                                                         ## and
                                                                                                         ## not
                                                                                                         ## used
                                                                                                         ## (no
                                                                                                         ## input
                                                                                                         ## port).
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theOutputVector
                                                                                                         ## [in]
                                                                                                         ## the
                                                                                                         ## pointer
                                                                                                         ## to
                                                                                                         ## output
                                                                                                         ## data,
                                                                                                         ## that
                                                                                                         ## is
                                                                                                         ## filled
                                                                                                         ## in
                                                                                                         ## this
                                                                                                         ## method.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## Internals
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Transforms
                                                                                                         ## the
                                                                                                         ## passed
                                                                                                         ## polygonal
                                                                                                         ## data
                                                                                                         ## by
                                                                                                         ## the
                                                                                                         ## given
                                                                                                         ## OCCT
                                                                                                         ## transformation
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## matrix.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theSource
                                                                                                         ## [in]
                                                                                                         ## source
                                                                                                         ## polygonal
                                                                                                         ## data
                                                                                                         ## to
                                                                                                         ## transform.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theTrsf
                                                                                                         ## [in]
                                                                                                         ## transformation
                                                                                                         ## to
                                                                                                         ## apply.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @return
                                                                                                         ## resulting
                                                                                                         ## polygonal
                                                                                                         ## data
                                                                                                         ## (transformed
                                                                                                         ## copy
                                                                                                         ## of
                                                                                                         ## source).
    ## !< Shape wrapper used as an input.
    ## !< Polygonal representation of shape.
    ## ! Indicates whether light-weighted processing for transformed shapes is
    ## ! enabled. If so, data source does not re-compute the discrete model for
    ## ! the input topological shape. It rather uses the already existing one
    ## ! and applies the necessary transformation to it.
    ## ! Internal flag indicating that the current working shape is just a
    ## ! transformed copy of the previously processed one. This flag is used in
    ## ! a couple with "fast transformation" mode flag.


## !!!Ignored construct:  public : vtkTypeMacro ( IVtkTools_ShapeDataSource , vtkPolyDataAlgorithm ) static IVtkTools_ShapeDataSource * New ( ) ;
## Error: token expected: ) but got: ,!!!

proc setShape*(this: var IVtkToolsShapeDataSource; theOccShape: Handle) {.
    importcpp: "SetShape", header: "IVtkTools_ShapeDataSource.hxx".}
proc getShape*(this: var IVtkToolsShapeDataSource): Handle {.importcpp: "GetShape",
    header: "IVtkTools_ShapeDataSource.hxx".}
proc fastTransformModeOn*(this: var IVtkToolsShapeDataSource) {.
    importcpp: "FastTransformModeOn", header: "IVtkTools_ShapeDataSource.hxx".}
proc fastTransformModeOff*(this: var IVtkToolsShapeDataSource) {.
    importcpp: "FastTransformModeOff", header: "IVtkTools_ShapeDataSource.hxx".}
proc getId*(this: IVtkToolsShapeDataSource): IVtkIdType {.noSideEffect,
    importcpp: "GetId", header: "IVtkTools_ShapeDataSource.hxx".}
proc contains*(this: IVtkToolsShapeDataSource; theOccShape: Handle): bool {.
    noSideEffect, importcpp: "Contains", header: "IVtkTools_ShapeDataSource.hxx".}
proc subShapeIDs*(this: var IVtkToolsShapeDataSource): VtkSmartPointer[
    VtkIdTypeArray] {.importcpp: "SubShapeIDs",
                     header: "IVtkTools_ShapeDataSource.hxx".}
# when defined(_MSC_VER):
#   discard













































