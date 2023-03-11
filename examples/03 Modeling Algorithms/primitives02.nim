import occt

# tkbo - brepalgoapi
# Fused
var b = box(10f, 20f, 3f)
var c = box(20f, 10f, 10f)

#fuse(b,c).toStep("fused.stp")

#cut(c,b).toStep("cut.stp")  # Substraction


common(c,b).toStep("common.stp")  # Intersection