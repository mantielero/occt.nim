import occt

proc newAisColorScale*():Handle[AIS_ColorScale] {.cdecl,
        importcpp: "new AIS_ColorScale()", 
        header: "AIS_ColorScale.hxx".}


# proc newAIS_Shape*(shap: TopoDS_Shape): AIS_Shape {.cdecl, constructor,
#     importcpp: "AIS_Shape(@)", header: "AIS_Shape.hxx".}

# proc newQuantityColor*(): QuantityColor {.cdecl, constructor,
#                                        importcpp: "Quantity_Color(@)",
#                                        header: "Quantity_Color.hxx".}

proc main =
  var aBox = box(10,20,30)
  var colorScale = newAisColorScale() # Create a property for the shape's color
  echo typeof(colorScale)
  # set color to red
  var color = newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB)
  echo typeof(color)
  `*`(colorScale).setColor(color)

  # Create a presentation for the shape and set its color property
  var shapePresentation = newAIS_Shape( aBox.shape )
  #`*`(shapePresentation).setColorScale(colorScale)
  `*`(shapePresentation).setColor(color)  # setcolorscale

  # Export the shape to a STEP file
  `*`(shapePresentation).toStep("step02.stp")
  # var writer = newSTEPControlWriter() 
  # discard writer.transfer(shapePresentation)  
  # discard writer.write("step02.stp") 

main()

#[

STEPControl_Writer writer;
writer.Transfer(shapePresentation);
writer.Write("output.stp");
]#

#[
// include necessary headers
#include <Graphic3d_MaterialAspect.hxx>

// create material with red color
Graphic3d_MaterialAspect materialAspect;
materialAspect.SetAmbientColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetDiffuseColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetSpecularColor(Quantity_Color(1.0, 1.0, 1.0, Quantity_TOC_RGB));
materialAspect.SetShininess(50.0);
]#

#[
// https://github.com/ulikoehler/OCCUtils/blob/master/src/STEPExport.cxx

void OCCUtils::STEP::ExportSTEP(const TopoDS_Shape& shape, const string& filename, const string& unit) {
    if (shape.IsNull () == true) {
        throw new invalid_argument("Can't export null shape to STEP");
    }

    STEPControl_Writer writer;
    Interface_Static::SetCVal ("xstep.cascade.unit", unit.c_str());
    Interface_Static::SetCVal ("write.step.unit", unit.c_str ());
    Interface_Static::SetIVal ("write.step.nonmanifold", 1);
    // "Transfer" = convert
    IFSelect_ReturnStatus transferStatus = writer.Transfer(shape, STEPControl_AsIs);

    if (transferStatus != IFSelect_RetDone) {
        throw std::logic_error ("Error while transferring shape to STEP");
    }
    // Write transferred structure to STEP file
    IFSelect_ReturnStatus writeStatus = writer.Write(filename.c_str());

    // Return previous locale
    if (writeStatus != IFSelect_RetDone)
    {
        throw std::logic_error ("Error while writing transferred shape to STEP file");
    }
}
]#

#[
// https://github.com/ulikoehler/OCCUtils/blob/master/src/ExtendedSTEP.cxx

#include "occutils/ExtendedSTEP.hxx"

#include <TDocStd_Application.hxx>
#include <TDocStd_Document.hxx>
#include <NCollection_Vector.hxx>
#include <STEPCAFControl_Writer.hxx>
#include <XCAFDoc_DocumentTool.hxx>
#include <XCAFDoc_ShapeTool.hxx>
#include <XCAFDoc_ColorTool.hxx>
#include <XCAFDoc_LayerTool.hxx>
#include <XCAFDoc_DimTolTool.hxx>
#include <XCAFDoc_MaterialTool.hxx>
#include <XCAFApp_Application.hxx>
#include <Quantity_Color.hxx>
#include <vector>

using namespace std;

namespace OCCUtils {
    namespace STEP {
        /**
         * Internal state
         */
        struct _ExtendedSTEPExporterInternals {
            _ExtendedSTEPExporterInternals() : application(XCAFApp_Application::GetApplication())
             {
                // Create document
                application->NewDocument("MDTV-XCAF", document);
                // Get tools
                shapeTool = XCAFDoc_DocumentTool::ShapeTool(document->Main());
                colorTool = XCAFDoc_DocumentTool::ColorTool(document->Main());
                materialTool = XCAFDoc_DocumentTool::MaterialTool(document->Main());
                layerTool = XCAFDoc_DocumentTool::LayerTool(document->Main());
                dimTolTool = XCAFDoc_DocumentTool::DimTolTool(document->Main());
                // Reserve some space in the labels to prevent frequent reallocations
                shapeLabels.reserve(25);
             }
            // Base attributes
            Handle(TDocStd_Document) document;
            Handle(TDocStd_Application) application;
            // Tools
            Handle(XCAFDoc_ShapeTool) shapeTool;
            Handle(XCAFDoc_ColorTool) colorTool;
            Handle(XCAFDoc_MaterialTool) materialTool;
            Handle(XCAFDoc_LayerTool) layerTool;
            Handle(XCAFDoc_DimTolTool) dimTolTool;
            // Internal storage for labels
            std::vector<TDF_Label> shapeLabels;
        };

        ExtendedSTEPExporter::ExtendedSTEPExporter() : internals(new _ExtendedSTEPExporterInternals()) {

        }

        ExtendedSTEPExporter::~ExtendedSTEPExporter() {
            delete internals;
        }

        size_t ExtendedSTEPExporter::AddShape(TopoDS_Shape& shape) {
            TDF_Label shapeLabel = internals->shapeTool->NewShape();
            internals->shapeTool->SetShape(shapeLabel, shape);
            // Add to internal labels
            size_t idx = internals->shapeLabels.size();
            internals->shapeLabels.push_back(shapeLabel);
            return idx;
        }
        
        size_t ExtendedSTEPExporter::AddShapeWithColor(TopoDS_Shape& shape, const Quantity_Color& color, XCAFDoc_ColorType colorType) {
            TDF_Label shapeLabel = internals->shapeTool->NewShape();
            internals->shapeTool->SetShape(shapeLabel, shape);
            internals->colorTool->SetColor(shape, color, colorType);
            // Add to internal labels
            size_t idx = internals->shapeLabels.size();
            internals->shapeLabels.push_back(shapeLabel);
            return idx;
        }

        void ExtendedSTEPExporter::Write(const std::string& filename) {
            STEPCAFControl_Writer writer;
            writer.SetMaterialMode(true);
            writer.SetDimTolMode(true);
            writer.SetLayerMode(true);
            writer.SetPropsMode(true);
            writer.SetColorMode(true);
            writer.Perform(internals->document, filename.c_str());
        }
    }
}
]#