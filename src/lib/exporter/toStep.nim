import ../../wrapper/topods/topods_types
import ../../wrapper/stepcontrol/[stepcontrol_types, stepcontrol_writer]
import "../../wrapper/interface/interface_static"
import ../../wrapper/ifselect/ifselect_types

proc toSTEP*[T:TopoDS_Shape | TopoDS_Solid | TopoDS_Wire ]( solid:T; fname:string) =
  # Writer
  var writer = newSTEPControlWriter() 
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