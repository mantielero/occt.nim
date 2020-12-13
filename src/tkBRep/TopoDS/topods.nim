type
  #base_type* {.header: "TopoDS_AlertWithShape.hxx", importcpp: "base_type".} = Message_Alert
  TopoDS_AlertWithShape* {.header: "TopoDS_AlertWithShape.hxx", importcpp: "TopoDS_AlertWithShape", byref.} = object
  ## Alert object storing TopoDS shape in its field

  Handle_TopoDS_TWire* {.header: "TopoDS_TWire.hxx", importcpp: "Handle_TopoDS_TWire".} = Handle[TopoDS_TWire]
  #base_type* {.header: "TopoDS_TWire.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TWire* {.header: "TopoDS_TWire.hxx", importcpp: "TopoDS_TWire", byref.} = object
  ## A set of edges connected by their vertices.

  #base_type* {.header: "TopoDS_TShape.hxx", importcpp: "base_type".} = Standard_Transient
  Handle_TopoDS_TShape* {.header: "TopoDS_TShape.hxx", importcpp: "Handle_TopoDS_TShape".} = Handle[TopoDS_TShape]
  TopoDS_TShape* {.header: "TopoDS_TShape.hxx", importcpp: "TopoDS_TShape", byref.} = object
  ## A TShape is a topological structure describing a set of points in a 2D
  ## or 3D space.

  TopoDS_Solid* {.header: "TopoDS_Solid.hxx", importcpp: "TopoDS_Solid", byref.} = object
  ## Describes a solid shape which - references an underlying solid shape
  ## with the potential to be given a location and an orientation - has a
  ## location for the underlying shape, giving its placement in the local
  ## coordinate system - has an orientation for the underlying shape, in
  ## terms of its geometry (as opposed to orientation in relation to other
  ## shapes).

  TopoDSToStep_MakeShellBasedSurfaceModel* {.header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx", importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel", byref.} = object
  ## This class implements the mapping between classes Face, Shell or Solid
  ## from TopoDS and ShellBasedSurfaceModel from StepShape. All the
  ## topology and geometry comprised into the shape are taken into account
  ## and translated.

  Handle_TopoDS_HShape* {.header: "TopoDS_HShape.hxx", importcpp: "Handle_TopoDS_HShape".} = Handle[TopoDS_HShape]
  #base_type* {.header: "TopoDS_HShape.hxx", importcpp: "base_type".} = Standard_Transient
  TopoDS_HShape* {.header: "TopoDS_HShape.hxx", importcpp: "TopoDS_HShape", byref.} = object
  ## Class to manipulate a Shape with handle.

  TopoDS_Compound* {.header: "TopoDS_Compound.hxx", importcpp: "TopoDS_Compound", byref.} = object
  ## Describes a compound which - references an underlying compound with
  ## the potential to be given a location and an orientation - has a
  ## location for the underlying compound, giving its placement in the
  ## local coordinate system - has an orientation for the underlying
  ## compound, in terms of its geometry (as opposed to orientation in
  ## relation to other shapes). Casts shape S to the more specialized
  ## return type, Compound.

  TopoDSToStep* {.header: "TopoDSToStep.hxx", importcpp: "TopoDSToStep", byref.} = object
  ## This package implements the mapping between CAS.CAD Shape
  ## representation and AP214 Shape Representation. The target schema is
  ## pms_c4 (a subset of AP214)

  Handle_TopoDS_TFace* {.header: "TopoDS_TFace.hxx", importcpp: "Handle_TopoDS_TFace".} = Handle[TopoDS_TFace]
  #base_type* {.header: "TopoDS_TFace.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TFace* {.header: "TopoDS_TFace.hxx", importcpp: "TopoDS_TFace", byref.} = object
  ## A topological part of a surface or of the 2D space. The boundary is a
  ## set of wires and vertices.

  TopoDS_Vertex* {.header: "TopoDS_Vertex.hxx", importcpp: "TopoDS_Vertex", byref.} = object
  ## Describes a vertex which - references an underlying vertex with the
  ## potential to be given a location and an orientation - has a location
  ## for the underlying vertex, giving its placement in the local
  ## coordinate system - has an orientation for the underlying vertex, in
  ## terms of its geometry (as opposed to orientation in relation to other
  ## shapes).

  TopoDSToStep_Tool* {.header: "TopoDSToStep_Tool.hxx", importcpp: "TopoDSToStep_Tool", byref.} = object
  ## This Tool Class provides Information to build a ProSTEP Shape model
  ## from a Cas.Cad BRep.

  TopoDS_Wire* {.header: "TopoDS_Wire.hxx", importcpp: "TopoDS_Wire", byref.} = object
  ## Describes a wire which - references an underlying wire with the
  ## potential to be given a location and an orientation - has a location
  ## for the underlying wire, giving its placement in the local coordinate
  ## system - has an orientation for the underlying wire, in terms of its
  ## geometry (as opposed to orientation in relation to other shapes).

  TopoDS_CompSolid* {.header: "TopoDS_CompSolid.hxx", importcpp: "TopoDS_CompSolid", byref.} = object
  ## Describes a composite solid which - references an underlying composite
  ## solid with the potential to be given a location and an orientation -
  ## has a location for the underlying composite solid, giving its
  ## placement in the local coordinate system - has an orientation for the
  ## underlying composite solid, in terms of its geometry (as opposed to
  ## orientation in relation to other shapes). Casts shape S to the more
  ## specialized return type, CompSolid.

  TopoDSToStep_MakeStepFace* {.header: "TopoDSToStep_MakeStepFace.hxx", importcpp: "TopoDSToStep_MakeStepFace", byref.} = object
  ## This class implements the mapping between classes Face from TopoDS and
  ## TopologicalRepresentationItem from StepShape.

  Handle_TopoDS_TSolid* {.header: "TopoDS_TSolid.hxx", importcpp: "Handle_TopoDS_TSolid".} = Handle[TopoDS_TSolid]
  #base_type* {.header: "TopoDS_TSolid.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TSolid* {.header: "TopoDS_TSolid.hxx", importcpp: "TopoDS_TSolid", byref.} = object
  ## A Topological part of 3D space, bounded by shells, edges and vertices.

  Handle_TopoDS_TCompSolid* {.header: "TopoDS_TCompSolid.hxx", importcpp: "Handle_TopoDS_TCompSolid".} = Handle[TopoDS_TCompSolid]
  #base_type* {.header: "TopoDS_TCompSolid.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TCompSolid* {.header: "TopoDS_TCompSolid.hxx", importcpp: "TopoDS_TCompSolid", byref.} = object
  ## A set of solids connected by their faces.

  TopoDSToStep_Root* {.header: "TopoDSToStep_Root.hxx", importcpp: "TopoDSToStep_Root", byref.} = object
  ## This class implements the common services for all classes of
  ## TopoDSToStep which report error.

  TopoDSToStep_MakeFacetedBrepAndBrepWithVoids* {.header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx", importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids", byref.} = object
  ## This class implements the mapping between classes Solid from TopoDS
  ## and FacetedBrepAndBrepWithVoids from StepShape. All the topology and
  ## geometry comprised into the shell or the solid are taken into account
  ## and translated.

  TopoDSToStep_WireframeBuilder* {.header: "TopoDSToStep_WireframeBuilder.hxx", importcpp: "TopoDSToStep_WireframeBuilder", byref.} = object
  ## This builder Class provides services to build a ProSTEP Wireframemodel
  ## from a Cas.Cad BRep.

  Handle_TopoDS_LockedShape* {.header: "TopoDS_LockedShape.hxx", importcpp: "Handle_TopoDS_LockedShape".} = Handle[TopoDS_LockedShape]
  #base_type* {.header: "TopoDS_LockedShape.hxx", importcpp: "base_type".} = Standard_DomainError
  TopoDS_LockedShape* {.header: "TopoDS_LockedShape.hxx", importcpp: "TopoDS_LockedShape", byref.} = object
  ## An attempt was made to modify a geometry of Shape already shared or
  ## protected.

  Handle_TopoDS_TVertex* {.header: "TopoDS_TVertex.hxx", importcpp: "Handle_TopoDS_TVertex".} = Handle[TopoDS_TVertex]
  #base_type* {.header: "TopoDS_TVertex.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TVertex* {.header: "TopoDS_TVertex.hxx", importcpp: "TopoDS_TVertex", byref.} = object
  ## A Vertex is a topological point in two or three dimensions.

  TopoDSToStep_MakeStepEdge* {.header: "TopoDSToStep_MakeStepEdge.hxx", importcpp: "TopoDSToStep_MakeStepEdge", byref.} = object
  ## This class implements the mapping between classes Edge from TopoDS and
  ## TopologicalRepresentationItem from StepShape.

  TopoDS_Edge* {.header: "TopoDS_Edge.hxx", importcpp: "TopoDS_Edge", byref.} = object
  ## Describes an edge which - references an underlying edge with the
  ## potential to be given a location and an orientation - has a location
  ## for the underlying edge, giving its placement in the local coordinate
  ## system - has an orientation for the underlying edge, in terms of its
  ## geometry (as opposed to orientation in relation to other shapes).

  TopoDS* {.header: "TopoDS.hxx", importcpp: "TopoDS", byref.} = object
  ## Provides methods to cast objects of class TopoDS_Shape to be onjects
  ## of more specialized sub-classes. Types are verified, thus in the
  ## example below, the first two blocks are correct but the third is
  ## rejected by the compiler.

  TopoDS_Shape* {.header: "TopoDS_Shape.hxx", importcpp: "TopoDS_Shape", byref.} = object
  ## Describes a shape which - references an underlying shape with the
  ## potential to be given a location and an orientation - has a location
  ## for the underlying shape, giving its placement in the local coordinate
  ## system - has an orientation for the underlying shape, in terms of its
  ## geometry (as opposed to orientation in relation to other shapes).
  ## Note: A Shape is empty if it references an underlying shape which has
  ## an empty list of shapes.

  Handle_TopoDS_UnCompatibleShapes* {.header: "TopoDS_UnCompatibleShapes.hxx", importcpp: "Handle_TopoDS_UnCompatibleShapes".} = Handle[TopoDS_UnCompatibleShapes]
  #base_type* {.header: "TopoDS_UnCompatibleShapes.hxx", importcpp: "base_type".} = Standard_DomainError
  TopoDS_UnCompatibleShapes* {.header: "TopoDS_UnCompatibleShapes.hxx", importcpp: "TopoDS_UnCompatibleShapes", byref.} = object
  ## An incorrect insertion was attempted.

  TopoDSToStep_MakeManifoldSolidBrep* {.header: "TopoDSToStep_MakeManifoldSolidBrep.hxx", importcpp: "TopoDSToStep_MakeManifoldSolidBrep", byref.} = object
  ## This class implements the mapping between classes Shell or Solid from
  ## TopoDS and ManifoldSolidBrep from StepShape. All the topology and
  ## geometry comprised into the shell or the solid are taken into account
  ## and translated.

  TopoDSToStep_FacetedTool* {.header: "TopoDSToStep_FacetedTool.hxx", importcpp: "TopoDSToStep_FacetedTool", byref.} = object
  ## This Tool Class provides Information about Faceted Shapes to be mapped
  ## to STEP.

  TopoDSToStep_Builder* {.header: "TopoDSToStep_Builder.hxx", importcpp: "TopoDSToStep_Builder", byref.} = object
  ## This builder Class provides services to build a ProSTEP Shape model
  ## from a Cas.Cad BRep.

  TopoDSToStep_MakeStepVertex* {.header: "TopoDSToStep_MakeStepVertex.hxx", importcpp: "TopoDSToStep_MakeStepVertex", byref.} = object
  ## This class implements the mapping between classes Vertex from TopoDS
  ## and TopologicalRepresentationItem from StepShape.

  TopoDS_Iterator* {.header: "TopoDS_Iterator.hxx", importcpp: "TopoDS_Iterator", byref.} = object
  ## Iterates on the underlying shape underlying a given TopoDS_Shape
  ## object, providing access to its component sub-shapes. Each component
  ## shape is returned as a TopoDS_Shape with an orientation, and a
  ## compound of the original values and the relative values.

  Handle_TopoDS_TEdge* {.header: "TopoDS_TEdge.hxx", importcpp: "Handle_TopoDS_TEdge".} = Handle[TopoDS_TEdge]
  #base_type* {.header: "TopoDS_TEdge.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TEdge* {.header: "TopoDS_TEdge.hxx", importcpp: "TopoDS_TEdge", byref.} = object
  ## A topological part of a curve in 2D or 3D, the boundary is a set of
  ## oriented Vertices.

  TopoDSToStep_MakeGeometricCurveSet* {.header: "TopoDSToStep_MakeGeometricCurveSet.hxx", importcpp: "TopoDSToStep_MakeGeometricCurveSet", byref.} = object
  ## This class implements the mapping between a Shape from TopoDS and a
  ## GeometricCurveSet from StepShape in order to create a
  ## GeometricallyBoundedWireframeRepresentation.

  TopoDS_Builder* {.header: "TopoDS_Builder.hxx", importcpp: "TopoDS_Builder", byref.} = object
  ## A Builder is used to create Topological Data Structures.It is the root
  ## of the Builder class hierarchy.

  TopoDSToStep_MakeFacetedBrep* {.header: "TopoDSToStep_MakeFacetedBrep.hxx", importcpp: "TopoDSToStep_MakeFacetedBrep", byref.} = object
  ## This class implements the mapping between classes Shell or Solid from
  ## TopoDS and FacetedBrep from StepShape. All the topology and geometry
  ## comprised into the shell or the solid are taken into account and
  ## translated.

  #TopoDS_ListOfShape* {.header: "TopoDS_ListOfShape.hxx", importcpp: "TopoDS_ListOfShape".} = NCollection_List<TopoDS_Shape>
  #TopoDS_ListIteratorOfListOfShape* {.header: "TopoDS_ListOfShape.hxx", importcpp: "TopoDS_ListIteratorOfListOfShape".} = cint
  TopoDS_Face* {.header: "TopoDS_Face.hxx", importcpp: "TopoDS_Face", byref.} = object
  ## Describes a face which - references an underlying face with the
  ## potential to be given a location and an orientation - has a location
  ## for the underlying face, giving its placement in the local coordinate
  ## system - has an orientation for the underlying face, in terms of its
  ## geometry (as opposed to orientation in relation to other shapes).

  TopoDS_Shell* {.header: "TopoDS_Shell.hxx", importcpp: "TopoDS_Shell", byref.} = object
  ## Describes a shell which - references an underlying shell with the
  ## potential to be given a location and an orientation - has a location
  ## for the underlying shell, giving its placement in the local coordinate
  ## system - has an orientation for the underlying shell, in terms of its
  ## geometry (as opposed to orientation in relation to other shapes).

  Handle_TopoDS_TShell* {.header: "TopoDS_TShell.hxx", importcpp: "Handle_TopoDS_TShell".} = Handle[TopoDS_TShell]
  #base_type* {.header: "TopoDS_TShell.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TShell* {.header: "TopoDS_TShell.hxx", importcpp: "TopoDS_TShell", byref.} = object
  ## A set of faces connected by their edges.

  Handle_TopoDS_TCompound* {.header: "TopoDS_TCompound.hxx", importcpp: "Handle_TopoDS_TCompound".} = Handle[TopoDS_TCompound]
  #base_type* {.header: "TopoDS_TCompound.hxx", importcpp: "base_type".} = TopoDS_TShape
  TopoDS_TCompound* {.header: "TopoDS_TCompound.hxx", importcpp: "TopoDS_TCompound", byref.} = object
  ## A TCompound is an all-purpose set of Shapes.

  Handle_TopoDS_FrozenShape* {.header: "TopoDS_FrozenShape.hxx", importcpp: "Handle_TopoDS_FrozenShape".} = Handle[TopoDS_FrozenShape]
  #base_type* {.header: "TopoDS_FrozenShape.hxx", importcpp: "base_type".} = Standard_DomainError
  TopoDS_FrozenShape* {.header: "TopoDS_FrozenShape.hxx", importcpp: "TopoDS_FrozenShape", byref.} = object
  ## An attempt was made to modify a Shape already shared or protected.

  TopoDSToStep_MakeStepWire* {.header: "TopoDSToStep_MakeStepWire.hxx", importcpp: "TopoDSToStep_MakeStepWire", byref.} = object
  ## This class implements the mapping between classes Wire from TopoDS and
  ## TopologicalRepresentationItem from StepShape.

  TopoDSToStep_MakeBrepWithVoids* {.header: "TopoDSToStep_MakeBrepWithVoids.hxx", importcpp: "TopoDSToStep_MakeBrepWithVoids", byref.} = object
  ## This class implements the mapping between classes Solid from TopoDS
  ## and BrepWithVoids from StepShape. All the topology and geometry
  ## comprised into the shell or the solid are taken into account and
  ## translated.

  #Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object

  Topods_tshape_flags* {.importcpp: "TopoDS_TShape::TopoDS_TShape_Flags", header: "<map>".} [K] = object

