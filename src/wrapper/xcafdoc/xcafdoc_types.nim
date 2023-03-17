
type
  XCAFDoc_Area* {.importcpp: "XCAFDoc_Area", header: "XCAFDoc_Area.hxx", bycopy.} = object of TDataStd_Real ##
    ## !
    ## class
    ## methods
    ##
    ## !
    ## =============


type
  Handle_XCAFDoc_Area* = handle[XCAFDoc_Area]

    ## ! attribute to store area

type
  XCAFDoc_AssemblyItemId* {.importcpp: "XCAFDoc_AssemblyItemId",
                           header: "XCAFDoc_AssemblyItemId.hxx", bycopy.} = object ## !
                                                                              ## Constructs an
                                                                              ## empty
                                                                              ## item
                                                                              ## ID.
    ## /< List of label entries

type
  XCAFDoc_AssemblyItemRef* {.importcpp: "XCAFDoc_AssemblyItemRef",
                            header: "XCAFDoc_AssemblyItemRef.hxx", bycopy.} = object of TDF_Attribute ##  Overrides TDF_Attribute pure virtuals
    ## /< Assembly item ID
    ## /< Type of extra reference: subshape or attribute
    ## /< Extra reference data


type
  Handle_XCAFDoc_AssemblyItemRef* = handle[XCAFDoc_AssemblyItemRef]

    ## ! An attribute that describes a weak reference to an assembly item
    ## ! or to a subshape or to an assembly label attribute.


type
  XCAFDoc_Centroid* {.importcpp: "XCAFDoc_Centroid",
                     header: "XCAFDoc_Centroid.hxx", bycopy.} = object of TDF_Attribute ##
        ## !
        ## class
        ## methods
        ##
        ## !
        ## =============


type
  Handle_XCAFDoc_Centroid* = handle[XCAFDoc_Centroid]

## ! attribute to store centroid


type
  XCAFDoc_ClippingPlaneTool* {.importcpp: "XCAFDoc_ClippingPlaneTool",
                              header: "XCAFDoc_ClippingPlaneTool.hxx", bycopy.} = object of TDataStd_GenericEmpty



type
  Handle_XCAFDoc_ClippingPlaneTool* = handle[XCAFDoc_ClippingPlaneTool]

    ## ! Provide tool for management of ClippingPlane section of document.
    ## ! Provide tool to store, retrieve, remove and modify clipping planes.
    ## ! Each clipping plane consists of gp_Pln and its name.



type
  XCAFDoc_Color* {.importcpp: "XCAFDoc_Color", header: "XCAFDoc_Color.hxx", bycopy.} = object of TDF_Attribute

type
  Handle_XCAFDoc_Color* = handle[XCAFDoc_Color]

    ## ! attribute to store color


type
  XCAFDoc_ColorTool* {.importcpp: "XCAFDoc_ColorTool",
                      header: "XCAFDoc_ColorTool.hxx", bycopy.} = object of TDataStd_GenericEmpty ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## current
                                                                                           ## auto-naming
                                                                                           ## mode;
                                                                                           ## TRUE
                                                                                           ## by
                                                                                           ## default.
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## TRUE
                                                                                           ## then
                                                                                           ## for
                                                                                           ## added
                                                                                           ## colors
                                                                                           ## the
                                                                                           ## TDataStd_Name
                                                                                           ## attribute
                                                                                           ## will
                                                                                           ## be
                                                                                           ## automatically
                                                                                           ## added.
                                                                                           ##
                                                                                           ## !
                                                                                           ## This
                                                                                           ## setting
                                                                                           ## is
                                                                                           ## global.

type
  Handle_XCAFDoc_ColorTool* = handle[XCAFDoc_ColorTool]

    ## ! Provides tools to store and retrieve attributes (colors)
    ## ! of TopoDS_Shape in and from TDocStd_Document
    ## ! A Document is intended to hold different
    ## ! attributes of ONE shape and it's sub-shapes
    ## ! Provide tools for management of Colors section of document.



