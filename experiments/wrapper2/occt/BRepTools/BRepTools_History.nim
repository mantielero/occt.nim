##  Created on: 2017-04-21
##  Created by: Alexander Bobkov
##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of BRepTools_History"
discard "forward decl of BRepTools_History"
type
  HandleC1C1* = Handle[BRepToolsHistory]

## ! The history keeps the following relations between the input shapes
## ! (S1, ..., Sm) and output shapes (T1, ..., Tn):
## ! 1) an output shape Tj is generated from an input shape Si: Tj <= G(Si);
## ! 2) a output shape Tj is modified from an input shape Si: Tj <= M(Si);
## ! 3) an input shape (Si) is removed: R(Si) == 1.
## !
## ! The relations are kept only for shapes of types vertex, edge, face, and
## ! solid.
## !
## ! The last relation means that:
## ! 1) shape Si is not an output shape and
## ! 2) no any shape is modified (produced) from shape Si:
## ! R(Si) == 1 ==> Si != Tj, M(Si) == 0.
## !
## ! It means that the input shape cannot be removed and modified
## ! simultaneously. However, the shapes may be generated from the
## ! removed shape. For instance, in Fillet operation the edges
## ! generate faces and then are removed.
## !
## ! No any shape could be generated and modified from the same shape
## ! simultaneously: sets G(Si) and M(Si) are not intersected
## ! (G(Si) ^ M(Si) == 0).
## !
## ! Each output shape should be:
## ! 1) an input shape or
## ! 2) generated or modified from an input shape (even generated from the
## !   implicit null shape if necessary):
## !   Tj == Si V (exists Si that Tj <= G(Si) U M(Si)).
## !
## ! Recommendations to choose between relations 'generated' and 'modified':
## ! 1) a shape is generated from input shapes if it dimension is greater or
## !   smaller than the dimensions of the input shapes;
## ! 2) a shape is generated from input shapes if these shapes are also output
## !   shapes;
## ! 3) a shape is generated from input shapes of the same dimension if it is
## !   produced by joining shapes generated from these shapes;
## ! 4) a shape is modified from an input shape if it replaces the input shape by
## !   changes of the location, the tolerance, the bounds of the parametric
## !   space (the faces for a solid), the parametrization and/or by applying of
## !   an approximation;
## ! 5) a shape is modified from input shapes of the same dimension if it is
## !   produced by joining shapes modified from these shapes.
## !
## ! Two sequential histories:
## ! - one history (H12) of shapes S1, ..., Sm to shapes T1, ..., Tn and
## ! - another history (H23) of shapes T1, ..., Tn to shapes Q1, ..., Ql
## ! could be merged to the single history (H13) of shapes S1, ..., Sm to shapes
## ! Q1, ..., Ql.
## !
## ! During the merge:
## ! 1) if shape Tj is generated from shape Si then each shape generated or
## !   modified from shape Tj is considered as a shape generated from shape Si
## !   among shapes Q1, ..., Ql:
## !   Tj <= G12(Si), Qk <= G23(Tj) U M23(Tj) ==> Qk <= G13(Si).
## ! 2) if shape Tj is modified from shape Si, shape Qk is generated from shape
## !   Tj then shape Qk is considered as a shape generated from shape Si among
## !   shapes Q1, ..., Ql:
## !   Tj <= M12(Si), Qk <= G23(Tj) ==> Qk <= G13(Si);
## ! 3) if shape Tj is modified from shape Si, shape Qk is modified from shape
## !   Tj then shape Qk is considered as a shape modified from shape Si among
## !   shapes Q1, ..., Ql:
## !   Tj <= M12(Si), Qk <= M23(Tj) ==> Qk <= M13(Si);

