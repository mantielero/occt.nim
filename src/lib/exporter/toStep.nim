import ../../wrapper/topods/topods_types
import ../../wrapper/stepcontrol/[stepcontrol_types, stepcontrol_writer]
import "../../wrapper/interface/interface_static"
import ../../wrapper/ifselect/ifselect_types
import ../../wrapper/ais/ais_types

proc toSTEP*[T:TopoDS_Shape | TopoDS_Solid | TopoDS_Wire | AIS_Shape ]( solid:T; fname:string) =
  # Writer
  var writer = newSTEPControlWriter() 
  #var writer = newSTEPCAFControl_Writer
  var tmp1 = setCVal("xstep.cascade.unit", "MM")
  var tmp2 = setCVal("write.step.unit", "MM")
  var tmp3 = setIVal("write.step.nonmanifold", 1)

  #discard writer.transfer(shape, STEPControlAsIs)
  var transferStatus = writer.transfer(solid, STEPControlAsIs)  # This is like a convert function
  if transferStatus != IFSelectRetDone:
    raise newException(ValueError, "Error while transferring shape to STEP")

  # Write transferred structure to STEP file
  var writeStatus = writer.write(fname) 
  if writeStatus != IFSelect_RetDone:
    raise newException(ValueError, "Error while writing transferred shape to STEP file")


#[
#include "occutils/STEPExport.hxx"
#include <stdexcept>
#include <STEPControl_Writer.hxx>
#include <Interface_Static.hxx>

using namespace std;

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

