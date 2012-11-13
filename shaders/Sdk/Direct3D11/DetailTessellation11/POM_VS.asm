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
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64
//   float4x4 g_mView;                  // Offset:   64 Size:    64 [unused]
//   float4x4 g_mProjection;            // Offset:  128 Size:    64 [unused]
//   float4x4 g_mWorldViewProjection;   // Offset:  192 Size:    64
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
// cbuffer cbMaterial
// {
//
//   float4 g_materialAmbientColor;     // Offset:    0 Size:    16 [unused]
//   float4 g_materialDiffuseColor;     // Offset:   16 Size:    16 [unused]
//   float4 g_materialSpecularColor;    // Offset:   32 Size:    16 [unused]
//   float4 g_fSpecularExponent;        // Offset:   48 Size:    16 [unused]
//   float4 g_LightPosition;            // Offset:   64 Size:    16
//   float4 g_LightDiffuse;             // Offset:   80 Size:    16 [unused]
//   float4 g_LightAmbient;             // Offset:   96 Size:    16 [unused]
//   float4 g_vEye;                     // Offset:  112 Size:    16
//   float4 g_fBaseTextureRepeat;       // Offset:  128 Size:    16
//   float4 g_fPOMHeightMapScale;       // Offset:  144 Size:    16
//   float4 g_fShadowSoftening;         // Offset:  160 Size:    16 [unused]
//   int g_nMinSamples;                 // Offset:  176 Size:     4 [unused]
//   int g_nMaxSamples;                 // Offset:  180 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbMain                            cbuffer      NA          NA    0        1
// cbMaterial                        cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// TEXCOORD                 0   xy          1     NONE   float   xy  
// NORMAL                   0   xyz         2     NONE   float   xyz 
// BINORMAL                 0   xyz         3     NONE   float   xyz 
// TANGENT                  0   xyz         4     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// TEXCOORD                 3     zw        0     NONE   float     zw
// TEXCOORD                 1   xyz         1     NONE   float   xyz 
// TEXCOORD                 2   xyz         2     NONE   float   xyz 
// TEXCOORD                 4   xyz         3     NONE   float   xyz 
// TEXCOORD                 5   xyz         4     NONE   float   xyz 
// SV_POSITION              0   xyzw        5      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[16], immediateIndexed
dcl_constantbuffer cb1[10], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xy
dcl_input v2.xyz
dcl_input v3.xyz
dcl_input v4.xyz
dcl_output o0.xy
dcl_output o0.zw
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output_siv o5.xyzw, position
dcl_temps 8
dp3 r0.x, v4.xyzx, cb0[0].xyzx
dp3 r0.y, v4.xyzx, cb0[1].xyzx
dp3 r0.z, v4.xyzx, cb0[2].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r1.x, v0.xyzx, cb0[0].xyzx
dp3 r1.y, v0.xyzx, cb0[1].xyzx
dp3 r1.z, v0.xyzx, cb0[2].xyzx
add r2.xyz, -r1.xyzx, cb1[7].xyzx
add r1.xyz, -r1.xyzx, cb1[4].xyzx
dp3 r3.x, r0.xyzx, r2.xyzx
dp3 r4.x, v3.xyzx, cb0[0].xyzx
dp3 r4.y, v3.xyzx, cb0[1].xyzx
dp3 r4.z, v3.xyzx, cb0[2].xyzx
dp3 r0.w, r4.xyzx, r4.xyzx
rsq r0.w, r0.w
mul r4.xyz, r0.wwww, r4.xyzx
dp3 r3.y, r4.xyzx, r2.xyzx
dp2 r0.w, r3.xyxx, r3.xyxx
rsq r0.w, r0.w
mul r5.xy, r0.wwww, r3.xyxx
dp3 r6.x, v2.xyzx, cb0[0].xyzx
dp3 r6.y, v2.xyzx, cb0[1].xyzx
dp3 r6.z, v2.xyzx, cb0[2].xyzx
dp3 r0.w, r6.xyzx, r6.xyzx
rsq r0.w, r0.w
mul r7.xyz, r0.wwww, r6.xyzx
mov o3.xyz, r6.xyzx
dp3 r3.z, r7.xyzx, r2.xyzx
mov o4.xyz, r2.xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
mov o2.xyz, r3.xyzx
mad r0.w, -r3.z, r3.z, r0.w
sqrt r0.w, r0.w
div r0.w, r0.w, r3.z
mul r2.xy, r0.wwww, r5.xyxx
mul o0.zw, r2.xxxy, cb1[9].xxxx
mul o0.xy, v1.xyxx, cb1[8].xxxx
mov r1.w, -r1.z
dp3 o1.x, r0.xyzx, r1.xywx
dp3 o1.y, r4.xyzx, r1.xywx
dp3 o1.z, r7.xyzx, r1.xywx
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
dp4 o5.x, r0.xyzw, cb0[12].xyzw
dp4 o5.y, r0.xyzw, cb0[13].xyzw
dp4 o5.z, r0.xyzw, cb0[14].xyzw
dp4 o5.w, r0.xyzw, cb0[15].xyzw
ret 
// Approximately 50 instruction slots used
