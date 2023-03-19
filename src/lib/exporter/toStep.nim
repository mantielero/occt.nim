import ../../wrapper/topods/topods_types
import ../../wrapper/stepcontrol/[stepcontrol_types, stepcontrol_writer]
import "../../wrapper/interface/interface_static"
import ../../wrapper/ifselect/ifselect_types
import ../../wrapper/ais/ais_types
import ../../wrapper/tdocstd/tdocstd_includes
import ../../wrapper/standard/standard_includes
import ../../wrapper/stepcafcontrol/stepcafcontrol_includes
import ../../wrapper/xcafdoc/xcafdoc_includes
import ../../wrapper/tdf/tdf_types
import ../../wrapper/tcollection/tcollection_includes
import ../../wrapper/quantity/quantity_includes

type
  T = TopoDS_Shape | TopoDS_Solid | TopoDS_Wire | AIS_Shape 

# Based on: https://github.com/ulikoehler/OCCUtils/blob/master/src/STEPExport.cxx
proc toStep*( solid: T; fname:string; unit: string = "MM") =
  # if shape.isNull:
  #   raise newException( ValueError, "can't export null shape to STEP")

  # Writer
  var writer = newSTEPControlWriter() 
  var tmp1 = setCVal("xstep.cascade.unit", unit)
  var tmp2 = setCVal("write.step.unit", unit)
  var tmp3 = setIVal("write.step.nonmanifold", 1)

  #discard writer.transfer(shape, STEPControlAsIs)
  var transferStatus = writer.transfer(solid, STEPControlAsIs)  # This is like a convert function
  if transferStatus != IFSelectRetDone:
    raise newException(ValueError, "Error while transferring shape to STEP")

  # Write transferred structure to STEP file
  var writeStatus = writer.write(fname) 
  if writeStatus != IFSelect_RetDone:
    raise newException(ValueError, "Error while writing transferred shape to STEP file")


# STEP with colors -------------------
# Inspired by:
# https://github.com/ulikoehler/OCCUtils/blob/master/src/ExtendedSTEP.cxx

proc newTDocStdApplicationRef*(): Handle[TDocStdApplication] {.cdecl, constructor,
    importcpp: "new TDocStd_Application()", header: "TDocStd_Application.hxx".}


proc toStep*(doc:Handle[TDocStd_Document]; filename:string) =
  var writer:STEPCAFControl_Writer 
  writer.setMaterialMode(true)
  writer.setDimTolMode(true)
  writer.setLayerMode(true)
  writer.setPropsMode(true)
  writer.setColorMode(true)
  var result = writer.perform( doc, filename)  
  if not result:
    raise newException(ValueError, "something went wrong while exporting a step file")


type
  XdeApp* = object
    app*: Handle[TDocStd_Application]
    doc*: Handle[TDocStd_Document]
    shapeTool*:  Handle[XCAFDocShapeTool]
    colorTool*:  Handle[XCAFDocColorTool]
    layerTool*:  Handle[XCAFDocLayerTool]
    dimTolTool*: Handle[XCAFDocDimTolTool]
    shapeLabels*: seq[TDF_Label]


proc toStep*(app:XdeApp; filename:string) =
  app.doc.toStep( filename )


proc newDocument*(): XdeApp =
  result.app = newTDocStdApplicationRef()
  
  # Create document
  #var doc:Handle[TDocStd_Document]
  `*`(result.app).newDocument(newTCollectionExtendedString("MDTV-XCAF"), result.doc)

  # Get tools
  result.shapeTool  = shapeTool( `*`(result.doc).main )
  result.colorTool  = colorTool( `*`(result.doc).main ) 
  result.layerTool  = layerTool( `*`(result.doc).main )
  result.dimTolTool = dimTolTool( `*`(result.doc).main )

proc addShape*(app:var XdeApp; shape: TopoDS_Shape; color: QuantityColor) =
  var shapeLabel = `*`(app.shapeTool).newShape()
  app.shapeLabels &= shapeLabel
  `*`(app.shapeTool).setShape(shapeLabel, shape )

  # XCAFDocColorGen, XCAFDocColorSurf, XCAFDocColorCurv
  var status = `*`(app.colorTool).setColor( shape, color, XCAFDocColorGen )  
  if not status:
    raise newException(ValueError, "failed while setting the color of a shape")
  

