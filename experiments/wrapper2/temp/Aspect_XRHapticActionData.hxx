# 1 "/usr/include/opencascade/Aspect_XRHapticActionData.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Aspect_XRHapticActionData.hxx"
# 18 "/usr/include/opencascade/Aspect_XRHapticActionData.hxx"
struct Aspect_XRHapticActionData
{
  float Delay;
  float Duration;
  float Frequency;
  float Amplitude;


  bool IsValid() const
  {
    return Duration > 0.0f
        && Amplitude > 0.0f
        && Frequency > 0.0f
        && Delay >= 0.0f;
  }


  Aspect_XRHapticActionData() : Delay (0.0f), Duration (0.0f), Frequency (0.0f), Amplitude (0.0f) {}
};
