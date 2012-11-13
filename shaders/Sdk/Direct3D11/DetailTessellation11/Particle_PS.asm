//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer cbMain
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64 [unused]
//   float4x4 g_mView;                  // Offset:   64 Size:    64 [unused]
//   float4x4 g_mProjection;            // Offset:  128 Size:    64 [unused]
//   float4x4 g_mWorldViewProjection;   // Offset:  192 Size:    64 [unused]
//   float4x4 g_mViewProjection;        // Offset:  256 Size:    64 [unused]
//   float4x4 g_mInvView;               // Offset:  320 Size:    64 [unused]
//   float4 g_vScreenResolution;        // Offset:  384 Size:    16 [unused]
//   float4 g_vMeshColor;               // Offset:  400 Size:    16 [unused]
//   float4 g_vTessellationFactor;      // Offset:  416 Size:    16 [unused]
//   float4 g_vDetailTessellationHeightScale;// Offset:  432 Size:    16 [unused]
//   float4 g_vGridSize;                // Offset:  448 Size:    16 [unused]
//   float4 g_vDebugColorMultiply;      // Offset:  464 Size:    16 [unused]
//   float4 g_vDebugColorAdd;           // Offset:  480 Size:    16 [unused]
//   float4 g_vFrustumPlaneEquation[4]; // Offset:  496 Size:    64 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_samLinear                       sampler      NA          NA    0        1
// g_baseTexture                     texture  float4          2d    0        1
// cbMain                            cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 1
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t0.wxyz, s0
add r0.y, r0.x, l(-0.003922)
mov o0.xyzw, r0.xxxx
lt r0.x, r0.y, l(0.000000)
discard_nz r0.x
ret 
// Approximately 6 instruction slots used
