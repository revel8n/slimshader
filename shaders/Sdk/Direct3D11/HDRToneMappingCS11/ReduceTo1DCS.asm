//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer cbCS
// {
//
//   uint4 g_param;                     // Offset:    0 Size:    16
//
// }
//
// Resource bind info for Result
// {
//
//   float $Element;                    // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Input                             texture  float4          2d    0        1
// Result                                UAV  struct         r/w    0        1
// cbCS                              cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t0
dcl_uav_structured u0, 4
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadGroupID.xy
dcl_input vThreadID.xy
dcl_temps 2
dcl_tgsm_structured g0, 4, 64
dcl_thread_group 8, 8, 1
utof r0.xy, vThreadID.xyxx
mul r0.xy, r0.xyxx, l(0.012346, 0.012346, 0.000000, 0.000000)
utof r0.zw, cb0[0].zzzw
mul r0.xy, r0.zwzz, r0.xyxx
ftou r0.xy, r0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyzw, t0.xyzw
dp3 r0.x, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.x
sync_g_t
ult r1.xyzw, vThreadIDInGroupFlattened.xxxx, l(32, 16, 8, 4)
if_nz r1.x
  iadd r0.y, vThreadIDInGroupFlattened.x, l(32)
  ld_structured r0.y, r0.y, l(0), g0.xxxx
  add r0.x, r0.y, r0.x
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.x
endif 
sync_g_t
if_nz r1.y
  iadd r0.x, vThreadIDInGroupFlattened.x, l(16)
  ld_structured r0.x, r0.x, l(0), g0.xxxx
  ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  add r0.x, r0.x, r0.y
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.x
endif 
sync_g_t
if_nz r1.z
  iadd r0.x, vThreadIDInGroupFlattened.x, l(8)
  ld_structured r0.x, r0.x, l(0), g0.xxxx
  ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  add r0.x, r0.x, r0.y
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.x
endif 
sync_g_t
if_nz r1.w
  iadd r0.x, vThreadIDInGroupFlattened.x, l(4)
  ld_structured r0.x, r0.x, l(0), g0.xxxx
  ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  add r0.x, r0.x, r0.y
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.x
endif 
sync_g_t
ult r0.xy, vThreadIDInGroupFlattened.xxxx, l(2, 1, 0, 0)
if_nz r0.x
  iadd r0.x, vThreadIDInGroupFlattened.x, l(2)
  ld_structured r0.x, r0.x, l(0), g0.xxxx
  ld_structured r0.z, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  add r0.x, r0.x, r0.z
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.x
endif 
sync_g_t
if_nz r0.y
  ld_structured r0.x, l(1), l(0), g0.xxxx
  ld_structured r0.y, l(0), l(0), g0.xxxx
  add r0.x, r0.x, r0.y
  store_structured g0.x, l(0), l(0), r0.x
endif 
if_z vThreadIDInGroupFlattened.x
  imad r0.x, vThreadGroupID.y, cb0[0].x, vThreadGroupID.x
  ld_structured r0.y, l(0), l(0), g0.xxxx
  store_structured u0.x, r0.x, l(0), r0.y
endif 
ret 
// Approximately 63 instruction slots used