type
  XCAFDoc_ColorType* {.size: sizeof(cint), importcpp: "XCAFDoc_ColorType",
                      header: "XCAFDoc_ColorType.hxx".} = enum
    XCAFDoc_ColorGen, XCAFDoc_ColorSurf, XCAFDoc_ColorCurv

type
  XCAFDoc_DataMapOfShapeLabel* = NCollection_DataMap[TopoDS_Shape, TDF_Label,
      TopTools_ShapeMapHasher]
  XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel* = Iterator[TopoDS_Shape, TDF_Label,
      TopTools_ShapeMapHasher]


type
  XCAFDoc_Datum* {.importcpp: "XCAFDoc_Datum", header: "XCAFDoc_Datum.hxx", bycopy.} = object of TDF_Attribute


type
  Handle_XCAFDoc_Datum* = handle[XCAFDoc_Datum]

    ## ! attribute to store datum

type
  XCAFDoc_Dimension* {.importcpp: "XCAFDoc_Dimension",
                      header: "XCAFDoc_Dimension.hxx", bycopy.} = object of TDataStd_GenericEmpty


type
  Handle_XCAFDoc_Dimension* = handle[XCAFDoc_Dimension]

        ## ! Attribute that identifies a dimension in the GD&T table.
        ## ! Its parent label is used as a container to store data provided
        ## ! by XCAFDimTolObjects_DimensionObject.
type
  Handle_XCAFDoc_DimTol* = handle[XCAFDoc_DimTol]

## ! attribute to store dimension and tolerance

type
  XCAFDoc_DimTol* {.importcpp: "XCAFDoc_DimTol", header: "XCAFDoc_DimTol.hxx", bycopy.} = object of TDF_Attribute


type
  XCAFDoc_DimTol* {.importcpp: "XCAFDoc_DimTol", header: "XCAFDoc_DimTol.hxx", bycopy.} = object of TDF_Attribute


type
  Handle_XCAFDoc_DimTol* = handle[XCAFDoc_DimTol]

    ## ! attribute to store dimension and tolerance


type
  XCAFDoc_DimTolTool* {.importcpp: "XCAFDoc_DimTolTool",
                       header: "XCAFDoc_DimTolTool.hxx", bycopy.} = object of TDataStd_GenericEmpty


type
  Handle_XCAFDoc_DimTolTool* = handle[XCAFDoc_DimTolTool]

## ! Attribute containing GD&T section of XCAF document.
## ! Provide tools for GD&T section management.


type
  XCAFDoc_DocumentTool* {.importcpp: "XCAFDoc_DocumentTool",
                         header: "XCAFDoc_DocumentTool.hxx", bycopy.} = object of TDataStd_GenericEmpty



type
  Handle_XCAFDoc_DocumentTool* = handle[XCAFDoc_DocumentTool]

## ! Defines sections structure of an XDE document.
## ! attribute marking CAF document as being DECAF document.
## ! Creates the sections structure of the document.