#[
include "TopoDS_AlertWithShape.nim"
include "TopoDS_TWire.nim"
include "TopoDS_TShape.nim"
include "TopoDS_Solid.nim"
include "TopoDSToStep_MakeShellBasedSurfaceModel.nim"
include "TopoDS_HShape.nim"
include "TopoDS_Compound.nim"
include "TopoDSToStep.nim"
include "TopoDS_TFace.nim"
include "TopoDS_Vertex.nim"
include "TopoDSToStep_Tool.nim"
include "TopoDS_Wire.nim"
include "TopoDS_CompSolid.nim"
include "TopoDSToStep_MakeEdgeError.nim"
include "TopoDSToStep_MakeStepFace.nim"
include "TopoDS_TSolid.nim"
include "TopoDS_TCompSolid.nim"
include "TopoDSToStep_Root.nim"
include "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.nim"
include "TopoDSToStep_WireframeBuilder.nim"
include "TopoDS_LockedShape.nim"
include "TopoDS_TVertex.nim"
include "TopoDSToStep_MakeFaceError.nim"
include "TopoDSToStep_MakeStepEdge.nim"
include "TopoDSToStep_MakeWireError.nim"
include "TopoDS_Edge.nim"
include "TopoDS.nim"
include "TopoDS_Shape.nim"
include "TopoDS_UnCompatibleShapes.nim"
include "TopoDSToStep_MakeVertexError.nim"
include "TopoDSToStep_MakeManifoldSolidBrep.nim"
include "TopoDSToStep_FacetedTool.nim"
include "TopoDSToStep_Builder.nim"
include "TopoDSToStep_BuilderError.nim"
include "TopoDSToStep_FacetedError.nim"
include "TopoDSToStep_MakeStepVertex.nim"
include "TopoDS_Iterator.nim"
include "TopoDS_TEdge.nim"
include "TopoDSToStep_MakeGeometricCurveSet.nim"
include "TopoDS_Builder.nim"
include "TopoDSToStep_MakeFacetedBrep.nim"
include "TopoDS_ListOfShape.nim"
include "TopoDS_ListIteratorOfListOfShape.nim"
include "TopoDS_Face.nim"
include "TopoDS_Shell.nim"
include "TopoDS_TShell.nim"
include "TopoDS_TCompound.nim"
include "TopoDS_FrozenShape.nim"
include "TopoDSToStep_MakeStepWire.nim"
include "TopoDSToStep_MakeBrepWithVoids.nim"
]#