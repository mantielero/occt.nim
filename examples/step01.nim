import occt

proc main =
  var box = newBRepPrimAPI_MakeBox(1.0, 2.0, 3.0)
  box.build()
  var solid:TopoDS_Solid =  box.solid()
  if solid.isNull:
    raise newException(ValueError, "Can't export null shape to STEP")

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
  var writeStatus = writer.write("step01.step") 
  if writeStatus != IFSelect_RetDone:
    raise newException(ValueError, "Error while writing transferred shape to STEP file")

main()