type
  XCAFDoc_Editor* {.importcpp: "XCAFDoc_Editor", header: "XCAFDoc_Editor.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Converts
                                                                                         ## shape
                                                                                         ## (compound/compsolid/shell/wire)
                                                                                         ## to
                                                                                         ## assembly.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param[in]
                                                                                         ## theDoc
                                                                                         ## input
                                                                                         ## document
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param[in]
                                                                                         ## theShape
                                                                                         ## input
                                                                                         ## shape
                                                                                         ## label
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param[in]
                                                                                         ## theRecursively
                                                                                         ## recursively
                                                                                         ## expand
                                                                                         ## a
                                                                                         ## compound
                                                                                         ## subshape
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## True
                                                                                         ## if
                                                                                         ## shape
                                                                                         ## successfully
                                                                                         ## expanded



type
  XCAFDoc_GeomTolerance* {.importcpp: "XCAFDoc_GeomTolerance",
                          header: "XCAFDoc_GeomTolerance.hxx", bycopy.} = object of TDataStd_GenericEmpty


type
  Handle_XCAFDoc_GeomTolerance* = handle[XCAFDoc_GeomTolerance]

## ! Attribute to store dimension and tolerance


type
  XCAFDoc_GraphNode* {.importcpp: "XCAFDoc_GraphNode",
                      header: "XCAFDoc_GraphNode.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## class
                                                                                   ## methods
                                                                                   ## working
                                                                                   ## on
                                                                                   ## the
                                                                                   ## node
                                                                                   ##
                                                                                   ## !
                                                                                   ## ===================================
                                                                                   ##
                                                                                   ## !
                                                                                   ## Shortcut
                                                                                   ## to
                                                                                   ## search
                                                                                   ## a
                                                                                   ## Graph
                                                                                   ## node
                                                                                   ## attribute
                                                                                   ## with
                                                                                   ## default
                                                                                   ##
                                                                                   ## !
                                                                                   ## GraphID.
                                                                                   ## Returns
                                                                                   ## true
                                                                                   ## if
                                                                                   ## found.
                                                                                   ##
                                                                                   ## !
                                                                                   ## remove
                                                                                   ## link
                                                                                   ## between
                                                                                   ## father
                                                                                   ## and
                                                                                   ## child.

type
  Handle_XCAFDoc_GraphNode* = handle[XCAFDoc_GraphNode]

## ! This attribute allow user multirelation tree of labels.
## ! This GraphNode is experimental Graph that not control looping and redundance.
## ! Attribute containing sequence of father's and child's labels.
## ! Provide create and work with Graph in XCAFDocument.


type
  XCAFDoc_GraphNodeSequence* = NCollection_Sequence[handle[XCAFDoc_GraphNode]]


type
  XCAFDoc_LayerTool* {.importcpp: "XCAFDoc_LayerTool",
                      header: "XCAFDoc_LayerTool.hxx", bycopy.} = object of TDataStd_GenericEmpty


type
  Handle_XCAFDoc_LayerTool* = handle[XCAFDoc_LayerTool]

## ! Provides tools to store and retrieve attributes (Layers)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Layers section of document.



type
  XCAFDoc_LengthUnit* {.importcpp: "XCAFDoc_LengthUnit",
                       header: "XCAFDoc_LengthUnit.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## the
                                                                                     ## GUID
                                                                                     ## of
                                                                                     ## the
                                                                                     ## attribute.
    myUnitName* {.importc: "myUnitName".}: TCollection_AsciiString

type
  Handle_XCAFDoc_LengthUnit* = handle[XCAFDoc_LengthUnit]

## ! Used to define a Length Unit attribute containing a length unit info



type
  XCAFDoc_Location* {.importcpp: "XCAFDoc_Location",
                     header: "XCAFDoc_Location.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                 ## !
                                                                                 ## class
                                                                                 ## methods
                                                                                 ##
                                                                                 ## !
                                                                                 ## =============

type
  Handle_XCAFDoc_Location* = handle[XCAFDoc_Location]

## ! attribute to store TopLoc_Location



type
  XCAFDoc_Material* {.importcpp: "XCAFDoc_Material",
                     header: "XCAFDoc_Material.hxx", bycopy.} = object of TDF_Attribute


type
  Handle_XCAFDoc_Material* = handle[XCAFDoc_Material]

## ! attribute to store material


type
  XCAFDoc_MaterialTool* {.importcpp: "XCAFDoc_MaterialTool",
                         header: "XCAFDoc_MaterialTool.hxx", bycopy.} = object of TDataStd_GenericEmpty



type
  Handle_XCAFDoc_MaterialTool* = handle[XCAFDoc_MaterialTool]

## ! Provides tools to store and retrieve attributes (materials)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Materialss section of document.


type
  XCAFDoc_Note* {.importcpp: "XCAFDoc_Note", header: "XCAFDoc_Note.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                  ## !
                                                                                                  ## Checks
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## given
                                                                                                  ## label
                                                                                                  ## represents
                                                                                                  ## a
                                                                                                  ## note.
                                                                                                  ##
                                                                                                  ## Overrides
                                                                                                  ## TDF_Attribute
                                                                                                  ## virtuals
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## note.
    ## /< Name of the user, who created the note.
    ## /< Timestamp, when the note was created.

type
  XCAFDoc_NoteBalloon* {.importcpp: "XCAFDoc_NoteBalloon",
                        header: "XCAFDoc_NoteBalloon.hxx", bycopy.} = object of XCAFDoc_NoteComment ##  Overrides TDF_Attribute virtuals


## !!!Ignored construct:  public : DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_NoteBalloon , XCAFDoc_NoteComment ) ! Returns default attribute GUID static const Standard_GUID & GetID ( ) ;
## Error: token expected: ) but got: ,!!!

type
  XCAFDoc_NoteBinData* {.importcpp: "XCAFDoc_NoteBinData",
                        header: "XCAFDoc_NoteBinData.hxx", bycopy.} = object of XCAFDoc_Note ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## default
                                                                                      ## attribute
                                                                                      ## GUID
                                                                                      ##
                                                                                      ## Overrides
                                                                                      ## TDF_Attribute
                                                                                      ## virtuals
    ## /< Note title.
    ## /< MIME type of data.
    ## /< Byte data array.

type
  XCAFDoc_NoteComment* {.importcpp: "XCAFDoc_NoteComment",
                        header: "XCAFDoc_NoteComment.hxx", bycopy.} = object of XCAFDoc_Note ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## default
                                                                                      ## attribute
                                                                                      ## GUID
                                                                                      ##
                                                                                      ## Overrides
                                                                                      ## TDF_Attribute
                                                                                      ## virtuals
    ## /< Comment text.

type
  XCAFDoc_NotesTool* {.importcpp: "XCAFDoc_NotesTool",
                      header: "XCAFDoc_NotesTool.hxx", bycopy.} = object of TDataStd_GenericEmpty ##  Overrides TDF_Attribute virtuals


## !!!Ignored construct:  public : DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_NotesTool , TDataStd_GenericEmpty ) ! Returns default attribute GUID static const Standard_GUID & GetID ( ) ;
## Error: token expected: ) but got: ,!!!


type
  XCAFDoc_PartId* = TCollection_AsciiString


type
  XCAFDoc_ShapeMapTool* {.importcpp: "XCAFDoc_ShapeMapTool",
                         header: "XCAFDoc_ShapeMapTool.hxx", bycopy.} = object of TDF_Attribute


type
  Handle_XCAFDoc_ShapeMapTool* = handle[XCAFDoc_ShapeMapTool]

## ! attribute containing map of sub shapes



type
  XCAFDoc_ShapeTool* {.importcpp: "XCAFDoc_ShapeTool",
                      header: "XCAFDoc_ShapeTool.hxx", bycopy.} = object of TDataStd_GenericEmpty
    myShapeLabels* {.importc: "myShapeLabels".}: XCAFDoc_DataMapOfShapeLabel
    mySubShapes* {.importc: "mySubShapes".}: XCAFDoc_DataMapOfShapeLabel
    mySimpleShapes* {.importc: "mySimpleShapes".}: XCAFDoc_DataMapOfShapeLabel
    hasSimpleShapes* {.importc: "hasSimpleShapes".}: bool



type
  Handle_XCAFDoc_ShapeTool* = handle[XCAFDoc_ShapeTool]

## ! A tool to store shapes in an XDE
## ! document in the form of assembly structure, and to maintain this structure.
## ! Attribute containing Shapes section of DECAF document.
## ! Provide tools for management of Shapes section.
## ! The API provided by this class allows to work with this
## ! structure regardless of its low-level implementation.
## ! All the shapes are stored on child labels of a main label which is
## ! XCAFDoc_DocumentTool::LabelShapes(). The label for assembly also has
## ! sub-labels, each of which represents the instance of
## ! another shape in that assembly (component). Such sub-label
## ! stores reference to the label of the original shape in the form
## ! of TDataStd_TreeNode with GUID XCAFDoc::ShapeRefGUID(), and its
## ! location encapsulated into the NamedShape.
## ! For correct work with an XDE document, it is necessary to use
## ! methods for analysis and methods for working with shapes.
## ! For example:
## ! if ( STool->IsAssembly(aLabel) )
## ! { Standard_Boolean subchilds = Standard_False; (default)
## ! Standard_Integer nbc = STool->NbComponents
## ! (aLabel[,subchilds]);
## ! }
## ! If subchilds is True, commands also consider sub-levels. By
## ! default, only level one is checked.
## ! In this example, number of children from the first level of
## ! assembly will be returned. Methods for creation and initialization:
## ! Constructor:
## ! XCAFDoc_ShapeTool::XCAFDoc_ShapeTool()
## ! Getting a guid:
## ! Standard_GUID GetID ();
## ! Creation (if does not exist) of ShapeTool on label L:
## ! Handle(XCAFDoc_ShapeTool) XCAFDoc_ShapeTool::Set(const TDF_Label& L)
## ! Analyze whether shape is a simple shape or an instance or a
## ! component of an assembly or it is an assembly ( methods of analysis).
## ! For example:
## ! STool->IsShape(aLabel) ;
## ! Analyze that the label represents a shape (simple
## ! shape, assembly or reference) or
## ! STool->IsTopLevel(aLabel);
## ! Analyze that the label is a label of a top-level shape.
## ! Work with simple shapes, assemblies and instances (
## ! methods for work with shapes).
## ! For example:
## ! Add shape:
## ! Standard_Boolean makeAssembly;
## ! // True to interpret a Compound as an Assembly, False to take it
## ! as a whole
## ! aLabel = STool->AddShape(aShape, makeAssembly);
## ! Get shape:
## ! TDF_Label aLabel...
## ! // A label must be present if
## ! (aLabel.IsNull()) { ... no such label : abandon .. }
## ! TopoDS_Shape aShape;
## ! aShape = STool->GetShape(aLabel);
## ! if (aShape.IsNull())
## ! { ... this label is not for a Shape ... }
## ! To get a label from shape.
## ! Standard_Boolean findInstance = Standard_False;
## ! (this is default value)
## ! aLabel = STool->FindShape(aShape [,findInstance]);
## ! if (aLabel.IsNull())
## ! { ... no label found for this shape ... }


type
  XCAFDoc_View* {.importcpp: "XCAFDoc_View", header: "XCAFDoc_View.hxx", bycopy.} = object of TDataStd_GenericEmpty



type
  Handle_XCAFDoc_View* = handle[XCAFDoc_View]

## ! Attribute to store view


type
  XCAFDoc_ViewTool* {.importcpp: "XCAFDoc_ViewTool",
                     header: "XCAFDoc_ViewTool.hxx", bycopy.} = object of TDataStd_GenericEmpty



type
  Handle_XCAFDoc_ViewTool* = handle[XCAFDoc_ViewTool]

## ! Provides tools to store and retrieve Views
## ! in and from TDocStd_Document
## ! Each View contains parts XCAFDoc_View attribute
## ! with all information about camera and view window.
## ! Also each view contain information of displayed shapes and GDTs
## ! as sets of shape and GDT labels.


type
  XCAFDoc_VisMaterial* {.importcpp: "XCAFDoc_VisMaterial",
                        header: "XCAFDoc_VisMaterial.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                       ## !
                                                                                       ## Return
                                                                                       ## attribute
                                                                                       ## GUID.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @name
                                                                                       ## interface
                                                                                       ## implementation
                                                                                       ##
                                                                                       ## !
                                                                                       ## Return
                                                                                       ## GUID
                                                                                       ## of
                                                                                       ## this
                                                                                       ## attribute
                                                                                       ## type.
    ## !< material name / tag (transient data)
    ## !< metal-roughness material definition
    ## !< common material definition
    ## !< alpha mode; Graphic3d_AlphaMode_BlendAuto by default
    ## !< alpha cutoff value; 0.5 by default
    ## !< specifies whether the material is double/single sided


type
  XCAFDoc_VisMaterialCommon* {.importcpp: "XCAFDoc_VisMaterialCommon",
                              header: "XCAFDoc_VisMaterialCommon.hxx", bycopy.} = object
    DiffuseTexture* {.importc: "DiffuseTexture".}: handle[Image_Texture] ## !< image defining diffuse color
    AmbientColor* {.importc: "AmbientColor".}: Quantity_Color ## !< ambient  color
    DiffuseColor* {.importc: "DiffuseColor".}: Quantity_Color ## !< diffuse  color
    SpecularColor* {.importc: "SpecularColor".}: Quantity_Color ## !< specular color
    EmissiveColor* {.importc: "EmissiveColor".}: Quantity_Color ## !< emission color
    Shininess* {.importc: "Shininess".}: Standard_ShortReal ## !< shininess value
    Transparency* {.importc: "Transparency".}: Standard_ShortReal ## !< transparency value within [0, 1] range with 0 meaning opaque
    IsDefined* {.importc: "IsDefined".}: bool ## !< defined flag; TRUE by default
                                          ## ! Empty constructor.


type
  XCAFDoc_VisMaterialPBR* {.importcpp: "XCAFDoc_VisMaterialPBR",
                           header: "XCAFDoc_VisMaterialPBR.hxx", bycopy.} = object
    BaseColorTexture* {.importc: "BaseColorTexture".}: handle[Image_Texture] ## !< RGB texture for the base color
    MetallicRoughnessTexture* {.importc: "MetallicRoughnessTexture".}: handle[
        Image_Texture]        ## !< RG texture packing the metallic and roughness properties together
    EmissiveTexture* {.importc: "EmissiveTexture".}: handle[Image_Texture] ## !< RGB emissive map controls the color and intensity of the light being emitted by the material
    OcclusionTexture* {.importc: "OcclusionTexture".}: handle[Image_Texture] ## !< R occlusion map indicating areas of indirect lighting
    NormalTexture* {.importc: "NormalTexture".}: handle[Image_Texture] ## !< normal map
    BaseColor* {.importc: "BaseColor".}: Quantity_ColorRGBA ## !< base color (or scale factor to the texture); [1.0, 1.0, 1.0, 1.0] by default
    EmissiveFactor* {.importc: "EmissiveFactor".}: Graphic3d_Vec3 ## !< emissive color; [0.0, 0.0, 0.0] by default
    Metallic* {.importc: "Metallic".}: Standard_ShortReal ## !< metalness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    Roughness* {.importc: "Roughness".}: Standard_ShortReal ## !< roughness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    RefractionIndex* {.importc: "RefractionIndex".}: Standard_ShortReal ## !< IOR (index of refraction) within range [1.0, 3.0]; 1.5 by default
    IsDefined* {.importc: "IsDefined".}: bool ## !< defined flag; TRUE by default
                                          ## ! Empty constructor.


type
  XCAFDoc_VisMaterialTool* {.importcpp: "XCAFDoc_VisMaterialTool",
                            header: "XCAFDoc_VisMaterialTool.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## (if
                                                                                               ## not
                                                                                               ## exist)
                                                                                               ## ColorTool.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## GUID
                                                                                               ## of
                                                                                               ## this
                                                                                               ## attribute
                                                                                               ## type.


type
  XCAFDoc_Volume* {.importcpp: "XCAFDoc_Volume", header: "XCAFDoc_Volume.hxx", bycopy.} = object of TDataStd_Real ##
                                                                                                        ## !
                                                                                                        ## class
                                                                                                        ## methods
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## =============



type
  Handle_XCAFDoc_Volume* = handle[XCAFDoc_Volume]

## ! attribute to store volume

type
  XCAFDoc* {.importcpp: "XCAFDoc", header: "XCAFDoc.hxx", bycopy.} = object ## ! class for containing GraphNodes.
                                                                    ## ! Returns GUID for UAttribute identifying assembly