type
  BRepToolsHistory* {.importcpp: "BRepTools_History",
                     header: "BRepTools_History.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## Constructors
                                                                                      ## for
                                                                                      ## History
                                                                                      ## creation
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## types
                                                                                      ## of
                                                                                      ## the
                                                                                      ## historical
                                                                                      ## relations.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## 'true'
                                                                                      ## if
                                                                                      ## the
                                                                                      ## type
                                                                                      ## of
                                                                                      ## the
                                                                                      ## shape
                                                                                      ## is
                                                                                      ## supported
                                                                                      ## by
                                                                                      ## the
                                                                                      ## history.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Methods
                                                                                      ## to
                                                                                      ## set
                                                                                      ## the
                                                                                      ## history.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Set
                                                                                      ## the
                                                                                      ## second
                                                                                      ## shape
                                                                                      ## as
                                                                                      ## generated
                                                                                      ## one
                                                                                      ## from
                                                                                      ## the
                                                                                      ## first
                                                                                      ## shape.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Methods
                                                                                      ## to
                                                                                      ## read
                                                                                      ## the
                                                                                      ## history.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## all
                                                                                      ## shapes
                                                                                      ## generated
                                                                                      ## from
                                                                                      ## the
                                                                                      ## shape.
                                                                                      ##
                                                                                      ## !
                                                                                      ## A
                                                                                      ## method
                                                                                      ## to
                                                                                      ## merge
                                                                                      ## a
                                                                                      ## next
                                                                                      ## history
                                                                                      ## to
                                                                                      ## this
                                                                                      ## history.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Merges
                                                                                      ## the
                                                                                      ## next
                                                                                      ## history
                                                                                      ## to
                                                                                      ## this
                                                                                      ## history.
                                                                                      ##
                                                                                      ## !
                                                                                      ## A
                                                                                      ## method
                                                                                      ## to
                                                                                      ## dump
                                                                                      ## a
                                                                                      ## history
                                                                                      ##
                                                                                      ## !
                                                                                      ## Prints
                                                                                      ## the
                                                                                      ## brief
                                                                                      ## description
                                                                                      ## of
                                                                                      ## the
                                                                                      ## history
                                                                                      ## into
                                                                                      ## a
                                                                                      ## stream
                                                                                      ##
                                                                                      ## !
                                                                                      ## Define
                                                                                      ## the
                                                                                      ## OCCT
                                                                                      ## RTTI
                                                                                      ## for
                                                                                      ## the
                                                                                      ## type.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Prepares
                                                                                      ## the
                                                                                      ## shapes
                                                                                      ## generated
                                                                                      ## from
                                                                                      ## the
                                                                                      ## first
                                                                                      ## shape
                                                                                      ## to
                                                                                      ## set
                                                                                      ## the
                                                                                      ## second
                                                                                      ## one
                                                                                      ##
                                                                                      ## !
                                                                                      ## as
                                                                                      ## generated
                                                                                      ## one
                                                                                      ## from
                                                                                      ## the
                                                                                      ## first
                                                                                      ## one
                                                                                      ## by
                                                                                      ## the
                                                                                      ## addition
                                                                                      ## or
                                                                                      ## the
                                                                                      ## replacement.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## 'true'
                                                                                      ## on
                                                                                      ## success.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Data
                                                                                      ## to
                                                                                      ## keep
                                                                                      ## the
                                                                                      ## history.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Maps
                                                                                      ## each
                                                                                      ## input
                                                                                      ## shape
                                                                                      ## to
                                                                                      ## all
                                                                                      ## shapes
                                                                                      ## modified
                                                                                      ## from
                                                                                      ## it.
                                                                                      ##
                                                                                      ## !
                                                                                      ## If
                                                                                      ## an
                                                                                      ## input
                                                                                      ## shape
                                                                                      ## is
                                                                                      ## not
                                                                                      ## bound
                                                                                      ## to
                                                                                      ## the
                                                                                      ## map
                                                                                      ## then
                                                                                      ##
                                                                                      ## !
                                                                                      ## there
                                                                                      ## is
                                                                                      ## no
                                                                                      ## shapes
                                                                                      ## modified
                                                                                      ## from
                                                                                      ## the
                                                                                      ## shape.
                                                                                      ##
                                                                                      ## !
                                                                                      ## No
                                                                                      ## any
                                                                                      ## shape
                                                                                      ## should
                                                                                      ## be
                                                                                      ## mapped
                                                                                      ## to
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## list.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Auxiliary
                                                                                      ## members
                                                                                      ## to
                                                                                      ## read
                                                                                      ## the
                                                                                      ## history.
                                                                                      ##
                                                                                      ## !
                                                                                      ## An
                                                                                      ## auxiliary
                                                                                      ## empty
                                                                                      ## list.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Auxiliary
                                                                                      ## messages.
    ## ! Maps each input shape to all shapes generated from it.
    ## ! If an input shape is not bound to the map then
    ## ! there is no shapes generated from the shape.
    ## ! No any shape should be mapped to an empty list.
    ## !< The removed shapes.


proc constructBRepToolsHistory*(): BRepToolsHistory {.constructor,
    importcpp: "BRepTools_History(@)", header: "BRepTools_History.hxx".}
proc constructBRepToolsHistory*[TheAlgo](theArguments: TopToolsListOfShape;
                                        theAlgo: var TheAlgo): BRepToolsHistory {.
    constructor, importcpp: "BRepTools_History(@)", header: "BRepTools_History.hxx".}
type
  BRepToolsHistoryTRelationType* {.size: sizeof(cint), importcpp: "BRepTools_History::TRelationType",
                                  header: "BRepTools_History.hxx".} = enum
    TRelationTypeRemoved, TRelationTypeGenerated, TRelationTypeModified


proc isSupportedType*(theShape: TopoDS_Shape): bool {.
    importcpp: "BRepTools_History::IsSupportedType(@)",
    header: "BRepTools_History.hxx".}
proc addGenerated*(this: var BRepToolsHistory; theInitial: TopoDS_Shape;
                  theGenerated: TopoDS_Shape) {.importcpp: "AddGenerated",
    header: "BRepTools_History.hxx".}
proc addModified*(this: var BRepToolsHistory; theInitial: TopoDS_Shape;
                 theModified: TopoDS_Shape) {.importcpp: "AddModified",
    header: "BRepTools_History.hxx".}
proc remove*(this: var BRepToolsHistory; theRemoved: TopoDS_Shape) {.
    importcpp: "Remove", header: "BRepTools_History.hxx".}
proc replaceGenerated*(this: var BRepToolsHistory; theInitial: TopoDS_Shape;
                      theGenerated: TopoDS_Shape) {.importcpp: "ReplaceGenerated",
    header: "BRepTools_History.hxx".}
proc replaceModified*(this: var BRepToolsHistory; theInitial: TopoDS_Shape;
                     theModified: TopoDS_Shape) {.importcpp: "ReplaceModified",
    header: "BRepTools_History.hxx".}
proc clear*(this: var BRepToolsHistory) {.importcpp: "Clear",
                                      header: "BRepTools_History.hxx".}
proc generated*(this: BRepToolsHistory; theInitial: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "Generated", header: "BRepTools_History.hxx".}
proc modified*(this: BRepToolsHistory; theInitial: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "Modified", header: "BRepTools_History.hxx".}
proc isRemoved*(this: BRepToolsHistory; theInitial: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsRemoved", header: "BRepTools_History.hxx".}
proc hasGenerated*(this: BRepToolsHistory): bool {.noSideEffect,
    importcpp: "HasGenerated", header: "BRepTools_History.hxx".}
proc hasModified*(this: BRepToolsHistory): bool {.noSideEffect,
    importcpp: "HasModified", header: "BRepTools_History.hxx".}
proc hasRemoved*(this: BRepToolsHistory): bool {.noSideEffect,
    importcpp: "HasRemoved", header: "BRepTools_History.hxx".}
proc merge*(this: var BRepToolsHistory; theHistory23: Handle[BRepToolsHistory]) {.
    importcpp: "Merge", header: "BRepTools_History.hxx".}
proc merge*(this: var BRepToolsHistory; theHistory23: BRepToolsHistory) {.
    importcpp: "Merge", header: "BRepTools_History.hxx".}
proc merge*[TheAlgo](this: var BRepToolsHistory; theArguments: TopToolsListOfShape;
                    theAlgo: var TheAlgo) {.importcpp: "Merge",
    header: "BRepTools_History.hxx".}
proc dump*(this: var BRepToolsHistory; theS: var StandardOStream) {.importcpp: "Dump",
    header: "BRepTools_History.hxx".}
type
  BRepToolsHistorybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepTools_History::get_type_name(@)",
                            header: "BRepTools_History.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTools_History::get_type_descriptor(@)",
    header: "BRepTools_History.hxx".}
proc dynamicType*(this: BRepToolsHistory): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepTools_History.hxx".}

























