////////////////////////////////////////
// Generated with Better Shaders
//
// Auto-generated shader code, don't hand edit!
//
//   Unity Version: 2019.4.16f1
//   Render Pipeline: URP2022
//   Platform: WindowsEditor
////////////////////////////////////////


Shader "AllIn1SpriteShader/AllIn1SpriteShaderLitTransparent"
{
   Properties
   {
	  
	_MainTex ("Main Texture", 2D) = "white" {}	//0
	_Color("Main Color", Color) = (1,1,1,1)		//1
	_Alpha("General Alpha",  Range(0,1)) = 1	//2

	_GlowColor("Glow Color", Color) = (1,1,1,1) //3
	_Glow("Glow Color Intensity", Range(0,100)) = 10 //4
    _GlowGlobal("Global Glow Intensity", Range(1,100)) = 1 //5
	[NoScaleOffset] _GlowTex("Glow Texture", 2D) = "white" {} //6

	_FadeTex("Fade Texture", 2D) = "white" {} //7
	_FadeAmount("Fade Amount",  Range(-0.1,1)) = -0.1 //8
	_FadeBurnWidth("Fade Burn Width",  Range(0,1)) = 0.025 //9
	_FadeBurnTransition("Burn Transition",  Range(0.01,0.5)) = 0.075 //10
	_FadeBurnColor("Fade Burn Color", Color) = (1,1,0,1) //11
	_FadeBurnTex("Fade Burn Texture", 2D) = "white" {} //12
	_FadeBurnGlow("Fade Burn Glow",  Range(1,250)) = 2//13
        
	_OutlineColor("Outline Base Color", Color) = (1,1,1,1) //14
	_OutlineAlpha("Outline Base Alpha",  Range(0,1)) = 1 //15
	_OutlineGlow("Outline Base Glow", Range(1,100)) = 1.5 //16
	_OutlineWidth("Outline Base Width", Range(0,0.2)) = 0.004 //17
	_OutlinePixelWidth("Outline Base Pixel Width", Int) = 1 //18
		
	[Space]
	_OutlineTex("Outline Texture", 2D) = "white" {} //19
	_OutlineTexXSpeed("Texture scroll speed X", Range(-50,50)) = 10 //20
	_OutlineTexYSpeed("Texture scroll speed Y", Range(-50,50)) = 0 //21

    [Space]
	_OutlineDistortTex("Outline Distortion Texture", 2D) = "white" {} //22
	_OutlineDistortAmount("Outline Distortion Amount", Range(0,2)) = 0.5 //23
	_OutlineDistortTexXSpeed("Distortion scroll speed X", Range(-50,50)) = 5 //24
	_OutlineDistortTexYSpeed("Distortion scroll speed Y", Range(-50,50)) = 5 //25
    	
    _AlphaOutlineColor("Color", Color) = (1, 1, 1, 1) //26
	_AlphaOutlineGlow("Outline Glow", Range(1,100)) = 5 //27
	_AlphaOutlinePower("Power", Range(0, 5)) = 1 // 28
	_AlphaOutlineMinAlpha("Min Alpha", Range(0, 1)) = 0 // 29
	_AlphaOutlineBlend("Blend", Range(0, 1)) = 1 // 30

	_GradBlend("Gradient Blend", Range(0,1)) = 1 //31
	_GradTopLeftCol("Top Color", Color) = (1,0,0,1) //32
	_GradTopRightCol("Top Color 2", Color) = (1, 1, 0, 1) //33
	_GradBotLeftCol("Bot Color", Color) = (0,0,1,1) //34
	_GradBotRightCol("Bot Color 2", Color) = (0, 1, 0, 1) //35

	[NoScaleOffset] _ColorSwapTex("Color Swap Texture", 2D) = "black" {} //36
	[HDR] _ColorSwapRed("Red Channel", Color) = (1,1,1,1) //37
	_ColorSwapRedLuminosity("Red luminosity",  Range(-1,1)) = 0.5 //38
	[HDR] _ColorSwapGreen("Green Channel", Color) = (1,1,1,1) //39
	_ColorSwapGreenLuminosity("Green luminosity",  Range(-1,1)) = 0.5 //40
	[HDR] _ColorSwapBlue("Blue Channel", Color) = (1,1,1,1) //41
	_ColorSwapBlueLuminosity("Blue luminosity",  Range(-1,1)) = 0.5 //42

	_HsvShift("Hue Shift", Range(0, 360)) = 180 //43
	_HsvSaturation("Saturation", Range(0, 2)) = 1 //44
	_HsvBright("Brightness", Range(0, 2)) = 1 //45

	_HitEffectColor("Hit Effect Color", Color) = (1,1,1,1) //46
	_HitEffectGlow("Glow Intensity", Range(1,100)) = 5 //47
	[Space]
	_HitEffectBlend("Hit Effect Blend", Range(0,1)) = 1 //48

	_NegativeAmount("Negative Amount", Range(0, 1)) = 1 //49

	_PixelateSize("Pixelate size", Range(4,512)) = 32 //50

	[NoScaleOffset] _ColorRampTex("Color ramp Texture", 2D) = "white" {} //51
	_ColorRampLuminosity("Color ramp luminosity",  Range(-1,1)) = 0 //52
	[Toggle()] _ColorRampOutline("Affects everything?", float) = 0 //53

	_GreyscaleLuminosity("Greyscale luminosity",  Range(-1,1)) = 0 //54
	[Toggle()] _GreyscaleOutline("Affects everything?", float) = 0 //55
	_GreyscaleTintColor("Greyscale Tint Color", Color) = (1,1,1,1) //56

	_PosterizeNumColors("Number of Colors",  Range(0,100)) = 8 //57
	_PosterizeGamma("Posterize Amount",  Range(0.1,10)) = 0.75 //58
	[Toggle()] _PosterizeOutline("Affects everything?", float) = 0 //59

	_BlurIntensity("Blur Intensity",  Range(0,100)) = 10 //60
	[Toggle()] _BlurHD("Blur is Low Res?", float) = 0 //61

	_MotionBlurAngle("Motion Blur Angle", Range(-1, 1)) = 0.1 //62
	_MotionBlurDist("Motion Blur Distance", Range(-3, 3)) = 1.25 //63

	_GhostColorBoost("Ghost Color Boost",  Range(0,5)) = 1 //64
	_GhostTransparency("Ghost Transparency",  Range(0,1)) = 0 //65

	_InnerOutlineColor("Inner Outline Color", Color) = (1,0,0,1) //66
	_InnerOutlineThickness("Outline Thickness",  Range(0,3)) = 1 //67
	_InnerOutlineAlpha("Inner Outline Alpha",  Range(0,1)) = 1 //68
	_InnerOutlineGlow("Inner Outline Glow",  Range(1,250)) = 4 //69

	_AlphaCutoffValue("Alpha cutoff value", Range(0, 1)) = 0.01 //70

	[Toggle()] _OnlyOutline("Only render outline?", float) = 0 //71
	[Toggle()] _OnlyInnerOutline("Only render inner outline?", float) = 0 //72

	_HologramStripesAmount("Stripes Amount", Range(0, 1)) = 0.1 //73
	_HologramUnmodAmount("Unchanged Amount", Range(0, 1)) = 0.0 //74
	_HologramStripesSpeed("Stripes Speed", Range(-20, 20)) = 4.5 //75
	_HologramMinAlpha("Min Alpha", Range(0, 1)) = 0.1 //76
	_HologramMaxAlpha("Max Alpha", Range(0, 100)) = 0.75 //77

	_ChromAberrAmount("ChromAberr Amount", Range(0, 1)) = 1 //78
	_ChromAberrAlpha("ChromAberr Alpha", Range(0, 1)) = 0.4 //79

	_GlitchAmount("Glitch Amount", Range(0, 20)) = 3 //80

	_FlickerPercent("Flicker Percent", Range(0, 1)) = 0.05 //81
	_FlickerFreq("Flicker Frequency", Range(0, 5)) = 0.2 //82
	_FlickerAlpha("Flicker Alpha", Range(0, 1)) = 0 //83

	_ShadowX("Shadow X Axis", Range(-0.5, 0.5)) = 0.1 //84
	_ShadowY("Shadow Y Axis", Range(-0.5, 0.5)) = -0.05 //85
	_ShadowAlpha("Shadow Alpha", Range(0, 1)) = 0.5 //86
	_ShadowColor("Shadow Color", Color) = (0, 0, 0, 1) //87

	_HandDrawnAmount("Hand Drawn Amount", Range(0, 20)) = 10 //88
	_HandDrawnSpeed("Hand Drawn Speed", Range(1, 15)) = 5 //89

	_GrassSpeed("Speed", Range(0,50)) = 2 //90
	_GrassWind("Bend amount", Range(0,50)) = 20 //91
	[Space]
	[Toggle()] _GrassManualToggle("Manually animated?", float) = 0 //92
	_GrassManualAnim("Manual Anim Value", Range(-1,1)) = 1 //93

	_WaveAmount("Wave Amount", Range(0, 25)) = 7 //94
	_WaveSpeed("Wave Speed", Range(0, 25)) = 10 //95
	_WaveStrength("Wave Strength", Range(0, 25)) = 7.5 //96
	_WaveX("Wave X Axis", Range(0, 1)) = 0 //97
	_WaveY("Wave Y Axis", Range(0, 1)) = 0.5 //98

	_RectSize("Rect Size", Range(1, 4)) = 1 //99

	_OffsetUvX("X axis", Range(-1, 1)) = 0 //100
	_OffsetUvY("Y axis", Range(-1, 1)) = 0 //101

	_ClipUvLeft("Clipping Left", Range(0, 1)) = 0 //102
	_ClipUvRight("Clipping Right", Range(0, 1)) = 0 //103
	_ClipUvUp("Clipping Up", Range(0, 1)) = 0 //104
	_ClipUvDown("Clipping Down", Range(0, 1)) = 0 //105

	_TextureScrollXSpeed("Speed X Axis", Range(-5, 5)) = 1 //106
	_TextureScrollYSpeed("Speed Y Axis", Range(-5, 5)) = 0 //107

	_ZoomUvAmount("Zoom Amount", Range(0.1, 5)) = 0.5 //108

	_DistortTex("Distortion Texture", 2D) = "white" {} //109
	_DistortAmount("Distortion Amount", Range(0,2)) = 0.5 //110
	_DistortTexXSpeed("Scroll speed X", Range(-50,50)) = 5 //111
	_DistortTexYSpeed("Scroll speed Y", Range(-50,50)) = 5 //112

	_TwistUvAmount("Twist Amount", Range(0, 3.1416)) = 1 //113
	_TwistUvPosX("Twist Pos X Axis", Range(0, 1)) = 0.5 //114
	_TwistUvPosY("Twist Pos Y Axis", Range(0, 1)) = 0.5 //115
	_TwistUvRadius("Twist Radius", Range(0, 3)) = 0.75 //116

	_RotateUvAmount("Rotate Angle(radians)", Range(0, 6.2831)) = 0 //117

	_FishEyeUvAmount("Fish Eye Amount", Range(0, 0.5)) = 0.35 //118

	_PinchUvAmount("Pinch Amount", Range(0, 0.5)) = 0.35 //119

	_ShakeUvSpeed("Shake Speed", Range(0, 20)) = 2.5 //120
	_ShakeUvX("X Multiplier", Range(0, 5)) = 1.5 //121
	_ShakeUvY("Y Multiplier", Range(0, 5)) = 1 //122

	_ColorChangeTolerance("Tolerance", Range(0, 1)) = 0.25 //123
	_ColorChangeTarget("Color to change", Color) = (1, 0, 0, 1) //124
	[HDR] _ColorChangeNewCol("New Color", Color) = (1, 1, 0, 1) //125
	_ColorChangeLuminosity("New Color Luminosity", Range(0, 1)) = 0.0 //126

	_RoundWaveStrength("Wave Strength", Range(0, 1)) = 0.7 //127
	_RoundWaveSpeed("Wave Speed", Range(0, 5)) = 2 //128

	[Toggle()] _BillboardY("Billboard on both axis?", float) = 0 //129
	_ZWrite ("Depth Write", Float) = 1.0 // 130

	_MySrcMode ("SrcMode", Float) = 5 // 131
    _MyDstMode ("DstMode", Float) = 10 // 132

    _ShineColor("Shine Color", Color) = (1,1,1,1) // 133
    _ShineLocation("Shine Location", Range(0,1)) = 0.5 // 134
    _ShineRotate("Rotate Angle(radians)", Range(0, 6.2831)) = 0 //135
    _ShineWidth("Shine Width", Range(0.05,1)) = 0.1 // 136
    _ShineGlow("Shine Glow", Range(0,100)) = 1 // 137
	[NoScaleOffset] _ShineMask("Shine Mask", 2D) = "white" {} // 138

	_GlitchSize("Glitch Size", Range(0.25, 5)) = 1 //139
	_HologramStripeColor("Stripes Color", Color) = (0,1,1,1) //140
	_GradBoostX("Boost X axis", Range(0.1, 5)) = 1.2 //141
	_GradBoostY("Boost Y axis", Range(0.1, 5)) = 1.2 //142
	[Toggle()] _GradIsRadial("Radial Gradient?", float) = 0 //143
	_AlphaRoundThreshold("Round Threshold", Range(0.005, 1.0)) = 0.5 //144
	_GrassRadialBend("Radial Bend", Range(0.0, 5.0)) = 0.1 //145

	_ColorChangeTolerance2("Tolerance 2", Range(0, 1)) = 0.25 //146
	_ColorChangeTarget2("Color to change 2", Color) = (1, 0, 0, 1) //147
	[HDR] _ColorChangeNewCol2("New Color 2", Color) = (1, 1, 0, 1) //148
	_ColorChangeTolerance3("Tolerance 3", Range(0, 1)) = 0.25 //149
	_ColorChangeTarget3("Color to change 3", Color) = (1, 0, 0, 1) //150
	[HDR] _ColorChangeNewCol3("New Color 3", Color) = (1, 1, 0, 1) //151

	_Contrast ("Contrast", Range(0, 6)) = 1 // 152
	_Brightness ("Brightness", Range(-1, 1)) = 0 // 153

	_ColorSwapBlend ("Color Swap Blend", Range(0, 1)) = 1 // 154
	_ColorRampBlend ("Color Ramp Blend", Range(0, 1)) = 1 // 155
	_GreyscaleBlend ("Greyscale Blend", Range(0, 1)) = 1 // 156
	_GhostBlend ("Ghost Blend", Range(0, 1)) = 1 // 157
	_HologramBlend ("Hologram Blend", Range(0, 1)) = 1 // 158

    [AllIn1ShaderGradient] _ColorRampTexGradient("Color ramp Gradient", 2D) = "white" {} //159

	_OverlayTex("Overlay Texture", 2D) = "white" {} //160
	_OverlayColor("Overlay Color", Color) = (1, 1, 1, 1) //161
	_OverlayGlow("Overlay Glow", Range(0,25)) = 1 // 162
	_OverlayBlend("Overlay Blend", Range(0, 1)) = 1 // 163
    	
    _RadialStartAngle("Radial Start Angle", Range(0, 360)) = 90 //164
	_RadialClip("Radial Clip", Range(0, 360)) = 45 //165
	_RadialClip2("Radial Clip 2", Range(0, 360)) = 0 //166
    	
    _WarpStrength("Warp Strength", Range(0, 0.1)) = 0.025 //167
	_WarpSpeed("Warp Speed", Range(0, 25)) = 8 //168
	_WarpScale("Warp Scale", Range(0.05, 3)) = 0.5 //169
    	
    _OverlayTextureScrollXSpeed("Speed X Axis", Range(-5, 5)) = 0.25 //170
	_OverlayTextureScrollYSpeed("Speed Y Axis", Range(-5, 5)) = 0.25 //171

    _ZTestMode ("Z Test Mode", Float) = 4
    _CullingOption ("Culling Option", float) = 0

	[HideInInspector] _MinXUV("_MinXUV", Range(0, 1)) = 0.0
	[HideInInspector] _MaxXUV("_MaxXUV", Range(0, 1)) = 1.0
	[HideInInspector] _MinYUV("_MinYUV", Range(0, 1)) = 0.0
	[HideInInspector] _MaxYUV("_MaxYUV", Range(0, 1)) = 1.0
	[HideInInspector] _RandomSeed("_MaxYUV", Range(0, 10000)) = 0.0
    _EditorDrawers("Editor Drawers", Int) = 6

	[Normal][NoScaleOffset] _NormalMap("Normal Map", 2D) = "bump" {}
	_NormalStrength("Normal Strength", Range(0, 15)) = 1.0


      [HideInInspector]_QueueOffset("_QueueOffset", Float) = 0
      [HideInInspector]_QueueControl("_QueueControl", Float) = -1
      [HideInInspector][NoScaleOffset]unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
      [HideInInspector][NoScaleOffset]unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
      [HideInInspector][NoScaleOffset]unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
   }
   SubShader
   {
      Tags { "RenderPipeline"="UniversalPipeline" "RenderType" = "Transparent" "Queue" = "Transparent" }

      

      
        Pass
        {
            Name "Universal Forward"
            Tags 
            { 
                "LightMode" = "UniversalForward"
            }
            Cull Back
            Blend One Zero
            ZTest LEqual
            ZWrite On

            Blend One Zero, One Zero
Cull Back
ZTest LEqual
ZWrite On

            	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" "PreviewType" = "Plane" }
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	Blend SrcAlpha OneMinusSrcAlpha


            HLSLPROGRAM

               #pragma vertex Vert
   #pragma fragment Frag

            #pragma target 3.0

            #pragma prefer_hlslcc gles
            #pragma exclude_renderers d3d11_9x
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #pragma multi_compile _ DOTS_INSTANCING_ON
    
            // Keywords
            #pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
            #pragma multi_compile _ LIGHTMAP_ON
            #pragma multi_compile _ DYNAMICLIGHTMAP_ON
            #pragma multi_compile _ DIRLIGHTMAP_COMBINED
            #pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
            #pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
            #pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
            #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
            #pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
            #pragma multi_compile_fragment _ _SHADOWS_SOFT
            #pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
            #pragma multi_compile _ SHADOWS_SHADOWMASK
            #pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
            #pragma multi_compile_fragment _ _LIGHT_LAYERS
            #pragma multi_compile_fragment _ DEBUG_DISPLAY
            #pragma multi_compile_fragment _ _LIGHT_COOKIES
            #pragma multi_compile_fragment _ _WRITE_RENDERING_LAYERS
            #pragma multi_compile _ _FORWARD_PLUS
            #pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
        
            // GraphKeywords: <None>

            #define SHADER_PASS SHADERPASS_FORWARD
            #define VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
            #define _PASSFORWARD 1
            #define _FOG_FRAGMENT 1
            

            
	#pragma shader_feature_local GLOW_ON
	#pragma shader_feature_local FADE_ON
	#pragma shader_feature_local OUTBASE_ON
	#pragma shader_feature_local ONLYOUTLINE_ON
	#pragma shader_feature_local GRADIENT_ON
	#pragma shader_feature_local GRADIENT2COL_ON
	#pragma shader_feature_local RADIALGRADIENT_ON
	#pragma shader_feature_local COLORSWAP_ON
	#pragma shader_feature_local HSV_ON
	#pragma shader_feature_local CHANGECOLOR_ON
	#pragma shader_feature_local CHANGECOLOR2_ON
	#pragma shader_feature_local CHANGECOLOR3_ON
	#pragma shader_feature_local COLORRAMP_ON
	#pragma shader_feature_local GRADIENTCOLORRAMP_ON
	#pragma shader_feature_local HITEFFECT_ON
	#pragma shader_feature_local NEGATIVE_ON
	#pragma shader_feature_local PIXELATE_ON
	#pragma shader_feature_local GREYSCALE_ON
	#pragma shader_feature_local POSTERIZE_ON
	#pragma shader_feature_local BLUR_ON
	#pragma shader_feature_local MOTIONBLUR_ON
	#pragma shader_feature_local GHOST_ON
	#pragma shader_feature_local ALPHAOUTLINE_ON
	#pragma shader_feature_local INNEROUTLINE_ON
	#pragma shader_feature_local ONLYINNEROUTLINE_ON
	#pragma shader_feature_local HOLOGRAM_ON
	#pragma shader_feature_local CHROMABERR_ON
	#pragma shader_feature_local GLITCH_ON
	#pragma shader_feature_local FLICKER_ON
	#pragma shader_feature_local SHADOW_ON
	#pragma shader_feature_local SHINE_ON
	#pragma shader_feature_local CONTRAST_ON
	#pragma shader_feature_local OVERLAY_ON
	#pragma shader_feature_local OVERLAYMULT_ON
	#pragma shader_feature_local DOODLE_ON
	#pragma shader_feature_local WIND_ON
	#pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
	#pragma shader_feature_local RECTSIZE_ON
	#pragma shader_feature_local OFFSETUV_ON
	#pragma shader_feature_local CLIPPING_ON
	#pragma shader_feature_local RADIALCLIPPING_ON
	#pragma shader_feature_local TEXTURESCROLL_ON
	#pragma shader_feature_local ZOOMUV_ON
	#pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local WARP_ON
	#pragma shader_feature_local TWISTUV_ON
	#pragma shader_feature_local ROTATEUV_ON
	#pragma shader_feature_local POLARUV_ON
	#pragma shader_feature_local FISHEYE_ON
	#pragma shader_feature_local PINCH_ON
	#pragma shader_feature_local SHAKEUV_ON

	#pragma shader_feature_local GLOWTEX_ON
	#pragma shader_feature_local OUTTEX_ON
	#pragma shader_feature_local OUTDIST_ON
	#pragma shader_feature_local OUTBASE8DIR_ON
	#pragma shader_feature_local OUTBASEPIXELPERF_ON
	#pragma shader_feature_local COLORRAMPOUTLINE_ON
	#pragma shader_feature_local GREYSCALEOUTLINE_ON
	#pragma shader_feature_local POSTERIZEOUTLINE_ON
	#pragma shader_feature_local BLURISHD_ON
	#pragma shader_feature_local MANUALWIND_ON
	#pragma shader_feature_local ATLAS_ON
	#pragma shader_feature_local PREMULTIPLYALPHA_ON

	#pragma shader_feature BILBOARD_ON
	#pragma shader_feature BILBOARDY_ON

	#pragma shader_feature NORMALMAP_ON


   #define _URP 1
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


            // this has to be here or specular color will be ignored. Not in SG code
            #if _SIMPLELIT
               #define _SPECULAR_COLOR
            #endif


            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            
        

               #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)
      
      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)

      #define _WorldSpaceLightPos0 _MainLightPosition
      
      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(name) TEXTURE2D_ARRAY(name);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)
     
      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      

      // data across stages, stripped like the above.
      struct VertexToPixel
      {
         float4 pos : SV_POSITION;
         float3 worldPos : TEXCOORD0;
         float3 worldNormal : TEXCOORD1;
         float4 worldTangent : TEXCOORD2;
          float4 texcoord0 : TEXCOORD3;
          float4 texcoord1 : TEXCOORD4;
          float4 texcoord2 : TEXCOORD5;

         // #if %TEXCOORD3REQUIREKEY%
          float4 texcoord3 : TEXCOORD6;
         // #endif

         // #if %SCREENPOSREQUIREKEY%
         // float4 screenPos : TEXCOORD7;
         // #endif

         // #if %VERTEXCOLORREQUIREKEY%
          half4 vertexColor : COLOR;
         // #endif

         #if defined(LIGHTMAP_ON)
            float2 lightmapUV : TEXCOORD8;
         #endif
         #if defined(DYNAMICLIGHTMAP_ON)
            float2 dynamicLightmapUV : TEXCOORD9;
         #endif
         #if !defined(LIGHTMAP_ON)
            float3 sh : TEXCOORD10;
         #endif

         #if defined(VARYINGS_NEED_FOG_AND_VERTEX_LIGHT)
            float4 fogFactorAndVertexLight : TEXCOORD11;
         #endif

         #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
           float4 shadowCoord : TEXCOORD12;
         #endif

         // #if %EXTRAV2F0REQUIREKEY%
         // float4 extraV2F0 : TEXCOORD13;
         // #endif

         // #if %EXTRAV2F1REQUIREKEY%
         // float4 extraV2F1 : TEXCOORD14;
         // #endif

         // #if %EXTRAV2F2REQUIREKEY%
         // float4 extraV2F2 : TEXCOORD15;
         // #endif

         // #if %EXTRAV2F3REQUIREKEY%
         // float4 extraV2F3 : TEXCOORD16;
         // #endif

         // #if %EXTRAV2F4REQUIREKEY%
         // float4 extraV2F4 : TEXCOORD17;
         // #endif

         // #if %EXTRAV2F5REQUIREKEY%
         // float4 extraV2F5 : TEXCOORD18;
         // #endif

         // #if %EXTRAV2F6REQUIREKEY%
         // float4 extraV2F6 : TEXCOORD19;
         // #endif

         // #if %EXTRAV2F7REQUIREKEY%
         // float4 extraV2F7 : TEXCOORD20;
         // #endif

         #if UNITY_ANY_INSTANCING_ENABLED
         uint instanceID : CUSTOM_INSTANCE_ID;
         #endif
         #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
         uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
         #endif
         #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
         uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
         #endif
         #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
         FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
         #endif


      };


         
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
         CBUFFER_START(UnityPerMaterial)

            
	half4 _Color;
	half4 _MainTex_ST, _MainTex_TexelSize;
	half _Alpha, _AlphaCutoffValue;

	#if ATLAS_ON
		half _MinXUV, _MaxXUV, _MinYUV, _MaxYUV;
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
	#endif
	 
	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if FADE_ON
		half4 _FadeBurnColor, _FadeTex_ST, _FadeBurnTex_ST;
		half _FadeAmount, _FadeBurnWidth, _FadeBurnTransition,_FadeBurnGlow;
	#endif

	#if OUTBASE_ON
		half4 _OutlineColor;
		half _OutlineAlpha, _OutlineGlow, _OutlineWidth;
		int _OutlinePixelWidth;
	#endif

	#if OUTTEX_ON
		half4 _OutlineTex_ST;
		half _OutlineTexXSpeed, _OutlineTexYSpeed;
	#endif

	#if OUTDIST_ON
		half4 _OutlineDistortTex_ST;
		half _OutlineDistortTexXSpeed, _OutlineDistortTexYSpeed, _OutlineDistortAmount;
	#endif

	#if ALPHAOUTLINE_ON
		half _AlphaOutlineGlow, _AlphaOutlinePower, _AlphaOutlineMinAlpha, _AlphaOutlineBlend;
		half4 _AlphaOutlineColor;
	#endif

	#if INNEROUTLINE_ON
		half _InnerOutlineThickness, _InnerOutlineAlpha, _InnerOutlineGlow;
		half4 _InnerOutlineColor;
	#endif

	#if GRADIENT_ON
		half _GradBlend, _GradBoostX, _GradBoostY;
		half4 _GradTopRightCol, _GradTopLeftCol, _GradBotRightCol, _GradBotLeftCol;
	#endif

	#if COLORSWAP_ON
		half4 _ColorSwapRed, _ColorSwapGreen, _ColorSwapBlue;
		half _ColorSwapRedLuminosity, _ColorSwapGreenLuminosity, _ColorSwapBlueLuminosity, _ColorSwapBlend;
	#endif

	#if CHANGECOLOR_ON
		half4 _ColorChangeNewCol, _ColorChangeTarget;
		half _ColorChangeTolerance, _ColorChangeLuminosity;
	#endif
	#if CHANGECOLOR2_ON
		half4 _ColorChangeNewCol2, _ColorChangeTarget2;
		half _ColorChangeTolerance2;
	#endif
	#if CHANGECOLOR3_ON
		half4 _ColorChangeNewCol3, _ColorChangeTarget3;
		half _ColorChangeTolerance3;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if HITEFFECT_ON
		half4 _HitEffectColor;
		half _HitEffectGlow, _HitEffectBlend;
	#endif

	#if NEGATIVE_ON
		half _NegativeAmount;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if GREYSCALE_ON
		half _GreyscaleLuminosity, _GreyscaleBlend;
		half4 _GreyscaleTintColor;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors, _PosterizeGamma;
	#endif

	#if BLUR_ON
		half _BlurIntensity;
	#endif

	#if MOTIONBLUR_ON
		half _MotionBlurAngle, _MotionBlurDist;
	#endif

	#if GHOST_ON
		half _GhostColorBoost, _GhostTransparency, _GhostBlend;
	#endif

	#if HOLOGRAM_ON
		half _HologramStripesAmount, _HologramMinAlpha, _HologramUnmodAmount, _HologramStripesSpeed, _HologramMaxAlpha, _HologramBlend;
		half4 _HologramStripeColor;
	#endif

	#if CHROMABERR_ON
		half _ChromAberrAmount, _ChromAberrAlpha;
	#endif

	#if GLITCH_ON
		half _GlitchAmount, _GlitchSize;
	#endif

	#if FLICKER_ON
		half _FlickerFreq, _FlickerPercent, _FlickerAlpha;
	#endif

	#if SHADOW_ON
		half _ShadowX, _ShadowY, _ShadowAlpha;
		half4 _ShadowColor;
	#endif

	#if SHINE_ON
		half4 _ShineColor;
		half _ShineLocation, _ShineRotate, _ShineWidth, _ShineGlow;
	#endif

	#if CONTRAST_ON
		half _Contrast, _Brightness;
	#endif

	#if OVERLAY_ON
		half4 _OverlayTex_ST, _OverlayColor;
		half _OverlayGlow, _OverlayBlend, _OverlayTextureScrollXSpeed, _OverlayTextureScrollYSpeed;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if WIND_ON
		half _GrassSpeed, _GrassWind, _GrassManualAnim, _GrassRadialBend;
	#endif

	#if WAVEUV_ON
		float _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if RECTSIZE_ON
		half _RectSize;
	#endif

	#if OFFSETUV_ON
		half _OffsetUvX, _OffsetUvY;
	#endif

	#if CLIPPING_ON
		half _ClipUvLeft, _ClipUvRight, _ClipUvUp, _ClipUvDown;
	#endif

	#if RADIALCLIPPING_ON
		half _RadialStartAngle, _RadialClip, _RadialClip2;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if ZOOMUV_ON
		half _ZoomUvAmount;
	#endif

	#if WARP_ON
		half _WarpStrength, _WarpSpeed, _WarpScale;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if ROTATEUV_ON
		half _RotateUvAmount;
	#endif

	#if FISHEYE_ON
		half _FishEyeUvAmount;
	#endif

	#if PINCH_ON
		half _PinchUvAmount;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif

	float _RandomSeed;




         CBUFFER_END

         

         

         
	
	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if GLOW_ON
		TEXTURE2D(_GlowTex);
		SAMPLER(sampler_GlowTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);

		TEXTURE2D(_FadeBurnTex);
		SAMPLER(sampler_FadeBurnTex);
	#endif

	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);	
	#endif

	#if OUTTEX_ON
		TEXTURE2D(_OutlineTex);
		SAMPLER(sampler_OutlineTex);
	#endif

	#if OUTDIST_ON
		TEXTURE2D(_OutlineDistortTex);
		SAMPLER(sampler_OutlineDistortTex);
	#endif

	#if COLORSWAP_ON
		TEXTURE2D(_ColorSwapTex);
		SAMPLER(sampler_ColorSwapTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTex);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif

	#if SHINE_ON
		TEXTURE2D(_ShineMask);
		SAMPLER(sampler_ShineMask);
	#endif

	#if OVERLAY_ON
		TEXTURE2D(_OverlayTex);
		SAMPLER(sampler_OverlayTex);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif


	half3 GetPixel(in int offsetX, in int offsetY, in half2 uv, in Texture2D _tex, in SamplerState _sampler)
	{
		half2 _uv = uv + half2(offsetX * _MainTex_TexelSize.x, offsetY * _MainTex_TexelSize.y);
		half4 col = SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
		return col.rgb;
	}


	//BLURS-------------------------------------------------------------------------
	half4 Blur(half2 uv, Texture2D source, SamplerState sampler_source, half Intensity)
	{
		const half2 texelSize = 1.0 / _ScreenParams.xy;
		const half4 color = SAMPLE_TEXTURE2D(source, sampler_source, uv);
		const half2 offset = Intensity * texelSize;

		half4 accumulatedColor = color;
		half accumulatedWeight = 1.0;
		for (int x = -1; x <= 1; x++)
		{
			for (int y = -1; y <= 1; y++)
			{
				const half2 sampleUV = uv + half2(x, y) * offset;
				const half4 sampleColor = SAMPLE_TEXTURE2D(source, sampler_source, sampleUV);

				accumulatedColor += sampleColor;
				accumulatedWeight += 1.0;
			}
		}

		half4 blurredColor = accumulatedColor / accumulatedWeight;
		return blurredColor;
	}

	half BlurHD_G(half bhqp, half x)
	{
		return exp(-(x * x) / (2.0 * bhqp * bhqp));
	}
	half4 BlurHD(half2 uv, Texture2D source, SamplerState sampler_source, half BlurAmount, half xScale, half yScale)
	{
		int iterations = 16;
		int halfIterations = iterations / 2;
		half sigmaX = 0.1 + BlurAmount * 0.5;
		half sigmaY = sigmaX;
		half total = 0.0;
		half4 ret = half4(0, 0, 0, 0);
		for (int iy = 0; iy < iterations; ++iy)
		{
			half fy = BlurHD_G(sigmaY, half(iy) -half(halfIterations));
			half offsetY = half(iy - halfIterations) * 0.00390625 * xScale;
			for (int ix = 0; ix < iterations; ++ix)
			{
				half fx = BlurHD_G(sigmaX, half(ix) - half(halfIterations));
				half offsetX = half(ix - halfIterations) * 0.00390625 * yScale;
				total += fx * fy;
				ret += SAMPLE_TEXTURE2D(source, sampler_source, uv + half2(offsetX, offsetY)) * fx * fy;
			}
		}
		return ret / total;
	}
	//-----------------------------------------------------------------------


	//-------------------------------------------
	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax){
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}
	//-------------------------------------------

	//-----------------------------------------------------------------------
	half rand(half2 seed, half offset) {
		return (frac(sin(dot(seed, half2(12.9898, 78.233))) * 43758.5453) + offset) % 1.0;
	}

	half rand2(half2 seed, half offset) {
		return (frac(sin(dot(seed * floor(50 + (_Time.x % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}

	half rand2CustomTime(half2 seed, half offset, half customTime) {
		return (frac(sin(dot(seed * floor(50 + (customTime % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}
	//-----------------------------------------------------------------------


	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//BILBOARD_ON
		#if BILBOARD_ON
			half3 camRight = mul((half3x3)unity_CameraToWorld, half3(1,0,0));
			half3 camUp = half3(0,1,0);
			#if BILBOARDY_ON
				camUp = mul((half3x3)unity_CameraToWorld, half3(0,1,0));
			#endif
			half3 localPos = v.vertex.x * camRight + v.vertex.y * camUp;
			v.vertex = half4(localPos, 1);
		#endif
        //-----------------------------------------------------------

        v.texcoord0.xy = TRANSFORM_TEX(v.texcoord0.xy, _MainTex);
		half2 center = half2(0.5, 0.5);
        #if ATLAS_ON
		    center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
		#endif
		
		//POLARUV_ON
		#if POLARUV_ON
			v.texcoord0.xy = v.texcoord0.xy - center;
		#endif

		//----------------------------------------

		//ROTATEUV_ON
		#if ROTATEUV_ON
			half2 uvC = v.texcoord0.xy;
			half cosAngle = cos(_RotateUvAmount);
			half sinAngle = sin(_RotateUvAmount);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvC -= center;
			v.texcoord0.xy = mul(rot, uvC);
			v.texcoord0.xy += center;
		#endif
		//--------------------

		#if RECTSIZE_ON
			v.vertex.xyz += (v.vertex.xyz * (_RectSize - 1.0));
		#endif

		#if OUTTEX_ON
			v.texcoord1.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineTex);
		#endif

		#if OUTDIST_ON
			v.texcoord2.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineDistortTex);
		#endif

		#if DISTORT_ON
			v.texcoord3.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		half randomSeed = _RandomSeed;

		float2 uvRect = d.texcoord0;
		half2 center = half2(0.5, 0.5);
		#if ATLAS_ON
			center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
			uvRect = half2((d.texcoord0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord0.y - _MinYUV) / (_MaxYUV - _MinYUV));
		#endif
		half2 centerTiled = half2(center.x *  _MainTex_ST.x, center.y *  _MainTex_ST.y);

		//CLIPPING_ON
		#if CLIPPING_ON
			half2 tiledUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv = half2((tiledUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			clip((1 - _ClipUvUp) - tiledUv.y);
			clip(tiledUv.y - _ClipUvDown);
			clip((1 - _ClipUvRight) - tiledUv.x);
			clip(tiledUv.x - _ClipUvLeft);
		#endif
		//----------------------------------

		//RADIALCLIPPING_ON
		#if RADIALCLIPPING_ON
			half2 tiledUv2 = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv2 = half2((tiledUv2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half startAngle = _RadialStartAngle - _RadialClip;
			half endAngle = _RadialStartAngle + _RadialClip2;
			half offset0 = clamp(0, 360, startAngle + 360);
			half offset360 = clamp(0, 360, endAngle - 360);
			half2 atan2Coord = half2(lerp(-1, 1, tiledUv2.x), lerp(-1, 1, tiledUv2.y));
			half atanAngle = atan2(atan2Coord.y, atan2Coord.x) * 57.3; // angle in degrees
			if(atanAngle < 0) atanAngle = 360 + atanAngle;
			if(atanAngle >= startAngle && atanAngle <= endAngle) discard;
			if(atanAngle <= offset360) discard;
			if(atanAngle >= offset0) discard;
		#endif

		//-----------------------------

		//TEXTURESCROLL_ON && ATLAS_ON
		#if TEXTURESCROLL_ON && ATLAS_ON
			d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs(((_Time.y + randomSeed) * _TextureScrollXSpeed) + uvRect.x) % 1)),
			_MinYUV + ((_MaxYUV - _MinYUV) * (abs(((_Time.y + randomSeed) * _TextureScrollYSpeed) + uvRect.y) % 1)));
		#endif
		//----------------------------

		//OFFSETUV_ON
		#if OFFSETUV_ON
			#if ATLAS_ON
				d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs((_OffsetUvX + uvRect.x) % 1))),
				_MinYUV + ((_MaxYUV - _MinYUV) * (abs(_OffsetUvY + uvRect.y) % 1)));
			#else
				d.texcoord0.xy += half2(_OffsetUvX, _OffsetUvY);
			#endif
		#endif

		//----------------------

		//POLARUV_ON
		#if POLARUV_ON
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (2.0f * 3.141592653589f), length(d.texcoord0.xy));
			d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		//--------------------------------------

		//TWISTUV_ON
		#if TWISTUV_ON
			#if ATLAS_ON
				_TwistUvPosX = ((_MaxXUV - _MinXUV) * _TwistUvPosX) + _MinXUV;
				_TwistUvPosY = ((_MaxYUV - _MinYUV) * _TwistUvPosY) + _MinYUV;
			#endif
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		//--------------------------------------------

		//FISHEYE_ON
		#if FISHEYE_ON
			half bind = length(centerTiled);
			half2 dF = d.texcoord0.xy - centerTiled;
			half dFlen = length(dF);
			half fishInt = (3.14159265359 / bind) * (_FishEyeUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + (dF / (max(0.0001, dFlen))) * tan(dFlen * fishInt) * bind / tan(bind * fishInt);
		#endif
		//---------------------------------------------

		//PINCH_ON
		#if PINCH_ON
			half2 dP = d.texcoord0.xy - centerTiled;
			half pinchInt = (3.141592 / length(centerTiled)) * (-_PinchUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + normalize(dP) * atan(length(dP) * -pinchInt * 10.0) * 0.5 / atan(-pinchInt * 5);
		#endif

		//---------------------------------------------

		//ZOOMUV_ON
		#if ZOOMUV_ON
			d.texcoord0.xy -= centerTiled;
			d.texcoord0.xy = d.texcoord0.xy * _ZoomUvAmount;
			d.texcoord0.xy += centerTiled;
		#endif

		//-----------------------------------------------

		//DOODLE_ON
		#if DOODLE_ON
			half2 uvCopy = uvRect;
			_HandDrawnSpeed = (floor((_Time.x + randomSeed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		//--------------------------

		//SHAKEUV_ON
		#if SHAKEUV_ON
			half xShake = sin((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		//-------------------------------------------

		//RECTSIZE_ON
		#if RECTSIZE_ON
			d.texcoord0.xy = d.texcoord0.xy * (_RectSize).xx + (((-_RectSize * 0.5) + 0.5)).xx;
		#endif

		//-------------------------------------------

		//DISTORT_ON
		#if DISTORT_ON
			#if ATLAS_ON
				d.texcoord3.x = d.texcoord3.x * (1 / (_MaxXUV - _MinXUV));
				d.texcoord3.y = d.texcoord3.y * (1 / (_MaxYUV - _MinYUV)); 
			#endif

			d.texcoord3.x += ((_Time.x + _RandomSeed) * _DistortTexXSpeed) % 1;
			d.texcoord3.y += ((_Time.x + _RandomSeed) * _DistortTexYSpeed) % 1;
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, d.texcoord3.xy).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif
		//-------------------------------------------------------

		//WARP_ON
		#if WARP_ON
            half2 warpUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				warpUv = half2((warpUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (warpUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			const float tau = 6.283185307179586;
            float xWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.x * tau / _WarpScale;
            float yWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.y * tau / _WarpScale;
            float2 warp = float2(sin(xWarp), sin(yWarp)) * _WarpStrength;
            d.texcoord0.xy += warp;
		#endif

		//-------------------------------------------------------

		//WAVEUV_ON
		#if WAVEUV_ON
			float2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
            uvWave %= 1;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
            float waveTime = _Time.y + randomSeed;
			float angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((waveTime *  _WaveSpeed));
			d.texcoord0.xy = d.texcoord0.xy + uvWave * sin(angWave) * (_WaveStrength / 1000.0);
		#endif
		//----------------------------------------------------

		//ROUNDWAVEUV_ON
		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - uvRect.x);
			half yWave = ((0.5 * _MainTex_ST.y) - uvRect.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
			d.texcoord0.xy += (sin((ripple + (_Time.y + randomSeed) * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif
		//----------------------------------------------------


		//WIND_ON
		#if WIND_ON
			half windOffset = sin((_Time.x + randomSeed) * _GrassSpeed * 10);
			half2 windCenter = half2(0.5, 0.1);
			#if ATLAS_ON
				windCenter.x = ((_MaxXUV - _MinXUV) * windCenter.x) + _MinXUV;
				windCenter.y = ((_MaxYUV - _MinYUV) * windCenter.y) + _MinYUV;
			#endif
			#if !MANUALWIND_ON
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * windOffset), uvRect.y)), 1);
			#else
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * _GrassManualAnim), uvRect.y)), 1);
				windOffset = _GrassManualAnim;
			#endif
			half2 delta = d.texcoord0.xy - windCenter;
			half delta2 = dot(delta.xy, delta.xy);
			half2 delta_offset = delta2 * windOffset;
			d.texcoord0.xy = d.texcoord0.xy + half2(delta.y, -delta.x) * delta_offset * _GrassRadialBend;
		#endif

		//--------------------------------------------------------

		//TEXTURESCROLL_ON && !ATLAS_ON
		#if TEXTURESCROLL_ON && !ATLAS_ON
			d.texcoord0.x += ((_Time.y + randomSeed) * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += ((_Time.y + randomSeed) * _TextureScrollYSpeed) % 1;
		#endif
		//------------------------------

		//PIXELATE_ON
		#if PIXELATE_ON
            half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif
		//--------------

		half4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy);
		half originalAlpha = col.a;
		col *= d.vertexColor;

		//NORMAL MAP
		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif
        float normalSign = sign(dot(d.worldSpaceViewDir, d.worldSpaceNormal));
        o.Normal *= normalSign;


		//GLITCH_ON
		#if GLITCH_ON
			half2 uvGlitch = uvRect;
			uvGlitch.y -= 0.5;
			half lineNoise = pow(rand2(floor(uvGlitch * half2(24., 19.) * _GlitchSize) * 4.0, randomSeed), 3.0) * _GlitchAmount
				* pow(rand2(floor(uvGlitch * half2(38., 14.) * _GlitchSize) * 4.0, randomSeed), 3.0);
			col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(lineNoise * 0.02 * rand2(half2(2.0, 1), randomSeed), 0)) * d.vertexColor;
		#endif
		//--------------------------------------

		//CHROMABERR_ON
		#if CHROMABERR_ON
			half4 r = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ChromAberrAmount/10, 0))	* d.vertexColor;
			half4 b = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-_ChromAberrAmount/10, 0)) * d.vertexColor;
			col = half4(r.r * r.a, col.g, b.b * b.a, max(max(r.a, b.a) * _ChromAberrAlpha, col.a));
		#endif

		//--------------------------------

		//BLUR_ON
		#if BLUR_ON
			#if ATLAS_ON
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, (_MaxXUV - _MinXUV), (_MaxYUV - _MinYUV)) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity * (_MaxXUV - _MinXUV)) * d.vertexColor;
				#endif
			#else
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, 1, 1) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity) * d.vertexColor;
				#endif
			#endif
        #endif

		//--------------------

		//MOTIONBLUR_ON
		#if MOTIONBLUR_ON
			_MotionBlurAngle = _MotionBlurAngle * 3.1415926;
			#define rot(n) mul(n, half2x2(cos(_MotionBlurAngle), -sin(_MotionBlurAngle), sin(_MotionBlurAngle), cos(_MotionBlurAngle)))
			_MotionBlurDist = _MotionBlurDist * 0.005;
			#if ATLAS_ON
				_MotionBlurDist *= (_MaxXUV - _MinXUV);
			#endif
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist, -_MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 2, -_MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 3, -_MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 4, -_MotionBlurDist * 4)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist, _MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 2, _MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 3, _MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 4, _MotionBlurDist * 4)));
			col.rgb = col.rgb / 9;
        #endif
		//------------------------------------

		//NEGATIVE_ON
		#if NEGATIVE_ON
			col.rgb = lerp(col.rgb, 1 - col.rgb, _NegativeAmount);
		#endif

		//--------------
		half luminance = 0;

		//GREYSCALE_ON && !GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && !GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif
		//------------------------------------

		//GHOST_ON
		#if GHOST_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 ghostResult;
			ghostResult.a = saturate(luminance - _GhostTransparency) * col.a;
			ghostResult.rgb = col.rgb * (luminance + _GhostColorBoost);
			col = lerp(col, ghostResult, _GhostBlend);
		#endif
		//------------------------------------

		//INNEROUTLINE_ON
		#if INNEROUTLINE_ON
			half3 innerT = abs(GetPixel(0, _InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(0, -_InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex));
			innerT += abs(GetPixel(_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(-_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex));
			#if !ONLYINNEROUTLINE_ON
				innerT = (innerT / 2.0) * col.a * _InnerOutlineAlpha;
				col.rgb += length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
			#else
				innerT *= col.a * _InnerOutlineAlpha;
				col.rgb = length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
				col.a = step(0.3, col.r+col.g+col.b);
			#endif
		#endif
		//-------------------------------------------------------

		//HITEFFECT_ON
		#if HITEFFECT_ON
			col.rgb = lerp(col.rgb, _HitEffectColor.rgb * _HitEffectGlow, _HitEffectBlend);
		#endif
		//--------------------

		//GRADIENT_ON
		#if GRADIENT_ON
			half2 tiledUvGrad = half2(uvRect.x / _MainTex_ST.x, uvRect.y / _MainTex_ST.y);
			#if GRADIENT2COL_ON
				_GradTopRightCol = _GradTopLeftCol;
				_GradBotRightCol = _GradBotLeftCol;
			#endif
			#if RADIALGRADIENT_ON
				half radialDist = 1 - length(tiledUvGrad - half2(0.5, 0.5));
				radialDist *= (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
				radialDist = saturate(_GradBoostX * radialDist);
				half4 gradientResult = lerp(_GradTopLeftCol, _GradBotLeftCol, radialDist);
			#else
				half gradXLerpFactor = saturate(pow(tiledUvGrad.x, _GradBoostX));
				half4 gradientResult = lerp(lerp(_GradBotLeftCol, _GradBotRightCol, gradXLerpFactor),
				lerp(_GradTopLeftCol, _GradTopRightCol, gradXLerpFactor), saturate(pow(tiledUvGrad.y, _GradBoostY)));
			#endif
			gradientResult = lerp(col, gradientResult, _GradBlend);
			col.rgb = gradientResult.rgb * col.a;
			col.a *= gradientResult.a;
		#endif
		//--------------------------------------------------------------------

		//CONTRAST_ON
		#if CONTRAST_ON
			col.rgb = (col.rgb - float3(0.5, 0.5, 0.5)) * _Contrast + float3(0.5, 0.5, 0.5);
			col.rgb += _Brightness;
		#endif

		//-------------------------------------------------------------------

		//COLORSWAP_ON
		#if COLORSWAP_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 swapMask = SAMPLE_TEXTURE2D(_ColorSwapTex, sampler_ColorSwapTex, d.texcoord0.xy);
			swapMask.rgb *= swapMask.a;
			half3 redSwap = _ColorSwapRed * swapMask.r * saturate(luminance + _ColorSwapRedLuminosity);
			half3 greenSwap = _ColorSwapGreen * swapMask.g * saturate(luminance + _ColorSwapGreenLuminosity);
			half3 blueSwap = _ColorSwapBlue * swapMask.b * saturate(luminance + _ColorSwapBlueLuminosity);
			swapMask.rgb = col.rgb * saturate(1 - swapMask.r - swapMask.g - swapMask.b);
			col.rgb = lerp(col.rgb, swapMask.rgb + redSwap + greenSwap + blueSwap, _ColorSwapBlend);
		#endif
		//--------------------------------------------------------------------

		//COLORRAMP_ON && !COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && !COLORRAMPOUTLINE_ON 
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//--------------------------------------------------------------------

		//CHANGECOLOR_ON
		#if CHANGECOLOR_ON
			float3 currChangeColor = saturate(col.rgb);
			luminance = 0.3 * currChangeColor.r + 0.59 * currChangeColor.g + 0.11 * currChangeColor.b;
			luminance = saturate(luminance + _ColorChangeLuminosity);
			half3 dif = abs(currChangeColor - _ColorChangeTarget.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance), 0.0));
			#if CHANGECOLOR2_ON
			dif = abs(currChangeColor - _ColorChangeTarget2.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol2.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance2), 0.0));
			#endif
			#if CHANGECOLOR3_ON
			dif = abs(currChangeColor - _ColorChangeTarget3.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol3.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance3), 0.0));
			#endif
		#endif
		//-------------------------------------------------------

		//POSTERIZE_ON && !POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif
		//------------------------------------

		//HSV_ON
		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
			+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
			+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
			+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
			+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif
		//-------------------------------------------------------

		//OVERLAY_ON
		#if OVERLAY_ON
			half2 overlayUvs = d.texcoord0.xy;
			overlayUvs.x += ((_Time.y + randomSeed) * _OverlayTextureScrollXSpeed) % 1;
			overlayUvs.y += ((_Time.y + randomSeed) * _OverlayTextureScrollYSpeed) % 1;
			half4 overlayCol = SAMPLE_TEXTURE2D(_OverlayTex, sampler_OverlayTex, TRANSFORM_TEX(overlayUvs, _OverlayTex));
			overlayCol.rgb *= _OverlayColor.rgb * _OverlayGlow;
			#if !OVERLAYMULT_ON
				overlayCol.rgb *= overlayCol.a * _OverlayColor.rgb * _OverlayColor.a * _OverlayBlend;
				col.rgb += overlayCol.rgb;
			#else
				overlayCol.a *= _OverlayColor.a;
				col = lerp(col, col * overlayCol, _OverlayBlend);
			#endif
		#endif

		//---------------------------------

		//OUTBASE_ON
		#if OUTBASE_ON
			#if OUTBASEPIXELPERF_ON
				half2 destUv = half2(_OutlinePixelWidth * _MainTex_TexelSize.x, _OutlinePixelWidth * _MainTex_TexelSize.y);
			#else
				half2 destUv = half2(_OutlineWidth * _MainTex_TexelSize.x * 200, _OutlineWidth * _MainTex_TexelSize.y * 200);
			#endif

			#if OUTDIST_ON
				d.texcoord3.x += ((_Time.x + _RandomSeed) * _OutlineDistortTexXSpeed) % 1;
				d.texcoord3.y += ((_Time.x + _RandomSeed) * _OutlineDistortTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord3 = half2((d.texcoord3.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord3.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half outDistortAmnt = (SAMPLE_TEXTURE2D(_OutlineDistortTex, sampler_OutlineDistortTex, d.texcoord3).r - 0.5) * 0.2 * _OutlineDistortAmount;
				destUv.x += outDistortAmnt;
				destUv.y += outDistortAmnt;
			#endif

			half spriteLeft		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, 0)).a;
			half spriteRight	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(destUv.x, 0)).a;
			half spriteBottom	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(0, destUv.y)).a;
			half spriteTop		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(0, destUv.y)).a;
			half result = spriteLeft + spriteRight + spriteBottom + spriteTop;

			#if OUTBASE8DIR_ON
				half spriteTopLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, destUv.y)).a;
				half spriteTopRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, destUv.y)).a;
				half spriteBotLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, -destUv.y)).a;
				half spriteBotRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, -destUv.y)).a;
				result = result + spriteTopLeft + spriteTopRight + spriteBotLeft + spriteBotRight;
			#endif
					
			result = step(0.05, saturate(result));

			#if OUTTEX_ON
				d.texcoord1.x += ((_Time.x + _RandomSeed) * _OutlineTexXSpeed) % 1;
				d.texcoord1.y += ((_Time.x + _RandomSeed) * _OutlineTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord1 = half2((d.texcoord1.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half4 tempOutColor = SAMPLE_TEXTURE2D(_OutlineTex, sampler_OutlineTex, d.texcoord1);
				tempOutColor *= _OutlineColor;
				_OutlineColor = tempOutColor;
			#endif

			result *= (1 - originalAlpha) * _OutlineAlpha;

			half4 outline = _OutlineColor * d.vertexColor.a;
			outline.rgb *= _OutlineGlow;
			outline.a = result;
			#if ONLYOUTLINE_ON
			col = outline;
			#else
			col = lerp(col, outline, result);
			#endif
		#endif
		//-------------------------------------------------------

		//FADE_ON
		#if FADE_ON
			half2 tiledUvFade1	= TRANSFORM_TEX(d.texcoord0, _FadeTex);
			half2 tiledUvFade2	= TRANSFORM_TEX(d.texcoord0, _FadeBurnTex);
			#if ATLAS_ON
				tiledUvFade1 = half2((tiledUvFade1.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				tiledUvFade2 = half2((tiledUvFade2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half fadeTemp = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
			half fade = smoothstep(_FadeAmount, _FadeAmount + _FadeBurnTransition, fadeTemp);
			half fadeBurn = saturate(smoothstep(_FadeAmount - _FadeBurnWidth, _FadeAmount - _FadeBurnWidth + 0.1, fadeTemp) * _FadeAmount);
			col.a *= fade;
			_FadeBurnColor.rgb *= _FadeBurnGlow;
			col += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2) * _FadeBurnColor * originalAlpha * (1 - col.a);
		#endif
		//-------------------------------------------------------

		//SHADOW_ON
		#if SHADOW_ON
			half shadowA = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ShadowX, _ShadowY)).a;
			half preMultShadowMask = 1 - (saturate(shadowA - col.a) * (1 - col.a));
			col.rgb *= 1 - ((shadowA - col.a) * (1 - col.a));
			col.rgb += (_ShadowColor * shadowA) * (1 - col.a);
			col.a = max(shadowA * _ShadowAlpha * d.vertexColor.a, col.a);
		#endif

		//-------------------------------------------------------

		//GLOW_ON
		#if GLOW_ON
			half4 emission;
			#if GLOWTEX_ON
				emission = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, d.texcoord0);
			#else
				emission = col;
			#endif

			col.rgb *= _GlowGlobal;
			emission.rgb *= emission.a * col.a * _Glow * _GlowColor;
			col.rgb += emission.rgb;
		#endif
		//-------------------------------------------------------

		//COLORRAMP_ON && COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && COLORRAMPOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//---------------

		//GREYSCALE_ON && GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif

		//-----------------------------------

		//POSTERIZE_ON && POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif

		//-----------------------------------

		//SHINE_ON
		#if SHINE_ON
			half2 uvShine = uvRect;
			half cosAngle = cos(_ShineRotate);
			half sinAngle = sin(_ShineRotate);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvShine -= half2(0.5, 0.5);
			uvShine = mul(rot, uvShine);
			uvShine += half2(0.5, 0.5);
			half shineMask = SAMPLE_TEXTURE2D(_ShineMask, sampler_ShineMask, d.texcoord0.xy).a;
			half currentDistanceProjection = (uvShine.x + uvShine.y) / 2;
			half whitePower = 1 - (abs(currentDistanceProjection - _ShineLocation) / _ShineWidth);
			col.rgb +=  col.a * whitePower * _ShineGlow * max(sign(currentDistanceProjection - (_ShineLocation - _ShineWidth)), 0.0)
			* max(sign((_ShineLocation + _ShineWidth) - currentDistanceProjection), 0.0) * _ShineColor * shineMask;
		#endif

		//-----------------------------------

		//HOLOGRAM_ON
		#if HOLOGRAM_ON
			half totalHologram = _HologramStripesAmount + _HologramUnmodAmount;
			half hologramYCoord = ((uvRect.y + (((_Time.x + randomSeed) % 1) * _HologramStripesSpeed)) % totalHologram) / totalHologram;
			hologramYCoord = abs(hologramYCoord);
			half alpha = RemapFloat(saturate(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0, 1.0, _HologramMinAlpha, saturate(_HologramMaxAlpha));
			half hologramMask = max(sign((_HologramUnmodAmount/totalHologram) - hologramYCoord), 0.0);
			half4 hologramResult = col;
			hologramResult.a *= lerp(alpha, 1, hologramMask);
			hologramResult.rgb *= max(1, _HologramMaxAlpha * max(sign(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0));
			hologramMask = 1 - step(0.01,hologramMask);
			hologramResult.rgb += hologramMask * _HologramStripeColor * col.a;
			col = lerp(col, hologramResult, _HologramBlend);
		#endif

		//-----------------------------------

		//FLICKER_ON
		#if FLICKER_ON
			col.a *= saturate(col.a * step(frac(0.05 + (_Time.w + randomSeed) * _FlickerFreq), 1 - _FlickerPercent) + _FlickerAlpha);
		#endif
		//-----------------------------------

		//ALPHACUTOFF_ON

		//ALPHAROUND_ON

		//ALPHAOUTLINE_ON
		#if ALPHAOUTLINE_ON
			half alphaOutlineRes = pow(1 - col.a, max(_AlphaOutlinePower, 0.0001)) * step(_AlphaOutlineMinAlpha, col.a) * _AlphaOutlineBlend;
			col.rgb = lerp(col.rgb, _AlphaOutlineColor.rgb * _AlphaOutlineGlow, alphaOutlineRes);
			col.a = lerp(col.a, 1, alphaOutlineRes > 1);
		#endif
		//-------------------------------------------------------

		//FOG_ON

		//------------------

        col *= _Color;
		o.Albedo = col;
		col.a *= _Alpha;
        clip(col.a - _AlphaCutoffValue - 0.01);
		o.Alpha = col.a;
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


         


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
             d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenPos = i.screenPos;
            // d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

         
         #if defined(_PASSSHADOW)
            float3 _LightDirection;
            float3 _LightPosition;
         #endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           
           VertexToPixel o = (VertexToPixel)0;

           UNITY_SETUP_INSTANCE_ID(v);
           UNITY_TRANSFER_INSTANCE_ID(v, o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

            o.texcoord0 = v.texcoord0;
            o.texcoord1 = v.texcoord1;
            o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
            o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif
           
           VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);
           o.worldPos = TransformObjectToWorld(v.vertex.xyz);
           o.worldNormal = TransformObjectToWorldNormal(v.normal);
           o.worldTangent = float4(TransformObjectToWorldDir(v.tangent.xyz), v.tangent.w);

          // For some very odd reason, in 2021.2, we can't use Unity's defines, but have to use our own..
          #if _PASSSHADOW
              #if _CASTING_PUNCTUAL_LIGHT_SHADOW
                 float3 lightDirectionWS = normalize(_LightPosition - o.worldPos);
              #else
                 float3 lightDirectionWS = _LightDirection;
              #endif
              // Define shadow pass specific clip position for Universal
              o.pos = TransformWorldToHClip(ApplyShadowBias(o.worldPos, o.worldNormal, lightDirectionWS));
              #if UNITY_REVERSED_Z
                  o.pos.z = min(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #else
                  o.pos.z = max(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #endif
          #elif _PASSMETA
              o.pos = MetaVertexPosition(float4(v.vertex.xyz, 0), v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
          #else
              o.pos = TransformWorldToHClip(o.worldPos);
          #endif

          // #if %SCREENPOSREQUIREKEY%
          // o.screenPos = ComputeScreenPos(o.pos, _ProjectionParams.x);
          // #endif

          #if _PASSFORWARD || _PASSGBUFFER
              float2 uv1 = v.texcoord1.xy;
              OUTPUT_LIGHTMAP_UV(uv1, unity_LightmapST, o.lightmapUV);
               o.texcoord1.xy = uv1;
              OUTPUT_SH(o.worldNormal, o.sh);
              #if defined(DYNAMICLIGHTMAP_ON)
                   o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
              #endif
          #endif

          #ifdef VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
              half fogFactor = 0;
              #if defined(_FOG_FRAGMENT)
                fogFactor = ComputeFogFactor(o.pos.z);
              #endif
              #if _BAKEDLIT
                 o.fogFactorAndVertexLight = half4(fogFactor, 0, 0, 0);
              #else
                 half3 vertexLight = VertexLighting(o.worldPos, o.worldNormal);
                 o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
              #endif
          #endif

          #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
             o.shadowCoord = GetShadowCoord(vertexInput);
          #endif

           return o;
         }


         

#if _UNLIT
   #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Unlit.hlsl"  
#endif

         // fragment shader
         void Frag (VertexToPixel IN
              , out half4 outColor : SV_Target0
            #ifdef _WRITE_RENDERING_LAYERS
              , out float4 outRenderingLayers : SV_Target1
            #endif
            #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
            #endif
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
         )
         {
           UNITY_SETUP_INSTANCE_ID(IN);
           UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

           #if defined(LOD_FADE_CROSSFADE)
              LODFadeCrossFade(IN.pos);
           #endif


           ShaderData d = CreateShaderData(IN
                  #if NEED_FACING
                     , facing
                  #endif
               );
           Surface l = (Surface)0;

           #ifdef _DEPTHOFFSET_ON
              l.outputDepth = outputDepth;
           #endif

           l.Albedo = half3(0.5, 0.5, 0.5);
           l.Normal = float3(0,0,1);
           l.Occlusion = 1;
           l.Alpha = 1;

           ChainSurfaceFunction(l, d);

           #ifdef _DEPTHOFFSET_ON
              outputDepth = l.outputDepth;
           #endif

           #if _USESPECULAR || _SIMPLELIT
              float3 specular = l.Specular;
              float metallic = 1;
           #else   
              float3 specular = 0;
              float metallic = l.Metallic;
           #endif


            
           
            InputData inputData = (InputData)0;

            inputData.positionWS = IN.worldPos;
            #if _WORLDSPACENORMAL
              inputData.normalWS = l.Normal;
            #else
              inputData.normalWS = normalize(TangentToWorldSpace(d, l.Normal));
            #endif

            inputData.viewDirectionWS = SafeNormalize(d.worldSpaceViewDir);


            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
                  inputData.shadowCoord = IN.shadowCoord;
            #elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
                  inputData.shadowCoord = TransformWorldToShadowCoord(IN.worldPos);
            #else
                  inputData.shadowCoord = float4(0, 0, 0, 0);
            #endif
            
#if _BAKEDLIT
            inputData.fogCoord = IN.fogFactorAndVertexLight.x;
            inputData.vertexLighting = 0;
#else
            inputData.fogCoord = InitializeInputDataFog(float4(IN.worldPos, 1.0), IN.fogFactorAndVertexLight.x);
            inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
#endif    



            #if defined(_OVERRIDE_BAKEDGI)
               inputData.bakedGI = l.DiffuseGI;
               l.Emission += l.SpecularGI;
            #elif _BAKEDLIT
               inputData.bakedGI = SAMPLE_GI(IN.lightmapUV, IN.sh, inputData.normalWS);
            #else
               #if defined(DYNAMICLIGHTMAP_ON)
                  inputData.bakedGI = SAMPLE_GI(IN.lightmapUV, IN.dynamicLightmapUV.xy, IN.sh, inputData.normalWS);
               #else
                  inputData.bakedGI = SAMPLE_GI(IN.lightmapUV, IN.sh, inputData.normalWS);
               #endif
            #endif
            inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.pos);
            #if !_BAKEDLIT
               inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUV);
           
               #if defined(_OVERRIDE_SHADOWMASK)
                  float4 mulColor = saturate(dot(l.ShadowMask, _MainLightOcclusionProbes)); //unity_OcclusionMaskSelector));
                  inputData.shadowMask = mulColor;
               #endif
            #else
               inputData.shadowMask = float4(1,1,1,1);
            #endif

            #if defined(DEBUG_DISPLAY)
                #if defined(DYNAMICLIGHTMAP_ON)
                  inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
                #endif
                #if defined(LIGHTMAP_ON)
                  inputData.staticLightmapUV = IN.lightmapUV;
                #else
                  inputData.vertexSH = IN.sh;
                #endif
            #endif

            #if _WORLDSPACENORMAL
              float3 normalTS = WorldToTangentSpace(d, l.Normal);
            #else
              float3 normalTS = l.Normal;
            #endif

            SurfaceData surface         = (SurfaceData)0;
            surface.albedo              = l.Albedo;
            surface.metallic            = saturate(metallic);
            surface.specular            = specular;
            surface.smoothness          = saturate(l.Smoothness),
            surface.occlusion           = l.Occlusion,
            surface.emission            = l.Emission,
            surface.alpha               = saturate(l.Alpha);
            surface.clearCoatMask       = 0;
            surface.clearCoatSmoothness = 1;

            #ifdef _CLEARCOAT
                  surface.clearCoatMask       = saturate(l.CoatMask);
                  surface.clearCoatSmoothness = saturate(l.CoatSmoothness);
            #endif

            #if !_UNLIT
               half4 color = half4(l.Albedo, l.Alpha);
               #ifdef _DBUFFER
                  #if _BAKEDLIT
                     half3 bakeColor = color.rgb;
                     float3 bakeNormal = inputData.normalWS.xyz;
                     ApplyDecalToBaseColorAndNormal(IN.pos, bakeColor, bakeNormal);
                     color.rgb = bakeColor;
                     inputData.normalWS.xyz = bakeNormal;
                  #else
                     ApplyDecalToSurfaceData(IN.pos, surface, inputData);
                  #endif
               #endif
               #if _SIMPLELIT
                  color = UniversalFragmentBlinnPhong(
                     inputData,
                     surface);
               #elif _BAKEDLIT
                  color = UniversalFragmentBakedLit(inputData, color.rgb, color.a, normalTS);
               #else
                  color = UniversalFragmentPBR(inputData, surface);
               #endif

               #if !DISABLEFOG
                  color.rgb = MixFog(color.rgb, inputData.fogCoord);
               #endif

            #else // unlit
               #ifdef _DBUFFER
                  ApplyDecalToSurfaceData(IN.pos, surface, inputData);
               #endif
               half4 color = UniversalFragmentUnlit(inputData, l.Albedo, l.Alpha);
               #if !DISABLEFOG
                  color.rgb = MixFog(color.rgb, inputData.fogCoord);
               #endif
            #endif
            ChainFinalColorForward(l, d, color);

            outColor = color;

            #ifdef _WRITE_RENDERING_LAYERS
                uint renderingLayers = GetMeshRenderingLayer();
                outRenderingLayers = float4(EncodeMeshRenderingLayer(renderingLayers), 0, 0, 0);
            #endif

         }

         ENDHLSL

      }


      
        Pass
        {
            Name "GBuffer"
            Tags
            {
               "LightMode" = "UniversalGBuffer"
            }
           
             Blend One Zero
             ZTest LEqual
             ZWrite On

            	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" "PreviewType" = "Plane" }
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	Blend SrcAlpha OneMinusSrcAlpha


            HLSLPROGRAM

               #pragma vertex Vert
   #pragma fragment Frag

            #pragma target 3.0

            #pragma prefer_hlslcc gles
            #pragma exclude_renderers d3d11_9x
            #pragma multi_compile_instancing
            #pragma multi_compile_fog
            #pragma instancing_options renderinglayer
            #pragma multi_compile _ DOTS_INSTANCING_ON
            
            #pragma multi_compile _ LIGHTMAP_ON
            #pragma multi_compile _ DYNAMICLIGHTMAP_ON
            #pragma multi_compile _ DIRLIGHTMAP_COMBINED
            #pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
            #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
            #pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
            #pragma multi_compile_fragment _ _SHADOWS_SOFT
            #pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
            #pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
            #pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
            #pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
            #pragma multi_compile_fragment _ _WRITE_RENDERING_LAYERS
            #pragma multi_compile_fragment _ _RENDER_PASS_ENABLED
            #pragma multi_compile_fragment _ DEBUG_DISPLAY
            #pragma multi_compile _ SHADOWS_SHADOWMASK
            #pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
        

            #define _FOG_FRAGMENT 1

            #define VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
            #define SHADERPASS SHADERPASS_GBUFFER
            #define _PASSGBUFFER 1

            
	#pragma shader_feature_local GLOW_ON
	#pragma shader_feature_local FADE_ON
	#pragma shader_feature_local OUTBASE_ON
	#pragma shader_feature_local ONLYOUTLINE_ON
	#pragma shader_feature_local GRADIENT_ON
	#pragma shader_feature_local GRADIENT2COL_ON
	#pragma shader_feature_local RADIALGRADIENT_ON
	#pragma shader_feature_local COLORSWAP_ON
	#pragma shader_feature_local HSV_ON
	#pragma shader_feature_local CHANGECOLOR_ON
	#pragma shader_feature_local CHANGECOLOR2_ON
	#pragma shader_feature_local CHANGECOLOR3_ON
	#pragma shader_feature_local COLORRAMP_ON
	#pragma shader_feature_local GRADIENTCOLORRAMP_ON
	#pragma shader_feature_local HITEFFECT_ON
	#pragma shader_feature_local NEGATIVE_ON
	#pragma shader_feature_local PIXELATE_ON
	#pragma shader_feature_local GREYSCALE_ON
	#pragma shader_feature_local POSTERIZE_ON
	#pragma shader_feature_local BLUR_ON
	#pragma shader_feature_local MOTIONBLUR_ON
	#pragma shader_feature_local GHOST_ON
	#pragma shader_feature_local ALPHAOUTLINE_ON
	#pragma shader_feature_local INNEROUTLINE_ON
	#pragma shader_feature_local ONLYINNEROUTLINE_ON
	#pragma shader_feature_local HOLOGRAM_ON
	#pragma shader_feature_local CHROMABERR_ON
	#pragma shader_feature_local GLITCH_ON
	#pragma shader_feature_local FLICKER_ON
	#pragma shader_feature_local SHADOW_ON
	#pragma shader_feature_local SHINE_ON
	#pragma shader_feature_local CONTRAST_ON
	#pragma shader_feature_local OVERLAY_ON
	#pragma shader_feature_local OVERLAYMULT_ON
	#pragma shader_feature_local DOODLE_ON
	#pragma shader_feature_local WIND_ON
	#pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
	#pragma shader_feature_local RECTSIZE_ON
	#pragma shader_feature_local OFFSETUV_ON
	#pragma shader_feature_local CLIPPING_ON
	#pragma shader_feature_local RADIALCLIPPING_ON
	#pragma shader_feature_local TEXTURESCROLL_ON
	#pragma shader_feature_local ZOOMUV_ON
	#pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local WARP_ON
	#pragma shader_feature_local TWISTUV_ON
	#pragma shader_feature_local ROTATEUV_ON
	#pragma shader_feature_local POLARUV_ON
	#pragma shader_feature_local FISHEYE_ON
	#pragma shader_feature_local PINCH_ON
	#pragma shader_feature_local SHAKEUV_ON

	#pragma shader_feature_local GLOWTEX_ON
	#pragma shader_feature_local OUTTEX_ON
	#pragma shader_feature_local OUTDIST_ON
	#pragma shader_feature_local OUTBASE8DIR_ON
	#pragma shader_feature_local OUTBASEPIXELPERF_ON
	#pragma shader_feature_local COLORRAMPOUTLINE_ON
	#pragma shader_feature_local GREYSCALEOUTLINE_ON
	#pragma shader_feature_local POSTERIZEOUTLINE_ON
	#pragma shader_feature_local BLURISHD_ON
	#pragma shader_feature_local MANUALWIND_ON
	#pragma shader_feature_local ATLAS_ON
	#pragma shader_feature_local PREMULTIPLYALPHA_ON

	#pragma shader_feature BILBOARD_ON
	#pragma shader_feature BILBOARDY_ON

	#pragma shader_feature NORMALMAP_ON


   #define _URP 1
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


            

            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            

            

                  #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)
      
      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)

      #define _WorldSpaceLightPos0 _MainLightPosition
      
      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(name) TEXTURE2D_ARRAY(name);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)
     
      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      

      // data across stages, stripped like the above.
      struct VertexToPixel
      {
         float4 pos : SV_POSITION;
         float3 worldPos : TEXCOORD0;
         float3 worldNormal : TEXCOORD1;
         float4 worldTangent : TEXCOORD2;
          float4 texcoord0 : TEXCOORD3;
          float4 texcoord1 : TEXCOORD4;
          float4 texcoord2 : TEXCOORD5;

         // #if %TEXCOORD3REQUIREKEY%
          float4 texcoord3 : TEXCOORD6;
         // #endif

         // #if %SCREENPOSREQUIREKEY%
         // float4 screenPos : TEXCOORD7;
         // #endif

         // #if %VERTEXCOLORREQUIREKEY%
          half4 vertexColor : COLOR;
         // #endif

         #if defined(LIGHTMAP_ON)
            float2 lightmapUV : TEXCOORD8;
         #endif
         #if defined(DYNAMICLIGHTMAP_ON)
            float2 dynamicLightmapUV : TEXCOORD9;
         #endif
         #if !defined(LIGHTMAP_ON)
            float3 sh : TEXCOORD10;
         #endif

         #if defined(VARYINGS_NEED_FOG_AND_VERTEX_LIGHT)
            float4 fogFactorAndVertexLight : TEXCOORD11;
         #endif

         #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
           float4 shadowCoord : TEXCOORD12;
         #endif

         // #if %EXTRAV2F0REQUIREKEY%
         // float4 extraV2F0 : TEXCOORD13;
         // #endif

         // #if %EXTRAV2F1REQUIREKEY%
         // float4 extraV2F1 : TEXCOORD14;
         // #endif

         // #if %EXTRAV2F2REQUIREKEY%
         // float4 extraV2F2 : TEXCOORD15;
         // #endif

         // #if %EXTRAV2F3REQUIREKEY%
         // float4 extraV2F3 : TEXCOORD16;
         // #endif

         // #if %EXTRAV2F4REQUIREKEY%
         // float4 extraV2F4 : TEXCOORD17;
         // #endif

         // #if %EXTRAV2F5REQUIREKEY%
         // float4 extraV2F5 : TEXCOORD18;
         // #endif

         // #if %EXTRAV2F6REQUIREKEY%
         // float4 extraV2F6 : TEXCOORD19;
         // #endif

         // #if %EXTRAV2F7REQUIREKEY%
         // float4 extraV2F7 : TEXCOORD20;
         // #endif

         #if UNITY_ANY_INSTANCING_ENABLED
         uint instanceID : CUSTOM_INSTANCE_ID;
         #endif
         #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
         uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
         #endif
         #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
         uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
         #endif
         #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
         FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
         #endif


      };



            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
            CBUFFER_START(UnityPerMaterial)

               
	half4 _Color;
	half4 _MainTex_ST, _MainTex_TexelSize;
	half _Alpha, _AlphaCutoffValue;

	#if ATLAS_ON
		half _MinXUV, _MaxXUV, _MinYUV, _MaxYUV;
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
	#endif
	 
	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if FADE_ON
		half4 _FadeBurnColor, _FadeTex_ST, _FadeBurnTex_ST;
		half _FadeAmount, _FadeBurnWidth, _FadeBurnTransition,_FadeBurnGlow;
	#endif

	#if OUTBASE_ON
		half4 _OutlineColor;
		half _OutlineAlpha, _OutlineGlow, _OutlineWidth;
		int _OutlinePixelWidth;
	#endif

	#if OUTTEX_ON
		half4 _OutlineTex_ST;
		half _OutlineTexXSpeed, _OutlineTexYSpeed;
	#endif

	#if OUTDIST_ON
		half4 _OutlineDistortTex_ST;
		half _OutlineDistortTexXSpeed, _OutlineDistortTexYSpeed, _OutlineDistortAmount;
	#endif

	#if ALPHAOUTLINE_ON
		half _AlphaOutlineGlow, _AlphaOutlinePower, _AlphaOutlineMinAlpha, _AlphaOutlineBlend;
		half4 _AlphaOutlineColor;
	#endif

	#if INNEROUTLINE_ON
		half _InnerOutlineThickness, _InnerOutlineAlpha, _InnerOutlineGlow;
		half4 _InnerOutlineColor;
	#endif

	#if GRADIENT_ON
		half _GradBlend, _GradBoostX, _GradBoostY;
		half4 _GradTopRightCol, _GradTopLeftCol, _GradBotRightCol, _GradBotLeftCol;
	#endif

	#if COLORSWAP_ON
		half4 _ColorSwapRed, _ColorSwapGreen, _ColorSwapBlue;
		half _ColorSwapRedLuminosity, _ColorSwapGreenLuminosity, _ColorSwapBlueLuminosity, _ColorSwapBlend;
	#endif

	#if CHANGECOLOR_ON
		half4 _ColorChangeNewCol, _ColorChangeTarget;
		half _ColorChangeTolerance, _ColorChangeLuminosity;
	#endif
	#if CHANGECOLOR2_ON
		half4 _ColorChangeNewCol2, _ColorChangeTarget2;
		half _ColorChangeTolerance2;
	#endif
	#if CHANGECOLOR3_ON
		half4 _ColorChangeNewCol3, _ColorChangeTarget3;
		half _ColorChangeTolerance3;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if HITEFFECT_ON
		half4 _HitEffectColor;
		half _HitEffectGlow, _HitEffectBlend;
	#endif

	#if NEGATIVE_ON
		half _NegativeAmount;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if GREYSCALE_ON
		half _GreyscaleLuminosity, _GreyscaleBlend;
		half4 _GreyscaleTintColor;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors, _PosterizeGamma;
	#endif

	#if BLUR_ON
		half _BlurIntensity;
	#endif

	#if MOTIONBLUR_ON
		half _MotionBlurAngle, _MotionBlurDist;
	#endif

	#if GHOST_ON
		half _GhostColorBoost, _GhostTransparency, _GhostBlend;
	#endif

	#if HOLOGRAM_ON
		half _HologramStripesAmount, _HologramMinAlpha, _HologramUnmodAmount, _HologramStripesSpeed, _HologramMaxAlpha, _HologramBlend;
		half4 _HologramStripeColor;
	#endif

	#if CHROMABERR_ON
		half _ChromAberrAmount, _ChromAberrAlpha;
	#endif

	#if GLITCH_ON
		half _GlitchAmount, _GlitchSize;
	#endif

	#if FLICKER_ON
		half _FlickerFreq, _FlickerPercent, _FlickerAlpha;
	#endif

	#if SHADOW_ON
		half _ShadowX, _ShadowY, _ShadowAlpha;
		half4 _ShadowColor;
	#endif

	#if SHINE_ON
		half4 _ShineColor;
		half _ShineLocation, _ShineRotate, _ShineWidth, _ShineGlow;
	#endif

	#if CONTRAST_ON
		half _Contrast, _Brightness;
	#endif

	#if OVERLAY_ON
		half4 _OverlayTex_ST, _OverlayColor;
		half _OverlayGlow, _OverlayBlend, _OverlayTextureScrollXSpeed, _OverlayTextureScrollYSpeed;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if WIND_ON
		half _GrassSpeed, _GrassWind, _GrassManualAnim, _GrassRadialBend;
	#endif

	#if WAVEUV_ON
		float _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if RECTSIZE_ON
		half _RectSize;
	#endif

	#if OFFSETUV_ON
		half _OffsetUvX, _OffsetUvY;
	#endif

	#if CLIPPING_ON
		half _ClipUvLeft, _ClipUvRight, _ClipUvUp, _ClipUvDown;
	#endif

	#if RADIALCLIPPING_ON
		half _RadialStartAngle, _RadialClip, _RadialClip2;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if ZOOMUV_ON
		half _ZoomUvAmount;
	#endif

	#if WARP_ON
		half _WarpStrength, _WarpSpeed, _WarpScale;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if ROTATEUV_ON
		half _RotateUvAmount;
	#endif

	#if FISHEYE_ON
		half _FishEyeUvAmount;
	#endif

	#if PINCH_ON
		half _PinchUvAmount;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif

	float _RandomSeed;




            CBUFFER_END

            

            

            
	
	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if GLOW_ON
		TEXTURE2D(_GlowTex);
		SAMPLER(sampler_GlowTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);

		TEXTURE2D(_FadeBurnTex);
		SAMPLER(sampler_FadeBurnTex);
	#endif

	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);	
	#endif

	#if OUTTEX_ON
		TEXTURE2D(_OutlineTex);
		SAMPLER(sampler_OutlineTex);
	#endif

	#if OUTDIST_ON
		TEXTURE2D(_OutlineDistortTex);
		SAMPLER(sampler_OutlineDistortTex);
	#endif

	#if COLORSWAP_ON
		TEXTURE2D(_ColorSwapTex);
		SAMPLER(sampler_ColorSwapTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTex);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif

	#if SHINE_ON
		TEXTURE2D(_ShineMask);
		SAMPLER(sampler_ShineMask);
	#endif

	#if OVERLAY_ON
		TEXTURE2D(_OverlayTex);
		SAMPLER(sampler_OverlayTex);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif


	half3 GetPixel(in int offsetX, in int offsetY, in half2 uv, in Texture2D _tex, in SamplerState _sampler)
	{
		half2 _uv = uv + half2(offsetX * _MainTex_TexelSize.x, offsetY * _MainTex_TexelSize.y);
		half4 col = SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
		return col.rgb;
	}


	//BLURS-------------------------------------------------------------------------
	half4 Blur(half2 uv, Texture2D source, SamplerState sampler_source, half Intensity)
	{
		const half2 texelSize = 1.0 / _ScreenParams.xy;
		const half4 color = SAMPLE_TEXTURE2D(source, sampler_source, uv);
		const half2 offset = Intensity * texelSize;

		half4 accumulatedColor = color;
		half accumulatedWeight = 1.0;
		for (int x = -1; x <= 1; x++)
		{
			for (int y = -1; y <= 1; y++)
			{
				const half2 sampleUV = uv + half2(x, y) * offset;
				const half4 sampleColor = SAMPLE_TEXTURE2D(source, sampler_source, sampleUV);

				accumulatedColor += sampleColor;
				accumulatedWeight += 1.0;
			}
		}

		half4 blurredColor = accumulatedColor / accumulatedWeight;
		return blurredColor;
	}

	half BlurHD_G(half bhqp, half x)
	{
		return exp(-(x * x) / (2.0 * bhqp * bhqp));
	}
	half4 BlurHD(half2 uv, Texture2D source, SamplerState sampler_source, half BlurAmount, half xScale, half yScale)
	{
		int iterations = 16;
		int halfIterations = iterations / 2;
		half sigmaX = 0.1 + BlurAmount * 0.5;
		half sigmaY = sigmaX;
		half total = 0.0;
		half4 ret = half4(0, 0, 0, 0);
		for (int iy = 0; iy < iterations; ++iy)
		{
			half fy = BlurHD_G(sigmaY, half(iy) -half(halfIterations));
			half offsetY = half(iy - halfIterations) * 0.00390625 * xScale;
			for (int ix = 0; ix < iterations; ++ix)
			{
				half fx = BlurHD_G(sigmaX, half(ix) - half(halfIterations));
				half offsetX = half(ix - halfIterations) * 0.00390625 * yScale;
				total += fx * fy;
				ret += SAMPLE_TEXTURE2D(source, sampler_source, uv + half2(offsetX, offsetY)) * fx * fy;
			}
		}
		return ret / total;
	}
	//-----------------------------------------------------------------------


	//-------------------------------------------
	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax){
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}
	//-------------------------------------------

	//-----------------------------------------------------------------------
	half rand(half2 seed, half offset) {
		return (frac(sin(dot(seed, half2(12.9898, 78.233))) * 43758.5453) + offset) % 1.0;
	}

	half rand2(half2 seed, half offset) {
		return (frac(sin(dot(seed * floor(50 + (_Time.x % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}

	half rand2CustomTime(half2 seed, half offset, half customTime) {
		return (frac(sin(dot(seed * floor(50 + (customTime % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}
	//-----------------------------------------------------------------------


	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//BILBOARD_ON
		#if BILBOARD_ON
			half3 camRight = mul((half3x3)unity_CameraToWorld, half3(1,0,0));
			half3 camUp = half3(0,1,0);
			#if BILBOARDY_ON
				camUp = mul((half3x3)unity_CameraToWorld, half3(0,1,0));
			#endif
			half3 localPos = v.vertex.x * camRight + v.vertex.y * camUp;
			v.vertex = half4(localPos, 1);
		#endif
        //-----------------------------------------------------------

        v.texcoord0.xy = TRANSFORM_TEX(v.texcoord0.xy, _MainTex);
		half2 center = half2(0.5, 0.5);
        #if ATLAS_ON
		    center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
		#endif
		
		//POLARUV_ON
		#if POLARUV_ON
			v.texcoord0.xy = v.texcoord0.xy - center;
		#endif

		//----------------------------------------

		//ROTATEUV_ON
		#if ROTATEUV_ON
			half2 uvC = v.texcoord0.xy;
			half cosAngle = cos(_RotateUvAmount);
			half sinAngle = sin(_RotateUvAmount);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvC -= center;
			v.texcoord0.xy = mul(rot, uvC);
			v.texcoord0.xy += center;
		#endif
		//--------------------

		#if RECTSIZE_ON
			v.vertex.xyz += (v.vertex.xyz * (_RectSize - 1.0));
		#endif

		#if OUTTEX_ON
			v.texcoord1.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineTex);
		#endif

		#if OUTDIST_ON
			v.texcoord2.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineDistortTex);
		#endif

		#if DISTORT_ON
			v.texcoord3.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		half randomSeed = _RandomSeed;

		float2 uvRect = d.texcoord0;
		half2 center = half2(0.5, 0.5);
		#if ATLAS_ON
			center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
			uvRect = half2((d.texcoord0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord0.y - _MinYUV) / (_MaxYUV - _MinYUV));
		#endif
		half2 centerTiled = half2(center.x *  _MainTex_ST.x, center.y *  _MainTex_ST.y);

		//CLIPPING_ON
		#if CLIPPING_ON
			half2 tiledUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv = half2((tiledUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			clip((1 - _ClipUvUp) - tiledUv.y);
			clip(tiledUv.y - _ClipUvDown);
			clip((1 - _ClipUvRight) - tiledUv.x);
			clip(tiledUv.x - _ClipUvLeft);
		#endif
		//----------------------------------

		//RADIALCLIPPING_ON
		#if RADIALCLIPPING_ON
			half2 tiledUv2 = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv2 = half2((tiledUv2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half startAngle = _RadialStartAngle - _RadialClip;
			half endAngle = _RadialStartAngle + _RadialClip2;
			half offset0 = clamp(0, 360, startAngle + 360);
			half offset360 = clamp(0, 360, endAngle - 360);
			half2 atan2Coord = half2(lerp(-1, 1, tiledUv2.x), lerp(-1, 1, tiledUv2.y));
			half atanAngle = atan2(atan2Coord.y, atan2Coord.x) * 57.3; // angle in degrees
			if(atanAngle < 0) atanAngle = 360 + atanAngle;
			if(atanAngle >= startAngle && atanAngle <= endAngle) discard;
			if(atanAngle <= offset360) discard;
			if(atanAngle >= offset0) discard;
		#endif

		//-----------------------------

		//TEXTURESCROLL_ON && ATLAS_ON
		#if TEXTURESCROLL_ON && ATLAS_ON
			d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs(((_Time.y + randomSeed) * _TextureScrollXSpeed) + uvRect.x) % 1)),
			_MinYUV + ((_MaxYUV - _MinYUV) * (abs(((_Time.y + randomSeed) * _TextureScrollYSpeed) + uvRect.y) % 1)));
		#endif
		//----------------------------

		//OFFSETUV_ON
		#if OFFSETUV_ON
			#if ATLAS_ON
				d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs((_OffsetUvX + uvRect.x) % 1))),
				_MinYUV + ((_MaxYUV - _MinYUV) * (abs(_OffsetUvY + uvRect.y) % 1)));
			#else
				d.texcoord0.xy += half2(_OffsetUvX, _OffsetUvY);
			#endif
		#endif

		//----------------------

		//POLARUV_ON
		#if POLARUV_ON
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (2.0f * 3.141592653589f), length(d.texcoord0.xy));
			d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		//--------------------------------------

		//TWISTUV_ON
		#if TWISTUV_ON
			#if ATLAS_ON
				_TwistUvPosX = ((_MaxXUV - _MinXUV) * _TwistUvPosX) + _MinXUV;
				_TwistUvPosY = ((_MaxYUV - _MinYUV) * _TwistUvPosY) + _MinYUV;
			#endif
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		//--------------------------------------------

		//FISHEYE_ON
		#if FISHEYE_ON
			half bind = length(centerTiled);
			half2 dF = d.texcoord0.xy - centerTiled;
			half dFlen = length(dF);
			half fishInt = (3.14159265359 / bind) * (_FishEyeUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + (dF / (max(0.0001, dFlen))) * tan(dFlen * fishInt) * bind / tan(bind * fishInt);
		#endif
		//---------------------------------------------

		//PINCH_ON
		#if PINCH_ON
			half2 dP = d.texcoord0.xy - centerTiled;
			half pinchInt = (3.141592 / length(centerTiled)) * (-_PinchUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + normalize(dP) * atan(length(dP) * -pinchInt * 10.0) * 0.5 / atan(-pinchInt * 5);
		#endif

		//---------------------------------------------

		//ZOOMUV_ON
		#if ZOOMUV_ON
			d.texcoord0.xy -= centerTiled;
			d.texcoord0.xy = d.texcoord0.xy * _ZoomUvAmount;
			d.texcoord0.xy += centerTiled;
		#endif

		//-----------------------------------------------

		//DOODLE_ON
		#if DOODLE_ON
			half2 uvCopy = uvRect;
			_HandDrawnSpeed = (floor((_Time.x + randomSeed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		//--------------------------

		//SHAKEUV_ON
		#if SHAKEUV_ON
			half xShake = sin((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		//-------------------------------------------

		//RECTSIZE_ON
		#if RECTSIZE_ON
			d.texcoord0.xy = d.texcoord0.xy * (_RectSize).xx + (((-_RectSize * 0.5) + 0.5)).xx;
		#endif

		//-------------------------------------------

		//DISTORT_ON
		#if DISTORT_ON
			#if ATLAS_ON
				d.texcoord3.x = d.texcoord3.x * (1 / (_MaxXUV - _MinXUV));
				d.texcoord3.y = d.texcoord3.y * (1 / (_MaxYUV - _MinYUV)); 
			#endif

			d.texcoord3.x += ((_Time.x + _RandomSeed) * _DistortTexXSpeed) % 1;
			d.texcoord3.y += ((_Time.x + _RandomSeed) * _DistortTexYSpeed) % 1;
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, d.texcoord3.xy).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif
		//-------------------------------------------------------

		//WARP_ON
		#if WARP_ON
            half2 warpUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				warpUv = half2((warpUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (warpUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			const float tau = 6.283185307179586;
            float xWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.x * tau / _WarpScale;
            float yWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.y * tau / _WarpScale;
            float2 warp = float2(sin(xWarp), sin(yWarp)) * _WarpStrength;
            d.texcoord0.xy += warp;
		#endif

		//-------------------------------------------------------

		//WAVEUV_ON
		#if WAVEUV_ON
			float2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
            uvWave %= 1;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
            float waveTime = _Time.y + randomSeed;
			float angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((waveTime *  _WaveSpeed));
			d.texcoord0.xy = d.texcoord0.xy + uvWave * sin(angWave) * (_WaveStrength / 1000.0);
		#endif
		//----------------------------------------------------

		//ROUNDWAVEUV_ON
		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - uvRect.x);
			half yWave = ((0.5 * _MainTex_ST.y) - uvRect.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
			d.texcoord0.xy += (sin((ripple + (_Time.y + randomSeed) * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif
		//----------------------------------------------------


		//WIND_ON
		#if WIND_ON
			half windOffset = sin((_Time.x + randomSeed) * _GrassSpeed * 10);
			half2 windCenter = half2(0.5, 0.1);
			#if ATLAS_ON
				windCenter.x = ((_MaxXUV - _MinXUV) * windCenter.x) + _MinXUV;
				windCenter.y = ((_MaxYUV - _MinYUV) * windCenter.y) + _MinYUV;
			#endif
			#if !MANUALWIND_ON
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * windOffset), uvRect.y)), 1);
			#else
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * _GrassManualAnim), uvRect.y)), 1);
				windOffset = _GrassManualAnim;
			#endif
			half2 delta = d.texcoord0.xy - windCenter;
			half delta2 = dot(delta.xy, delta.xy);
			half2 delta_offset = delta2 * windOffset;
			d.texcoord0.xy = d.texcoord0.xy + half2(delta.y, -delta.x) * delta_offset * _GrassRadialBend;
		#endif

		//--------------------------------------------------------

		//TEXTURESCROLL_ON && !ATLAS_ON
		#if TEXTURESCROLL_ON && !ATLAS_ON
			d.texcoord0.x += ((_Time.y + randomSeed) * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += ((_Time.y + randomSeed) * _TextureScrollYSpeed) % 1;
		#endif
		//------------------------------

		//PIXELATE_ON
		#if PIXELATE_ON
            half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif
		//--------------

		half4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy);
		half originalAlpha = col.a;
		col *= d.vertexColor;

		//NORMAL MAP
		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif
        float normalSign = sign(dot(d.worldSpaceViewDir, d.worldSpaceNormal));
        o.Normal *= normalSign;


		//GLITCH_ON
		#if GLITCH_ON
			half2 uvGlitch = uvRect;
			uvGlitch.y -= 0.5;
			half lineNoise = pow(rand2(floor(uvGlitch * half2(24., 19.) * _GlitchSize) * 4.0, randomSeed), 3.0) * _GlitchAmount
				* pow(rand2(floor(uvGlitch * half2(38., 14.) * _GlitchSize) * 4.0, randomSeed), 3.0);
			col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(lineNoise * 0.02 * rand2(half2(2.0, 1), randomSeed), 0)) * d.vertexColor;
		#endif
		//--------------------------------------

		//CHROMABERR_ON
		#if CHROMABERR_ON
			half4 r = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ChromAberrAmount/10, 0))	* d.vertexColor;
			half4 b = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-_ChromAberrAmount/10, 0)) * d.vertexColor;
			col = half4(r.r * r.a, col.g, b.b * b.a, max(max(r.a, b.a) * _ChromAberrAlpha, col.a));
		#endif

		//--------------------------------

		//BLUR_ON
		#if BLUR_ON
			#if ATLAS_ON
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, (_MaxXUV - _MinXUV), (_MaxYUV - _MinYUV)) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity * (_MaxXUV - _MinXUV)) * d.vertexColor;
				#endif
			#else
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, 1, 1) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity) * d.vertexColor;
				#endif
			#endif
        #endif

		//--------------------

		//MOTIONBLUR_ON
		#if MOTIONBLUR_ON
			_MotionBlurAngle = _MotionBlurAngle * 3.1415926;
			#define rot(n) mul(n, half2x2(cos(_MotionBlurAngle), -sin(_MotionBlurAngle), sin(_MotionBlurAngle), cos(_MotionBlurAngle)))
			_MotionBlurDist = _MotionBlurDist * 0.005;
			#if ATLAS_ON
				_MotionBlurDist *= (_MaxXUV - _MinXUV);
			#endif
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist, -_MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 2, -_MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 3, -_MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 4, -_MotionBlurDist * 4)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist, _MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 2, _MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 3, _MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 4, _MotionBlurDist * 4)));
			col.rgb = col.rgb / 9;
        #endif
		//------------------------------------

		//NEGATIVE_ON
		#if NEGATIVE_ON
			col.rgb = lerp(col.rgb, 1 - col.rgb, _NegativeAmount);
		#endif

		//--------------
		half luminance = 0;

		//GREYSCALE_ON && !GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && !GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif
		//------------------------------------

		//GHOST_ON
		#if GHOST_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 ghostResult;
			ghostResult.a = saturate(luminance - _GhostTransparency) * col.a;
			ghostResult.rgb = col.rgb * (luminance + _GhostColorBoost);
			col = lerp(col, ghostResult, _GhostBlend);
		#endif
		//------------------------------------

		//INNEROUTLINE_ON
		#if INNEROUTLINE_ON
			half3 innerT = abs(GetPixel(0, _InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(0, -_InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex));
			innerT += abs(GetPixel(_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(-_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex));
			#if !ONLYINNEROUTLINE_ON
				innerT = (innerT / 2.0) * col.a * _InnerOutlineAlpha;
				col.rgb += length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
			#else
				innerT *= col.a * _InnerOutlineAlpha;
				col.rgb = length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
				col.a = step(0.3, col.r+col.g+col.b);
			#endif
		#endif
		//-------------------------------------------------------

		//HITEFFECT_ON
		#if HITEFFECT_ON
			col.rgb = lerp(col.rgb, _HitEffectColor.rgb * _HitEffectGlow, _HitEffectBlend);
		#endif
		//--------------------

		//GRADIENT_ON
		#if GRADIENT_ON
			half2 tiledUvGrad = half2(uvRect.x / _MainTex_ST.x, uvRect.y / _MainTex_ST.y);
			#if GRADIENT2COL_ON
				_GradTopRightCol = _GradTopLeftCol;
				_GradBotRightCol = _GradBotLeftCol;
			#endif
			#if RADIALGRADIENT_ON
				half radialDist = 1 - length(tiledUvGrad - half2(0.5, 0.5));
				radialDist *= (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
				radialDist = saturate(_GradBoostX * radialDist);
				half4 gradientResult = lerp(_GradTopLeftCol, _GradBotLeftCol, radialDist);
			#else
				half gradXLerpFactor = saturate(pow(tiledUvGrad.x, _GradBoostX));
				half4 gradientResult = lerp(lerp(_GradBotLeftCol, _GradBotRightCol, gradXLerpFactor),
				lerp(_GradTopLeftCol, _GradTopRightCol, gradXLerpFactor), saturate(pow(tiledUvGrad.y, _GradBoostY)));
			#endif
			gradientResult = lerp(col, gradientResult, _GradBlend);
			col.rgb = gradientResult.rgb * col.a;
			col.a *= gradientResult.a;
		#endif
		//--------------------------------------------------------------------

		//CONTRAST_ON
		#if CONTRAST_ON
			col.rgb = (col.rgb - float3(0.5, 0.5, 0.5)) * _Contrast + float3(0.5, 0.5, 0.5);
			col.rgb += _Brightness;
		#endif

		//-------------------------------------------------------------------

		//COLORSWAP_ON
		#if COLORSWAP_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 swapMask = SAMPLE_TEXTURE2D(_ColorSwapTex, sampler_ColorSwapTex, d.texcoord0.xy);
			swapMask.rgb *= swapMask.a;
			half3 redSwap = _ColorSwapRed * swapMask.r * saturate(luminance + _ColorSwapRedLuminosity);
			half3 greenSwap = _ColorSwapGreen * swapMask.g * saturate(luminance + _ColorSwapGreenLuminosity);
			half3 blueSwap = _ColorSwapBlue * swapMask.b * saturate(luminance + _ColorSwapBlueLuminosity);
			swapMask.rgb = col.rgb * saturate(1 - swapMask.r - swapMask.g - swapMask.b);
			col.rgb = lerp(col.rgb, swapMask.rgb + redSwap + greenSwap + blueSwap, _ColorSwapBlend);
		#endif
		//--------------------------------------------------------------------

		//COLORRAMP_ON && !COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && !COLORRAMPOUTLINE_ON 
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//--------------------------------------------------------------------

		//CHANGECOLOR_ON
		#if CHANGECOLOR_ON
			float3 currChangeColor = saturate(col.rgb);
			luminance = 0.3 * currChangeColor.r + 0.59 * currChangeColor.g + 0.11 * currChangeColor.b;
			luminance = saturate(luminance + _ColorChangeLuminosity);
			half3 dif = abs(currChangeColor - _ColorChangeTarget.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance), 0.0));
			#if CHANGECOLOR2_ON
			dif = abs(currChangeColor - _ColorChangeTarget2.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol2.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance2), 0.0));
			#endif
			#if CHANGECOLOR3_ON
			dif = abs(currChangeColor - _ColorChangeTarget3.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol3.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance3), 0.0));
			#endif
		#endif
		//-------------------------------------------------------

		//POSTERIZE_ON && !POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif
		//------------------------------------

		//HSV_ON
		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
			+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
			+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
			+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
			+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif
		//-------------------------------------------------------

		//OVERLAY_ON
		#if OVERLAY_ON
			half2 overlayUvs = d.texcoord0.xy;
			overlayUvs.x += ((_Time.y + randomSeed) * _OverlayTextureScrollXSpeed) % 1;
			overlayUvs.y += ((_Time.y + randomSeed) * _OverlayTextureScrollYSpeed) % 1;
			half4 overlayCol = SAMPLE_TEXTURE2D(_OverlayTex, sampler_OverlayTex, TRANSFORM_TEX(overlayUvs, _OverlayTex));
			overlayCol.rgb *= _OverlayColor.rgb * _OverlayGlow;
			#if !OVERLAYMULT_ON
				overlayCol.rgb *= overlayCol.a * _OverlayColor.rgb * _OverlayColor.a * _OverlayBlend;
				col.rgb += overlayCol.rgb;
			#else
				overlayCol.a *= _OverlayColor.a;
				col = lerp(col, col * overlayCol, _OverlayBlend);
			#endif
		#endif

		//---------------------------------

		//OUTBASE_ON
		#if OUTBASE_ON
			#if OUTBASEPIXELPERF_ON
				half2 destUv = half2(_OutlinePixelWidth * _MainTex_TexelSize.x, _OutlinePixelWidth * _MainTex_TexelSize.y);
			#else
				half2 destUv = half2(_OutlineWidth * _MainTex_TexelSize.x * 200, _OutlineWidth * _MainTex_TexelSize.y * 200);
			#endif

			#if OUTDIST_ON
				d.texcoord3.x += ((_Time.x + _RandomSeed) * _OutlineDistortTexXSpeed) % 1;
				d.texcoord3.y += ((_Time.x + _RandomSeed) * _OutlineDistortTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord3 = half2((d.texcoord3.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord3.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half outDistortAmnt = (SAMPLE_TEXTURE2D(_OutlineDistortTex, sampler_OutlineDistortTex, d.texcoord3).r - 0.5) * 0.2 * _OutlineDistortAmount;
				destUv.x += outDistortAmnt;
				destUv.y += outDistortAmnt;
			#endif

			half spriteLeft		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, 0)).a;
			half spriteRight	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(destUv.x, 0)).a;
			half spriteBottom	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(0, destUv.y)).a;
			half spriteTop		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(0, destUv.y)).a;
			half result = spriteLeft + spriteRight + spriteBottom + spriteTop;

			#if OUTBASE8DIR_ON
				half spriteTopLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, destUv.y)).a;
				half spriteTopRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, destUv.y)).a;
				half spriteBotLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, -destUv.y)).a;
				half spriteBotRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, -destUv.y)).a;
				result = result + spriteTopLeft + spriteTopRight + spriteBotLeft + spriteBotRight;
			#endif
					
			result = step(0.05, saturate(result));

			#if OUTTEX_ON
				d.texcoord1.x += ((_Time.x + _RandomSeed) * _OutlineTexXSpeed) % 1;
				d.texcoord1.y += ((_Time.x + _RandomSeed) * _OutlineTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord1 = half2((d.texcoord1.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half4 tempOutColor = SAMPLE_TEXTURE2D(_OutlineTex, sampler_OutlineTex, d.texcoord1);
				tempOutColor *= _OutlineColor;
				_OutlineColor = tempOutColor;
			#endif

			result *= (1 - originalAlpha) * _OutlineAlpha;

			half4 outline = _OutlineColor * d.vertexColor.a;
			outline.rgb *= _OutlineGlow;
			outline.a = result;
			#if ONLYOUTLINE_ON
			col = outline;
			#else
			col = lerp(col, outline, result);
			#endif
		#endif
		//-------------------------------------------------------

		//FADE_ON
		#if FADE_ON
			half2 tiledUvFade1	= TRANSFORM_TEX(d.texcoord0, _FadeTex);
			half2 tiledUvFade2	= TRANSFORM_TEX(d.texcoord0, _FadeBurnTex);
			#if ATLAS_ON
				tiledUvFade1 = half2((tiledUvFade1.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				tiledUvFade2 = half2((tiledUvFade2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half fadeTemp = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
			half fade = smoothstep(_FadeAmount, _FadeAmount + _FadeBurnTransition, fadeTemp);
			half fadeBurn = saturate(smoothstep(_FadeAmount - _FadeBurnWidth, _FadeAmount - _FadeBurnWidth + 0.1, fadeTemp) * _FadeAmount);
			col.a *= fade;
			_FadeBurnColor.rgb *= _FadeBurnGlow;
			col += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2) * _FadeBurnColor * originalAlpha * (1 - col.a);
		#endif
		//-------------------------------------------------------

		//SHADOW_ON
		#if SHADOW_ON
			half shadowA = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ShadowX, _ShadowY)).a;
			half preMultShadowMask = 1 - (saturate(shadowA - col.a) * (1 - col.a));
			col.rgb *= 1 - ((shadowA - col.a) * (1 - col.a));
			col.rgb += (_ShadowColor * shadowA) * (1 - col.a);
			col.a = max(shadowA * _ShadowAlpha * d.vertexColor.a, col.a);
		#endif

		//-------------------------------------------------------

		//GLOW_ON
		#if GLOW_ON
			half4 emission;
			#if GLOWTEX_ON
				emission = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, d.texcoord0);
			#else
				emission = col;
			#endif

			col.rgb *= _GlowGlobal;
			emission.rgb *= emission.a * col.a * _Glow * _GlowColor;
			col.rgb += emission.rgb;
		#endif
		//-------------------------------------------------------

		//COLORRAMP_ON && COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && COLORRAMPOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//---------------

		//GREYSCALE_ON && GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif

		//-----------------------------------

		//POSTERIZE_ON && POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif

		//-----------------------------------

		//SHINE_ON
		#if SHINE_ON
			half2 uvShine = uvRect;
			half cosAngle = cos(_ShineRotate);
			half sinAngle = sin(_ShineRotate);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvShine -= half2(0.5, 0.5);
			uvShine = mul(rot, uvShine);
			uvShine += half2(0.5, 0.5);
			half shineMask = SAMPLE_TEXTURE2D(_ShineMask, sampler_ShineMask, d.texcoord0.xy).a;
			half currentDistanceProjection = (uvShine.x + uvShine.y) / 2;
			half whitePower = 1 - (abs(currentDistanceProjection - _ShineLocation) / _ShineWidth);
			col.rgb +=  col.a * whitePower * _ShineGlow * max(sign(currentDistanceProjection - (_ShineLocation - _ShineWidth)), 0.0)
			* max(sign((_ShineLocation + _ShineWidth) - currentDistanceProjection), 0.0) * _ShineColor * shineMask;
		#endif

		//-----------------------------------

		//HOLOGRAM_ON
		#if HOLOGRAM_ON
			half totalHologram = _HologramStripesAmount + _HologramUnmodAmount;
			half hologramYCoord = ((uvRect.y + (((_Time.x + randomSeed) % 1) * _HologramStripesSpeed)) % totalHologram) / totalHologram;
			hologramYCoord = abs(hologramYCoord);
			half alpha = RemapFloat(saturate(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0, 1.0, _HologramMinAlpha, saturate(_HologramMaxAlpha));
			half hologramMask = max(sign((_HologramUnmodAmount/totalHologram) - hologramYCoord), 0.0);
			half4 hologramResult = col;
			hologramResult.a *= lerp(alpha, 1, hologramMask);
			hologramResult.rgb *= max(1, _HologramMaxAlpha * max(sign(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0));
			hologramMask = 1 - step(0.01,hologramMask);
			hologramResult.rgb += hologramMask * _HologramStripeColor * col.a;
			col = lerp(col, hologramResult, _HologramBlend);
		#endif

		//-----------------------------------

		//FLICKER_ON
		#if FLICKER_ON
			col.a *= saturate(col.a * step(frac(0.05 + (_Time.w + randomSeed) * _FlickerFreq), 1 - _FlickerPercent) + _FlickerAlpha);
		#endif
		//-----------------------------------

		//ALPHACUTOFF_ON

		//ALPHAROUND_ON

		//ALPHAOUTLINE_ON
		#if ALPHAOUTLINE_ON
			half alphaOutlineRes = pow(1 - col.a, max(_AlphaOutlinePower, 0.0001)) * step(_AlphaOutlineMinAlpha, col.a) * _AlphaOutlineBlend;
			col.rgb = lerp(col.rgb, _AlphaOutlineColor.rgb * _AlphaOutlineGlow, alphaOutlineRes);
			col.a = lerp(col.a, 1, alphaOutlineRes > 1);
		#endif
		//-------------------------------------------------------

		//FOG_ON

		//------------------

        col *= _Color;
		o.Albedo = col;
		col.a *= _Alpha;
        clip(col.a - _AlphaCutoffValue - 0.01);
		o.Alpha = col.a;
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


            


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
             d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenPos = i.screenPos;
            // d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

            
         #if defined(_PASSSHADOW)
            float3 _LightDirection;
            float3 _LightPosition;
         #endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           
           VertexToPixel o = (VertexToPixel)0;

           UNITY_SETUP_INSTANCE_ID(v);
           UNITY_TRANSFER_INSTANCE_ID(v, o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

            o.texcoord0 = v.texcoord0;
            o.texcoord1 = v.texcoord1;
            o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
            o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif
           
           VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);
           o.worldPos = TransformObjectToWorld(v.vertex.xyz);
           o.worldNormal = TransformObjectToWorldNormal(v.normal);
           o.worldTangent = float4(TransformObjectToWorldDir(v.tangent.xyz), v.tangent.w);

          // For some very odd reason, in 2021.2, we can't use Unity's defines, but have to use our own..
          #if _PASSSHADOW
              #if _CASTING_PUNCTUAL_LIGHT_SHADOW
                 float3 lightDirectionWS = normalize(_LightPosition - o.worldPos);
              #else
                 float3 lightDirectionWS = _LightDirection;
              #endif
              // Define shadow pass specific clip position for Universal
              o.pos = TransformWorldToHClip(ApplyShadowBias(o.worldPos, o.worldNormal, lightDirectionWS));
              #if UNITY_REVERSED_Z
                  o.pos.z = min(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #else
                  o.pos.z = max(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #endif
          #elif _PASSMETA
              o.pos = MetaVertexPosition(float4(v.vertex.xyz, 0), v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
          #else
              o.pos = TransformWorldToHClip(o.worldPos);
          #endif

          // #if %SCREENPOSREQUIREKEY%
          // o.screenPos = ComputeScreenPos(o.pos, _ProjectionParams.x);
          // #endif

          #if _PASSFORWARD || _PASSGBUFFER
              float2 uv1 = v.texcoord1.xy;
              OUTPUT_LIGHTMAP_UV(uv1, unity_LightmapST, o.lightmapUV);
               o.texcoord1.xy = uv1;
              OUTPUT_SH(o.worldNormal, o.sh);
              #if defined(DYNAMICLIGHTMAP_ON)
                   o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
              #endif
          #endif

          #ifdef VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
              half fogFactor = 0;
              #if defined(_FOG_FRAGMENT)
                fogFactor = ComputeFogFactor(o.pos.z);
              #endif
              #if _BAKEDLIT
                 o.fogFactorAndVertexLight = half4(fogFactor, 0, 0, 0);
              #else
                 half3 vertexLight = VertexLighting(o.worldPos, o.worldNormal);
                 o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
              #endif
          #endif

          #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
             o.shadowCoord = GetShadowCoord(vertexInput);
          #endif

           return o;
         }


            

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"

            // fragment shader
            FragmentOutput Frag (VertexToPixel IN
            #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
            #endif
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
            ) 
            {
               UNITY_SETUP_INSTANCE_ID(IN);
               UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

               #if defined(LOD_FADE_CROSSFADE)
                  LODFadeCrossFade(IN.pos);
               #endif

               ShaderData d = CreateShaderData(IN
                  #if NEED_FACING
                     , facing
                  #endif
               );
               Surface l = (Surface)0;

               #ifdef _DEPTHOFFSET_ON
                  l.outputDepth = outputDepth;
               #endif

               l.Albedo = half3(0.5, 0.5, 0.5);
               l.Normal = float3(0,0,1);
               l.Occlusion = 1;
               l.Alpha = 1;

               ChainSurfaceFunction(l, d);

               #ifdef _DEPTHOFFSET_ON
                  outputDepth = l.outputDepth;
               #endif

               #if _USESPECULAR || _SIMPLELIT
                  float3 specular = l.Specular;
                  float metallic = 0;
               #else   
                  float3 specular = 0;
                  float metallic = l.Metallic;
               #endif

               InputData inputData = (InputData)0;

               inputData.positionWS = IN.worldPos;
               #if _WORLDSPACENORMAL
                  inputData.normalWS = l.Normal;
               #else
                  inputData.normalWS = normalize(TangentToWorldSpace(d, l.Normal));
               #endif

               inputData.viewDirectionWS = SafeNormalize(d.worldSpaceViewDir);


               #if defined(MAIN_LIGHT_CALCULATE_SHADOWS)
                   inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
               #else
                   inputData.shadowCoord = float4(0, 0, 0, 0);
               #endif

               //inputData.fogCoord = IN.fogFactorAndVertexLight.x;
               InitializeInputDataFog(float4(IN.worldPos, 1.0), IN.fogFactorAndVertexLight.x);
               inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;


               #if defined(_OVERRIDE_BAKEDGI)
                  inputData.bakedGI = l.DiffuseGI;
                  l.Emission += l.SpecularGI;
               #else
                  #if defined(DYNAMICLIGHTMAP_ON)
                   inputData.bakedGI = SAMPLE_GI(IN.lightmapUV, IN.dynamicLightmapUV.xy, IN.sh, inputData.normalWS);
                  #else
                      inputData.bakedGI = SAMPLE_GI(IN.lightmapUV, IN.sh, inputData.normalWS);
                  #endif
               #endif

               inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.pos);
               inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUV);

               #if defined(DEBUG_DISPLAY)
                   #if defined(DYNAMICLIGHTMAP_ON)
                     inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
                   #endif
                   #if defined(LIGHTMAP_ON)
                     inputData.staticLightmapUV = IN.lightmapUV;
                   #else
                     inputData.vertexSH = IN.sh;
                   #endif
               #endif

               #ifdef _DBUFFER
                   ApplyDecal(IN.pos,
                       l.Albedo,
                       specular,
                       inputData.normalWS,
                       metallic,
                       l.Occlusion,
                       l.Smoothness);
               #endif

               BRDFData brdfData;
               InitializeBRDFData(l.Albedo, metallic, specular, l.Smoothness, l.Alpha, brdfData);
               Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
               MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
               half3 color = GlobalIllumination(brdfData, inputData.bakedGI, l.Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);

               return BRDFDataToGbuffer(brdfData, inputData, l.Smoothness, l.Emission + color, l.Occlusion);
            }

         ENDHLSL

      }


      
        Pass
        {
            Name "ShadowCaster"
            Tags 
            { 
                "LightMode" = "ShadowCaster"
            }
           
            // Render State
            Blend One Zero, One Zero
            Cull Back
            ZTest LEqual
            ZWrite On
            // ColorMask: <None>

            	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" "PreviewType" = "Plane" }
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	Blend SrcAlpha OneMinusSrcAlpha


            HLSLPROGRAM

               #pragma vertex Vert
   #pragma fragment Frag

            #pragma target 3.0

            #pragma prefer_hlslcc gles
            #pragma exclude_renderers d3d11_9x
            #pragma multi_compile_instancing
  
            #pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW
            #pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
        

            #define _NORMAL_DROPOFF_TS 1
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define _PASSSHADOW 1

            
	#pragma shader_feature_local GLOW_ON
	#pragma shader_feature_local FADE_ON
	#pragma shader_feature_local OUTBASE_ON
	#pragma shader_feature_local ONLYOUTLINE_ON
	#pragma shader_feature_local GRADIENT_ON
	#pragma shader_feature_local GRADIENT2COL_ON
	#pragma shader_feature_local RADIALGRADIENT_ON
	#pragma shader_feature_local COLORSWAP_ON
	#pragma shader_feature_local HSV_ON
	#pragma shader_feature_local CHANGECOLOR_ON
	#pragma shader_feature_local CHANGECOLOR2_ON
	#pragma shader_feature_local CHANGECOLOR3_ON
	#pragma shader_feature_local COLORRAMP_ON
	#pragma shader_feature_local GRADIENTCOLORRAMP_ON
	#pragma shader_feature_local HITEFFECT_ON
	#pragma shader_feature_local NEGATIVE_ON
	#pragma shader_feature_local PIXELATE_ON
	#pragma shader_feature_local GREYSCALE_ON
	#pragma shader_feature_local POSTERIZE_ON
	#pragma shader_feature_local BLUR_ON
	#pragma shader_feature_local MOTIONBLUR_ON
	#pragma shader_feature_local GHOST_ON
	#pragma shader_feature_local ALPHAOUTLINE_ON
	#pragma shader_feature_local INNEROUTLINE_ON
	#pragma shader_feature_local ONLYINNEROUTLINE_ON
	#pragma shader_feature_local HOLOGRAM_ON
	#pragma shader_feature_local CHROMABERR_ON
	#pragma shader_feature_local GLITCH_ON
	#pragma shader_feature_local FLICKER_ON
	#pragma shader_feature_local SHADOW_ON
	#pragma shader_feature_local SHINE_ON
	#pragma shader_feature_local CONTRAST_ON
	#pragma shader_feature_local OVERLAY_ON
	#pragma shader_feature_local OVERLAYMULT_ON
	#pragma shader_feature_local DOODLE_ON
	#pragma shader_feature_local WIND_ON
	#pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
	#pragma shader_feature_local RECTSIZE_ON
	#pragma shader_feature_local OFFSETUV_ON
	#pragma shader_feature_local CLIPPING_ON
	#pragma shader_feature_local RADIALCLIPPING_ON
	#pragma shader_feature_local TEXTURESCROLL_ON
	#pragma shader_feature_local ZOOMUV_ON
	#pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local WARP_ON
	#pragma shader_feature_local TWISTUV_ON
	#pragma shader_feature_local ROTATEUV_ON
	#pragma shader_feature_local POLARUV_ON
	#pragma shader_feature_local FISHEYE_ON
	#pragma shader_feature_local PINCH_ON
	#pragma shader_feature_local SHAKEUV_ON

	#pragma shader_feature_local GLOWTEX_ON
	#pragma shader_feature_local OUTTEX_ON
	#pragma shader_feature_local OUTDIST_ON
	#pragma shader_feature_local OUTBASE8DIR_ON
	#pragma shader_feature_local OUTBASEPIXELPERF_ON
	#pragma shader_feature_local COLORRAMPOUTLINE_ON
	#pragma shader_feature_local GREYSCALEOUTLINE_ON
	#pragma shader_feature_local POSTERIZEOUTLINE_ON
	#pragma shader_feature_local BLURISHD_ON
	#pragma shader_feature_local MANUALWIND_ON
	#pragma shader_feature_local ATLAS_ON
	#pragma shader_feature_local PREMULTIPLYALPHA_ON

	#pragma shader_feature BILBOARD_ON
	#pragma shader_feature BILBOARDY_ON

	#pragma shader_feature NORMALMAP_ON


   #define _URP 1
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1

                 
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            
                  #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)
      
      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)

      #define _WorldSpaceLightPos0 _MainLightPosition
      
      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(name) TEXTURE2D_ARRAY(name);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)
     
      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      

      // data across stages, stripped like the above.
      struct VertexToPixel
      {
         float4 pos : SV_POSITION;
         float3 worldPos : TEXCOORD0;
         float3 worldNormal : TEXCOORD1;
         float4 worldTangent : TEXCOORD2;
          float4 texcoord0 : TEXCOORD3;
          float4 texcoord1 : TEXCOORD4;
          float4 texcoord2 : TEXCOORD5;

         // #if %TEXCOORD3REQUIREKEY%
          float4 texcoord3 : TEXCOORD6;
         // #endif

         // #if %SCREENPOSREQUIREKEY%
         // float4 screenPos : TEXCOORD7;
         // #endif

         // #if %VERTEXCOLORREQUIREKEY%
          half4 vertexColor : COLOR;
         // #endif

         #if defined(LIGHTMAP_ON)
            float2 lightmapUV : TEXCOORD8;
         #endif
         #if defined(DYNAMICLIGHTMAP_ON)
            float2 dynamicLightmapUV : TEXCOORD9;
         #endif
         #if !defined(LIGHTMAP_ON)
            float3 sh : TEXCOORD10;
         #endif

         #if defined(VARYINGS_NEED_FOG_AND_VERTEX_LIGHT)
            float4 fogFactorAndVertexLight : TEXCOORD11;
         #endif

         #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
           float4 shadowCoord : TEXCOORD12;
         #endif

         // #if %EXTRAV2F0REQUIREKEY%
         // float4 extraV2F0 : TEXCOORD13;
         // #endif

         // #if %EXTRAV2F1REQUIREKEY%
         // float4 extraV2F1 : TEXCOORD14;
         // #endif

         // #if %EXTRAV2F2REQUIREKEY%
         // float4 extraV2F2 : TEXCOORD15;
         // #endif

         // #if %EXTRAV2F3REQUIREKEY%
         // float4 extraV2F3 : TEXCOORD16;
         // #endif

         // #if %EXTRAV2F4REQUIREKEY%
         // float4 extraV2F4 : TEXCOORD17;
         // #endif

         // #if %EXTRAV2F5REQUIREKEY%
         // float4 extraV2F5 : TEXCOORD18;
         // #endif

         // #if %EXTRAV2F6REQUIREKEY%
         // float4 extraV2F6 : TEXCOORD19;
         // #endif

         // #if %EXTRAV2F7REQUIREKEY%
         // float4 extraV2F7 : TEXCOORD20;
         // #endif

         #if UNITY_ANY_INSTANCING_ENABLED
         uint instanceID : CUSTOM_INSTANCE_ID;
         #endif
         #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
         uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
         #endif
         #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
         uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
         #endif
         #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
         FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
         #endif


      };

         
            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
            CBUFFER_START(UnityPerMaterial)

               
	half4 _Color;
	half4 _MainTex_ST, _MainTex_TexelSize;
	half _Alpha, _AlphaCutoffValue;

	#if ATLAS_ON
		half _MinXUV, _MaxXUV, _MinYUV, _MaxYUV;
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
	#endif
	 
	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if FADE_ON
		half4 _FadeBurnColor, _FadeTex_ST, _FadeBurnTex_ST;
		half _FadeAmount, _FadeBurnWidth, _FadeBurnTransition,_FadeBurnGlow;
	#endif

	#if OUTBASE_ON
		half4 _OutlineColor;
		half _OutlineAlpha, _OutlineGlow, _OutlineWidth;
		int _OutlinePixelWidth;
	#endif

	#if OUTTEX_ON
		half4 _OutlineTex_ST;
		half _OutlineTexXSpeed, _OutlineTexYSpeed;
	#endif

	#if OUTDIST_ON
		half4 _OutlineDistortTex_ST;
		half _OutlineDistortTexXSpeed, _OutlineDistortTexYSpeed, _OutlineDistortAmount;
	#endif

	#if ALPHAOUTLINE_ON
		half _AlphaOutlineGlow, _AlphaOutlinePower, _AlphaOutlineMinAlpha, _AlphaOutlineBlend;
		half4 _AlphaOutlineColor;
	#endif

	#if INNEROUTLINE_ON
		half _InnerOutlineThickness, _InnerOutlineAlpha, _InnerOutlineGlow;
		half4 _InnerOutlineColor;
	#endif

	#if GRADIENT_ON
		half _GradBlend, _GradBoostX, _GradBoostY;
		half4 _GradTopRightCol, _GradTopLeftCol, _GradBotRightCol, _GradBotLeftCol;
	#endif

	#if COLORSWAP_ON
		half4 _ColorSwapRed, _ColorSwapGreen, _ColorSwapBlue;
		half _ColorSwapRedLuminosity, _ColorSwapGreenLuminosity, _ColorSwapBlueLuminosity, _ColorSwapBlend;
	#endif

	#if CHANGECOLOR_ON
		half4 _ColorChangeNewCol, _ColorChangeTarget;
		half _ColorChangeTolerance, _ColorChangeLuminosity;
	#endif
	#if CHANGECOLOR2_ON
		half4 _ColorChangeNewCol2, _ColorChangeTarget2;
		half _ColorChangeTolerance2;
	#endif
	#if CHANGECOLOR3_ON
		half4 _ColorChangeNewCol3, _ColorChangeTarget3;
		half _ColorChangeTolerance3;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if HITEFFECT_ON
		half4 _HitEffectColor;
		half _HitEffectGlow, _HitEffectBlend;
	#endif

	#if NEGATIVE_ON
		half _NegativeAmount;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if GREYSCALE_ON
		half _GreyscaleLuminosity, _GreyscaleBlend;
		half4 _GreyscaleTintColor;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors, _PosterizeGamma;
	#endif

	#if BLUR_ON
		half _BlurIntensity;
	#endif

	#if MOTIONBLUR_ON
		half _MotionBlurAngle, _MotionBlurDist;
	#endif

	#if GHOST_ON
		half _GhostColorBoost, _GhostTransparency, _GhostBlend;
	#endif

	#if HOLOGRAM_ON
		half _HologramStripesAmount, _HologramMinAlpha, _HologramUnmodAmount, _HologramStripesSpeed, _HologramMaxAlpha, _HologramBlend;
		half4 _HologramStripeColor;
	#endif

	#if CHROMABERR_ON
		half _ChromAberrAmount, _ChromAberrAlpha;
	#endif

	#if GLITCH_ON
		half _GlitchAmount, _GlitchSize;
	#endif

	#if FLICKER_ON
		half _FlickerFreq, _FlickerPercent, _FlickerAlpha;
	#endif

	#if SHADOW_ON
		half _ShadowX, _ShadowY, _ShadowAlpha;
		half4 _ShadowColor;
	#endif

	#if SHINE_ON
		half4 _ShineColor;
		half _ShineLocation, _ShineRotate, _ShineWidth, _ShineGlow;
	#endif

	#if CONTRAST_ON
		half _Contrast, _Brightness;
	#endif

	#if OVERLAY_ON
		half4 _OverlayTex_ST, _OverlayColor;
		half _OverlayGlow, _OverlayBlend, _OverlayTextureScrollXSpeed, _OverlayTextureScrollYSpeed;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if WIND_ON
		half _GrassSpeed, _GrassWind, _GrassManualAnim, _GrassRadialBend;
	#endif

	#if WAVEUV_ON
		float _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if RECTSIZE_ON
		half _RectSize;
	#endif

	#if OFFSETUV_ON
		half _OffsetUvX, _OffsetUvY;
	#endif

	#if CLIPPING_ON
		half _ClipUvLeft, _ClipUvRight, _ClipUvUp, _ClipUvDown;
	#endif

	#if RADIALCLIPPING_ON
		half _RadialStartAngle, _RadialClip, _RadialClip2;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if ZOOMUV_ON
		half _ZoomUvAmount;
	#endif

	#if WARP_ON
		half _WarpStrength, _WarpSpeed, _WarpScale;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if ROTATEUV_ON
		half _RotateUvAmount;
	#endif

	#if FISHEYE_ON
		half _FishEyeUvAmount;
	#endif

	#if PINCH_ON
		half _PinchUvAmount;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif

	float _RandomSeed;




            CBUFFER_END

            

            

            
	
	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if GLOW_ON
		TEXTURE2D(_GlowTex);
		SAMPLER(sampler_GlowTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);

		TEXTURE2D(_FadeBurnTex);
		SAMPLER(sampler_FadeBurnTex);
	#endif

	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);	
	#endif

	#if OUTTEX_ON
		TEXTURE2D(_OutlineTex);
		SAMPLER(sampler_OutlineTex);
	#endif

	#if OUTDIST_ON
		TEXTURE2D(_OutlineDistortTex);
		SAMPLER(sampler_OutlineDistortTex);
	#endif

	#if COLORSWAP_ON
		TEXTURE2D(_ColorSwapTex);
		SAMPLER(sampler_ColorSwapTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTex);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif

	#if SHINE_ON
		TEXTURE2D(_ShineMask);
		SAMPLER(sampler_ShineMask);
	#endif

	#if OVERLAY_ON
		TEXTURE2D(_OverlayTex);
		SAMPLER(sampler_OverlayTex);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif


	half3 GetPixel(in int offsetX, in int offsetY, in half2 uv, in Texture2D _tex, in SamplerState _sampler)
	{
		half2 _uv = uv + half2(offsetX * _MainTex_TexelSize.x, offsetY * _MainTex_TexelSize.y);
		half4 col = SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
		return col.rgb;
	}


	//BLURS-------------------------------------------------------------------------
	half4 Blur(half2 uv, Texture2D source, SamplerState sampler_source, half Intensity)
	{
		const half2 texelSize = 1.0 / _ScreenParams.xy;
		const half4 color = SAMPLE_TEXTURE2D(source, sampler_source, uv);
		const half2 offset = Intensity * texelSize;

		half4 accumulatedColor = color;
		half accumulatedWeight = 1.0;
		for (int x = -1; x <= 1; x++)
		{
			for (int y = -1; y <= 1; y++)
			{
				const half2 sampleUV = uv + half2(x, y) * offset;
				const half4 sampleColor = SAMPLE_TEXTURE2D(source, sampler_source, sampleUV);

				accumulatedColor += sampleColor;
				accumulatedWeight += 1.0;
			}
		}

		half4 blurredColor = accumulatedColor / accumulatedWeight;
		return blurredColor;
	}

	half BlurHD_G(half bhqp, half x)
	{
		return exp(-(x * x) / (2.0 * bhqp * bhqp));
	}
	half4 BlurHD(half2 uv, Texture2D source, SamplerState sampler_source, half BlurAmount, half xScale, half yScale)
	{
		int iterations = 16;
		int halfIterations = iterations / 2;
		half sigmaX = 0.1 + BlurAmount * 0.5;
		half sigmaY = sigmaX;
		half total = 0.0;
		half4 ret = half4(0, 0, 0, 0);
		for (int iy = 0; iy < iterations; ++iy)
		{
			half fy = BlurHD_G(sigmaY, half(iy) -half(halfIterations));
			half offsetY = half(iy - halfIterations) * 0.00390625 * xScale;
			for (int ix = 0; ix < iterations; ++ix)
			{
				half fx = BlurHD_G(sigmaX, half(ix) - half(halfIterations));
				half offsetX = half(ix - halfIterations) * 0.00390625 * yScale;
				total += fx * fy;
				ret += SAMPLE_TEXTURE2D(source, sampler_source, uv + half2(offsetX, offsetY)) * fx * fy;
			}
		}
		return ret / total;
	}
	//-----------------------------------------------------------------------


	//-------------------------------------------
	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax){
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}
	//-------------------------------------------

	//-----------------------------------------------------------------------
	half rand(half2 seed, half offset) {
		return (frac(sin(dot(seed, half2(12.9898, 78.233))) * 43758.5453) + offset) % 1.0;
	}

	half rand2(half2 seed, half offset) {
		return (frac(sin(dot(seed * floor(50 + (_Time.x % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}

	half rand2CustomTime(half2 seed, half offset, half customTime) {
		return (frac(sin(dot(seed * floor(50 + (customTime % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}
	//-----------------------------------------------------------------------


	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//BILBOARD_ON
		#if BILBOARD_ON
			half3 camRight = mul((half3x3)unity_CameraToWorld, half3(1,0,0));
			half3 camUp = half3(0,1,0);
			#if BILBOARDY_ON
				camUp = mul((half3x3)unity_CameraToWorld, half3(0,1,0));
			#endif
			half3 localPos = v.vertex.x * camRight + v.vertex.y * camUp;
			v.vertex = half4(localPos, 1);
		#endif
        //-----------------------------------------------------------

        v.texcoord0.xy = TRANSFORM_TEX(v.texcoord0.xy, _MainTex);
		half2 center = half2(0.5, 0.5);
        #if ATLAS_ON
		    center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
		#endif
		
		//POLARUV_ON
		#if POLARUV_ON
			v.texcoord0.xy = v.texcoord0.xy - center;
		#endif

		//----------------------------------------

		//ROTATEUV_ON
		#if ROTATEUV_ON
			half2 uvC = v.texcoord0.xy;
			half cosAngle = cos(_RotateUvAmount);
			half sinAngle = sin(_RotateUvAmount);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvC -= center;
			v.texcoord0.xy = mul(rot, uvC);
			v.texcoord0.xy += center;
		#endif
		//--------------------

		#if RECTSIZE_ON
			v.vertex.xyz += (v.vertex.xyz * (_RectSize - 1.0));
		#endif

		#if OUTTEX_ON
			v.texcoord1.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineTex);
		#endif

		#if OUTDIST_ON
			v.texcoord2.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineDistortTex);
		#endif

		#if DISTORT_ON
			v.texcoord3.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		half randomSeed = _RandomSeed;

		float2 uvRect = d.texcoord0;
		half2 center = half2(0.5, 0.5);
		#if ATLAS_ON
			center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
			uvRect = half2((d.texcoord0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord0.y - _MinYUV) / (_MaxYUV - _MinYUV));
		#endif
		half2 centerTiled = half2(center.x *  _MainTex_ST.x, center.y *  _MainTex_ST.y);

		//CLIPPING_ON
		#if CLIPPING_ON
			half2 tiledUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv = half2((tiledUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			clip((1 - _ClipUvUp) - tiledUv.y);
			clip(tiledUv.y - _ClipUvDown);
			clip((1 - _ClipUvRight) - tiledUv.x);
			clip(tiledUv.x - _ClipUvLeft);
		#endif
		//----------------------------------

		//RADIALCLIPPING_ON
		#if RADIALCLIPPING_ON
			half2 tiledUv2 = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv2 = half2((tiledUv2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half startAngle = _RadialStartAngle - _RadialClip;
			half endAngle = _RadialStartAngle + _RadialClip2;
			half offset0 = clamp(0, 360, startAngle + 360);
			half offset360 = clamp(0, 360, endAngle - 360);
			half2 atan2Coord = half2(lerp(-1, 1, tiledUv2.x), lerp(-1, 1, tiledUv2.y));
			half atanAngle = atan2(atan2Coord.y, atan2Coord.x) * 57.3; // angle in degrees
			if(atanAngle < 0) atanAngle = 360 + atanAngle;
			if(atanAngle >= startAngle && atanAngle <= endAngle) discard;
			if(atanAngle <= offset360) discard;
			if(atanAngle >= offset0) discard;
		#endif

		//-----------------------------

		//TEXTURESCROLL_ON && ATLAS_ON
		#if TEXTURESCROLL_ON && ATLAS_ON
			d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs(((_Time.y + randomSeed) * _TextureScrollXSpeed) + uvRect.x) % 1)),
			_MinYUV + ((_MaxYUV - _MinYUV) * (abs(((_Time.y + randomSeed) * _TextureScrollYSpeed) + uvRect.y) % 1)));
		#endif
		//----------------------------

		//OFFSETUV_ON
		#if OFFSETUV_ON
			#if ATLAS_ON
				d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs((_OffsetUvX + uvRect.x) % 1))),
				_MinYUV + ((_MaxYUV - _MinYUV) * (abs(_OffsetUvY + uvRect.y) % 1)));
			#else
				d.texcoord0.xy += half2(_OffsetUvX, _OffsetUvY);
			#endif
		#endif

		//----------------------

		//POLARUV_ON
		#if POLARUV_ON
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (2.0f * 3.141592653589f), length(d.texcoord0.xy));
			d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		//--------------------------------------

		//TWISTUV_ON
		#if TWISTUV_ON
			#if ATLAS_ON
				_TwistUvPosX = ((_MaxXUV - _MinXUV) * _TwistUvPosX) + _MinXUV;
				_TwistUvPosY = ((_MaxYUV - _MinYUV) * _TwistUvPosY) + _MinYUV;
			#endif
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		//--------------------------------------------

		//FISHEYE_ON
		#if FISHEYE_ON
			half bind = length(centerTiled);
			half2 dF = d.texcoord0.xy - centerTiled;
			half dFlen = length(dF);
			half fishInt = (3.14159265359 / bind) * (_FishEyeUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + (dF / (max(0.0001, dFlen))) * tan(dFlen * fishInt) * bind / tan(bind * fishInt);
		#endif
		//---------------------------------------------

		//PINCH_ON
		#if PINCH_ON
			half2 dP = d.texcoord0.xy - centerTiled;
			half pinchInt = (3.141592 / length(centerTiled)) * (-_PinchUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + normalize(dP) * atan(length(dP) * -pinchInt * 10.0) * 0.5 / atan(-pinchInt * 5);
		#endif

		//---------------------------------------------

		//ZOOMUV_ON
		#if ZOOMUV_ON
			d.texcoord0.xy -= centerTiled;
			d.texcoord0.xy = d.texcoord0.xy * _ZoomUvAmount;
			d.texcoord0.xy += centerTiled;
		#endif

		//-----------------------------------------------

		//DOODLE_ON
		#if DOODLE_ON
			half2 uvCopy = uvRect;
			_HandDrawnSpeed = (floor((_Time.x + randomSeed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		//--------------------------

		//SHAKEUV_ON
		#if SHAKEUV_ON
			half xShake = sin((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		//-------------------------------------------

		//RECTSIZE_ON
		#if RECTSIZE_ON
			d.texcoord0.xy = d.texcoord0.xy * (_RectSize).xx + (((-_RectSize * 0.5) + 0.5)).xx;
		#endif

		//-------------------------------------------

		//DISTORT_ON
		#if DISTORT_ON
			#if ATLAS_ON
				d.texcoord3.x = d.texcoord3.x * (1 / (_MaxXUV - _MinXUV));
				d.texcoord3.y = d.texcoord3.y * (1 / (_MaxYUV - _MinYUV)); 
			#endif

			d.texcoord3.x += ((_Time.x + _RandomSeed) * _DistortTexXSpeed) % 1;
			d.texcoord3.y += ((_Time.x + _RandomSeed) * _DistortTexYSpeed) % 1;
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, d.texcoord3.xy).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif
		//-------------------------------------------------------

		//WARP_ON
		#if WARP_ON
            half2 warpUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				warpUv = half2((warpUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (warpUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			const float tau = 6.283185307179586;
            float xWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.x * tau / _WarpScale;
            float yWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.y * tau / _WarpScale;
            float2 warp = float2(sin(xWarp), sin(yWarp)) * _WarpStrength;
            d.texcoord0.xy += warp;
		#endif

		//-------------------------------------------------------

		//WAVEUV_ON
		#if WAVEUV_ON
			float2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
            uvWave %= 1;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
            float waveTime = _Time.y + randomSeed;
			float angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((waveTime *  _WaveSpeed));
			d.texcoord0.xy = d.texcoord0.xy + uvWave * sin(angWave) * (_WaveStrength / 1000.0);
		#endif
		//----------------------------------------------------

		//ROUNDWAVEUV_ON
		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - uvRect.x);
			half yWave = ((0.5 * _MainTex_ST.y) - uvRect.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
			d.texcoord0.xy += (sin((ripple + (_Time.y + randomSeed) * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif
		//----------------------------------------------------


		//WIND_ON
		#if WIND_ON
			half windOffset = sin((_Time.x + randomSeed) * _GrassSpeed * 10);
			half2 windCenter = half2(0.5, 0.1);
			#if ATLAS_ON
				windCenter.x = ((_MaxXUV - _MinXUV) * windCenter.x) + _MinXUV;
				windCenter.y = ((_MaxYUV - _MinYUV) * windCenter.y) + _MinYUV;
			#endif
			#if !MANUALWIND_ON
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * windOffset), uvRect.y)), 1);
			#else
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * _GrassManualAnim), uvRect.y)), 1);
				windOffset = _GrassManualAnim;
			#endif
			half2 delta = d.texcoord0.xy - windCenter;
			half delta2 = dot(delta.xy, delta.xy);
			half2 delta_offset = delta2 * windOffset;
			d.texcoord0.xy = d.texcoord0.xy + half2(delta.y, -delta.x) * delta_offset * _GrassRadialBend;
		#endif

		//--------------------------------------------------------

		//TEXTURESCROLL_ON && !ATLAS_ON
		#if TEXTURESCROLL_ON && !ATLAS_ON
			d.texcoord0.x += ((_Time.y + randomSeed) * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += ((_Time.y + randomSeed) * _TextureScrollYSpeed) % 1;
		#endif
		//------------------------------

		//PIXELATE_ON
		#if PIXELATE_ON
            half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif
		//--------------

		half4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy);
		half originalAlpha = col.a;
		col *= d.vertexColor;

		//NORMAL MAP
		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif
        float normalSign = sign(dot(d.worldSpaceViewDir, d.worldSpaceNormal));
        o.Normal *= normalSign;


		//GLITCH_ON
		#if GLITCH_ON
			half2 uvGlitch = uvRect;
			uvGlitch.y -= 0.5;
			half lineNoise = pow(rand2(floor(uvGlitch * half2(24., 19.) * _GlitchSize) * 4.0, randomSeed), 3.0) * _GlitchAmount
				* pow(rand2(floor(uvGlitch * half2(38., 14.) * _GlitchSize) * 4.0, randomSeed), 3.0);
			col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(lineNoise * 0.02 * rand2(half2(2.0, 1), randomSeed), 0)) * d.vertexColor;
		#endif
		//--------------------------------------

		//CHROMABERR_ON
		#if CHROMABERR_ON
			half4 r = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ChromAberrAmount/10, 0))	* d.vertexColor;
			half4 b = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-_ChromAberrAmount/10, 0)) * d.vertexColor;
			col = half4(r.r * r.a, col.g, b.b * b.a, max(max(r.a, b.a) * _ChromAberrAlpha, col.a));
		#endif

		//--------------------------------

		//BLUR_ON
		#if BLUR_ON
			#if ATLAS_ON
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, (_MaxXUV - _MinXUV), (_MaxYUV - _MinYUV)) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity * (_MaxXUV - _MinXUV)) * d.vertexColor;
				#endif
			#else
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, 1, 1) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity) * d.vertexColor;
				#endif
			#endif
        #endif

		//--------------------

		//MOTIONBLUR_ON
		#if MOTIONBLUR_ON
			_MotionBlurAngle = _MotionBlurAngle * 3.1415926;
			#define rot(n) mul(n, half2x2(cos(_MotionBlurAngle), -sin(_MotionBlurAngle), sin(_MotionBlurAngle), cos(_MotionBlurAngle)))
			_MotionBlurDist = _MotionBlurDist * 0.005;
			#if ATLAS_ON
				_MotionBlurDist *= (_MaxXUV - _MinXUV);
			#endif
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist, -_MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 2, -_MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 3, -_MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 4, -_MotionBlurDist * 4)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist, _MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 2, _MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 3, _MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 4, _MotionBlurDist * 4)));
			col.rgb = col.rgb / 9;
        #endif
		//------------------------------------

		//NEGATIVE_ON
		#if NEGATIVE_ON
			col.rgb = lerp(col.rgb, 1 - col.rgb, _NegativeAmount);
		#endif

		//--------------
		half luminance = 0;

		//GREYSCALE_ON && !GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && !GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif
		//------------------------------------

		//GHOST_ON
		#if GHOST_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 ghostResult;
			ghostResult.a = saturate(luminance - _GhostTransparency) * col.a;
			ghostResult.rgb = col.rgb * (luminance + _GhostColorBoost);
			col = lerp(col, ghostResult, _GhostBlend);
		#endif
		//------------------------------------

		//INNEROUTLINE_ON
		#if INNEROUTLINE_ON
			half3 innerT = abs(GetPixel(0, _InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(0, -_InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex));
			innerT += abs(GetPixel(_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(-_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex));
			#if !ONLYINNEROUTLINE_ON
				innerT = (innerT / 2.0) * col.a * _InnerOutlineAlpha;
				col.rgb += length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
			#else
				innerT *= col.a * _InnerOutlineAlpha;
				col.rgb = length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
				col.a = step(0.3, col.r+col.g+col.b);
			#endif
		#endif
		//-------------------------------------------------------

		//HITEFFECT_ON
		#if HITEFFECT_ON
			col.rgb = lerp(col.rgb, _HitEffectColor.rgb * _HitEffectGlow, _HitEffectBlend);
		#endif
		//--------------------

		//GRADIENT_ON
		#if GRADIENT_ON
			half2 tiledUvGrad = half2(uvRect.x / _MainTex_ST.x, uvRect.y / _MainTex_ST.y);
			#if GRADIENT2COL_ON
				_GradTopRightCol = _GradTopLeftCol;
				_GradBotRightCol = _GradBotLeftCol;
			#endif
			#if RADIALGRADIENT_ON
				half radialDist = 1 - length(tiledUvGrad - half2(0.5, 0.5));
				radialDist *= (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
				radialDist = saturate(_GradBoostX * radialDist);
				half4 gradientResult = lerp(_GradTopLeftCol, _GradBotLeftCol, radialDist);
			#else
				half gradXLerpFactor = saturate(pow(tiledUvGrad.x, _GradBoostX));
				half4 gradientResult = lerp(lerp(_GradBotLeftCol, _GradBotRightCol, gradXLerpFactor),
				lerp(_GradTopLeftCol, _GradTopRightCol, gradXLerpFactor), saturate(pow(tiledUvGrad.y, _GradBoostY)));
			#endif
			gradientResult = lerp(col, gradientResult, _GradBlend);
			col.rgb = gradientResult.rgb * col.a;
			col.a *= gradientResult.a;
		#endif
		//--------------------------------------------------------------------

		//CONTRAST_ON
		#if CONTRAST_ON
			col.rgb = (col.rgb - float3(0.5, 0.5, 0.5)) * _Contrast + float3(0.5, 0.5, 0.5);
			col.rgb += _Brightness;
		#endif

		//-------------------------------------------------------------------

		//COLORSWAP_ON
		#if COLORSWAP_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 swapMask = SAMPLE_TEXTURE2D(_ColorSwapTex, sampler_ColorSwapTex, d.texcoord0.xy);
			swapMask.rgb *= swapMask.a;
			half3 redSwap = _ColorSwapRed * swapMask.r * saturate(luminance + _ColorSwapRedLuminosity);
			half3 greenSwap = _ColorSwapGreen * swapMask.g * saturate(luminance + _ColorSwapGreenLuminosity);
			half3 blueSwap = _ColorSwapBlue * swapMask.b * saturate(luminance + _ColorSwapBlueLuminosity);
			swapMask.rgb = col.rgb * saturate(1 - swapMask.r - swapMask.g - swapMask.b);
			col.rgb = lerp(col.rgb, swapMask.rgb + redSwap + greenSwap + blueSwap, _ColorSwapBlend);
		#endif
		//--------------------------------------------------------------------

		//COLORRAMP_ON && !COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && !COLORRAMPOUTLINE_ON 
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//--------------------------------------------------------------------

		//CHANGECOLOR_ON
		#if CHANGECOLOR_ON
			float3 currChangeColor = saturate(col.rgb);
			luminance = 0.3 * currChangeColor.r + 0.59 * currChangeColor.g + 0.11 * currChangeColor.b;
			luminance = saturate(luminance + _ColorChangeLuminosity);
			half3 dif = abs(currChangeColor - _ColorChangeTarget.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance), 0.0));
			#if CHANGECOLOR2_ON
			dif = abs(currChangeColor - _ColorChangeTarget2.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol2.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance2), 0.0));
			#endif
			#if CHANGECOLOR3_ON
			dif = abs(currChangeColor - _ColorChangeTarget3.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol3.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance3), 0.0));
			#endif
		#endif
		//-------------------------------------------------------

		//POSTERIZE_ON && !POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif
		//------------------------------------

		//HSV_ON
		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
			+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
			+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
			+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
			+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif
		//-------------------------------------------------------

		//OVERLAY_ON
		#if OVERLAY_ON
			half2 overlayUvs = d.texcoord0.xy;
			overlayUvs.x += ((_Time.y + randomSeed) * _OverlayTextureScrollXSpeed) % 1;
			overlayUvs.y += ((_Time.y + randomSeed) * _OverlayTextureScrollYSpeed) % 1;
			half4 overlayCol = SAMPLE_TEXTURE2D(_OverlayTex, sampler_OverlayTex, TRANSFORM_TEX(overlayUvs, _OverlayTex));
			overlayCol.rgb *= _OverlayColor.rgb * _OverlayGlow;
			#if !OVERLAYMULT_ON
				overlayCol.rgb *= overlayCol.a * _OverlayColor.rgb * _OverlayColor.a * _OverlayBlend;
				col.rgb += overlayCol.rgb;
			#else
				overlayCol.a *= _OverlayColor.a;
				col = lerp(col, col * overlayCol, _OverlayBlend);
			#endif
		#endif

		//---------------------------------

		//OUTBASE_ON
		#if OUTBASE_ON
			#if OUTBASEPIXELPERF_ON
				half2 destUv = half2(_OutlinePixelWidth * _MainTex_TexelSize.x, _OutlinePixelWidth * _MainTex_TexelSize.y);
			#else
				half2 destUv = half2(_OutlineWidth * _MainTex_TexelSize.x * 200, _OutlineWidth * _MainTex_TexelSize.y * 200);
			#endif

			#if OUTDIST_ON
				d.texcoord3.x += ((_Time.x + _RandomSeed) * _OutlineDistortTexXSpeed) % 1;
				d.texcoord3.y += ((_Time.x + _RandomSeed) * _OutlineDistortTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord3 = half2((d.texcoord3.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord3.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half outDistortAmnt = (SAMPLE_TEXTURE2D(_OutlineDistortTex, sampler_OutlineDistortTex, d.texcoord3).r - 0.5) * 0.2 * _OutlineDistortAmount;
				destUv.x += outDistortAmnt;
				destUv.y += outDistortAmnt;
			#endif

			half spriteLeft		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, 0)).a;
			half spriteRight	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(destUv.x, 0)).a;
			half spriteBottom	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(0, destUv.y)).a;
			half spriteTop		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(0, destUv.y)).a;
			half result = spriteLeft + spriteRight + spriteBottom + spriteTop;

			#if OUTBASE8DIR_ON
				half spriteTopLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, destUv.y)).a;
				half spriteTopRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, destUv.y)).a;
				half spriteBotLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, -destUv.y)).a;
				half spriteBotRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, -destUv.y)).a;
				result = result + spriteTopLeft + spriteTopRight + spriteBotLeft + spriteBotRight;
			#endif
					
			result = step(0.05, saturate(result));

			#if OUTTEX_ON
				d.texcoord1.x += ((_Time.x + _RandomSeed) * _OutlineTexXSpeed) % 1;
				d.texcoord1.y += ((_Time.x + _RandomSeed) * _OutlineTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord1 = half2((d.texcoord1.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half4 tempOutColor = SAMPLE_TEXTURE2D(_OutlineTex, sampler_OutlineTex, d.texcoord1);
				tempOutColor *= _OutlineColor;
				_OutlineColor = tempOutColor;
			#endif

			result *= (1 - originalAlpha) * _OutlineAlpha;

			half4 outline = _OutlineColor * d.vertexColor.a;
			outline.rgb *= _OutlineGlow;
			outline.a = result;
			#if ONLYOUTLINE_ON
			col = outline;
			#else
			col = lerp(col, outline, result);
			#endif
		#endif
		//-------------------------------------------------------

		//FADE_ON
		#if FADE_ON
			half2 tiledUvFade1	= TRANSFORM_TEX(d.texcoord0, _FadeTex);
			half2 tiledUvFade2	= TRANSFORM_TEX(d.texcoord0, _FadeBurnTex);
			#if ATLAS_ON
				tiledUvFade1 = half2((tiledUvFade1.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				tiledUvFade2 = half2((tiledUvFade2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half fadeTemp = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
			half fade = smoothstep(_FadeAmount, _FadeAmount + _FadeBurnTransition, fadeTemp);
			half fadeBurn = saturate(smoothstep(_FadeAmount - _FadeBurnWidth, _FadeAmount - _FadeBurnWidth + 0.1, fadeTemp) * _FadeAmount);
			col.a *= fade;
			_FadeBurnColor.rgb *= _FadeBurnGlow;
			col += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2) * _FadeBurnColor * originalAlpha * (1 - col.a);
		#endif
		//-------------------------------------------------------

		//SHADOW_ON
		#if SHADOW_ON
			half shadowA = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ShadowX, _ShadowY)).a;
			half preMultShadowMask = 1 - (saturate(shadowA - col.a) * (1 - col.a));
			col.rgb *= 1 - ((shadowA - col.a) * (1 - col.a));
			col.rgb += (_ShadowColor * shadowA) * (1 - col.a);
			col.a = max(shadowA * _ShadowAlpha * d.vertexColor.a, col.a);
		#endif

		//-------------------------------------------------------

		//GLOW_ON
		#if GLOW_ON
			half4 emission;
			#if GLOWTEX_ON
				emission = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, d.texcoord0);
			#else
				emission = col;
			#endif

			col.rgb *= _GlowGlobal;
			emission.rgb *= emission.a * col.a * _Glow * _GlowColor;
			col.rgb += emission.rgb;
		#endif
		//-------------------------------------------------------

		//COLORRAMP_ON && COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && COLORRAMPOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//---------------

		//GREYSCALE_ON && GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif

		//-----------------------------------

		//POSTERIZE_ON && POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif

		//-----------------------------------

		//SHINE_ON
		#if SHINE_ON
			half2 uvShine = uvRect;
			half cosAngle = cos(_ShineRotate);
			half sinAngle = sin(_ShineRotate);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvShine -= half2(0.5, 0.5);
			uvShine = mul(rot, uvShine);
			uvShine += half2(0.5, 0.5);
			half shineMask = SAMPLE_TEXTURE2D(_ShineMask, sampler_ShineMask, d.texcoord0.xy).a;
			half currentDistanceProjection = (uvShine.x + uvShine.y) / 2;
			half whitePower = 1 - (abs(currentDistanceProjection - _ShineLocation) / _ShineWidth);
			col.rgb +=  col.a * whitePower * _ShineGlow * max(sign(currentDistanceProjection - (_ShineLocation - _ShineWidth)), 0.0)
			* max(sign((_ShineLocation + _ShineWidth) - currentDistanceProjection), 0.0) * _ShineColor * shineMask;
		#endif

		//-----------------------------------

		//HOLOGRAM_ON
		#if HOLOGRAM_ON
			half totalHologram = _HologramStripesAmount + _HologramUnmodAmount;
			half hologramYCoord = ((uvRect.y + (((_Time.x + randomSeed) % 1) * _HologramStripesSpeed)) % totalHologram) / totalHologram;
			hologramYCoord = abs(hologramYCoord);
			half alpha = RemapFloat(saturate(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0, 1.0, _HologramMinAlpha, saturate(_HologramMaxAlpha));
			half hologramMask = max(sign((_HologramUnmodAmount/totalHologram) - hologramYCoord), 0.0);
			half4 hologramResult = col;
			hologramResult.a *= lerp(alpha, 1, hologramMask);
			hologramResult.rgb *= max(1, _HologramMaxAlpha * max(sign(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0));
			hologramMask = 1 - step(0.01,hologramMask);
			hologramResult.rgb += hologramMask * _HologramStripeColor * col.a;
			col = lerp(col, hologramResult, _HologramBlend);
		#endif

		//-----------------------------------

		//FLICKER_ON
		#if FLICKER_ON
			col.a *= saturate(col.a * step(frac(0.05 + (_Time.w + randomSeed) * _FlickerFreq), 1 - _FlickerPercent) + _FlickerAlpha);
		#endif
		//-----------------------------------

		//ALPHACUTOFF_ON

		//ALPHAROUND_ON

		//ALPHAOUTLINE_ON
		#if ALPHAOUTLINE_ON
			half alphaOutlineRes = pow(1 - col.a, max(_AlphaOutlinePower, 0.0001)) * step(_AlphaOutlineMinAlpha, col.a) * _AlphaOutlineBlend;
			col.rgb = lerp(col.rgb, _AlphaOutlineColor.rgb * _AlphaOutlineGlow, alphaOutlineRes);
			col.a = lerp(col.a, 1, alphaOutlineRes > 1);
		#endif
		//-------------------------------------------------------

		//FOG_ON

		//------------------

        col *= _Color;
		o.Albedo = col;
		col.a *= _Alpha;
        clip(col.a - _AlphaCutoffValue - 0.01);
		o.Alpha = col.a;
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


            


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
             d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenPos = i.screenPos;
            // d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

            
         #if defined(_PASSSHADOW)
            float3 _LightDirection;
            float3 _LightPosition;
         #endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           
           VertexToPixel o = (VertexToPixel)0;

           UNITY_SETUP_INSTANCE_ID(v);
           UNITY_TRANSFER_INSTANCE_ID(v, o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

            o.texcoord0 = v.texcoord0;
            o.texcoord1 = v.texcoord1;
            o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
            o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif
           
           VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);
           o.worldPos = TransformObjectToWorld(v.vertex.xyz);
           o.worldNormal = TransformObjectToWorldNormal(v.normal);
           o.worldTangent = float4(TransformObjectToWorldDir(v.tangent.xyz), v.tangent.w);

          // For some very odd reason, in 2021.2, we can't use Unity's defines, but have to use our own..
          #if _PASSSHADOW
              #if _CASTING_PUNCTUAL_LIGHT_SHADOW
                 float3 lightDirectionWS = normalize(_LightPosition - o.worldPos);
              #else
                 float3 lightDirectionWS = _LightDirection;
              #endif
              // Define shadow pass specific clip position for Universal
              o.pos = TransformWorldToHClip(ApplyShadowBias(o.worldPos, o.worldNormal, lightDirectionWS));
              #if UNITY_REVERSED_Z
                  o.pos.z = min(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #else
                  o.pos.z = max(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #endif
          #elif _PASSMETA
              o.pos = MetaVertexPosition(float4(v.vertex.xyz, 0), v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
          #else
              o.pos = TransformWorldToHClip(o.worldPos);
          #endif

          // #if %SCREENPOSREQUIREKEY%
          // o.screenPos = ComputeScreenPos(o.pos, _ProjectionParams.x);
          // #endif

          #if _PASSFORWARD || _PASSGBUFFER
              float2 uv1 = v.texcoord1.xy;
              OUTPUT_LIGHTMAP_UV(uv1, unity_LightmapST, o.lightmapUV);
               o.texcoord1.xy = uv1;
              OUTPUT_SH(o.worldNormal, o.sh);
              #if defined(DYNAMICLIGHTMAP_ON)
                   o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
              #endif
          #endif

          #ifdef VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
              half fogFactor = 0;
              #if defined(_FOG_FRAGMENT)
                fogFactor = ComputeFogFactor(o.pos.z);
              #endif
              #if _BAKEDLIT
                 o.fogFactorAndVertexLight = half4(fogFactor, 0, 0, 0);
              #else
                 half3 vertexLight = VertexLighting(o.worldPos, o.worldNormal);
                 o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
              #endif
          #endif

          #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
             o.shadowCoord = GetShadowCoord(vertexInput);
          #endif

           return o;
         }


            

            // fragment shader
            half4 Frag (VertexToPixel IN
            #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
            #endif
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
            ) : SV_Target
            {
               UNITY_SETUP_INSTANCE_ID(IN);

               #if defined(LOD_FADE_CROSSFADE)
                  LODFadeCrossFade(IN.pos);
               #endif

               ShaderData d = CreateShaderData(IN
                  #if NEED_FACING
                     , facing
                  #endif
               );
               Surface l = (Surface)0;

               #ifdef _DEPTHOFFSET_ON
                  l.outputDepth = outputDepth;
               #endif

               l.Albedo = half3(0.5, 0.5, 0.5);
               l.Normal = float3(0,0,1);
               l.Occlusion = 1;
               l.Alpha = 1;

               ChainSurfaceFunction(l, d);

               #ifdef _DEPTHOFFSET_ON
                  outputDepth = l.outputDepth;
               #endif

             return 0;

            }

         ENDHLSL

      }


      
        Pass
        {
            Name "DepthOnly"
            Tags 
            { 
                "LightMode" = "DepthOnly"
            }
           
            // Render State
            Blend One Zero, One Zero
            Cull Back
            ZTest LEqual
            ZWrite On
            ColorMask 0
            
            	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" "PreviewType" = "Plane" }
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	Blend SrcAlpha OneMinusSrcAlpha


            HLSLPROGRAM

               #pragma vertex Vert
   #pragma fragment Frag


            #define _PASSDEPTH 1

            #pragma target 3.0
            #pragma prefer_hlslcc gles
            #pragma exclude_renderers d3d11_9x
            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON

            
	#pragma shader_feature_local GLOW_ON
	#pragma shader_feature_local FADE_ON
	#pragma shader_feature_local OUTBASE_ON
	#pragma shader_feature_local ONLYOUTLINE_ON
	#pragma shader_feature_local GRADIENT_ON
	#pragma shader_feature_local GRADIENT2COL_ON
	#pragma shader_feature_local RADIALGRADIENT_ON
	#pragma shader_feature_local COLORSWAP_ON
	#pragma shader_feature_local HSV_ON
	#pragma shader_feature_local CHANGECOLOR_ON
	#pragma shader_feature_local CHANGECOLOR2_ON
	#pragma shader_feature_local CHANGECOLOR3_ON
	#pragma shader_feature_local COLORRAMP_ON
	#pragma shader_feature_local GRADIENTCOLORRAMP_ON
	#pragma shader_feature_local HITEFFECT_ON
	#pragma shader_feature_local NEGATIVE_ON
	#pragma shader_feature_local PIXELATE_ON
	#pragma shader_feature_local GREYSCALE_ON
	#pragma shader_feature_local POSTERIZE_ON
	#pragma shader_feature_local BLUR_ON
	#pragma shader_feature_local MOTIONBLUR_ON
	#pragma shader_feature_local GHOST_ON
	#pragma shader_feature_local ALPHAOUTLINE_ON
	#pragma shader_feature_local INNEROUTLINE_ON
	#pragma shader_feature_local ONLYINNEROUTLINE_ON
	#pragma shader_feature_local HOLOGRAM_ON
	#pragma shader_feature_local CHROMABERR_ON
	#pragma shader_feature_local GLITCH_ON
	#pragma shader_feature_local FLICKER_ON
	#pragma shader_feature_local SHADOW_ON
	#pragma shader_feature_local SHINE_ON
	#pragma shader_feature_local CONTRAST_ON
	#pragma shader_feature_local OVERLAY_ON
	#pragma shader_feature_local OVERLAYMULT_ON
	#pragma shader_feature_local DOODLE_ON
	#pragma shader_feature_local WIND_ON
	#pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
	#pragma shader_feature_local RECTSIZE_ON
	#pragma shader_feature_local OFFSETUV_ON
	#pragma shader_feature_local CLIPPING_ON
	#pragma shader_feature_local RADIALCLIPPING_ON
	#pragma shader_feature_local TEXTURESCROLL_ON
	#pragma shader_feature_local ZOOMUV_ON
	#pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local WARP_ON
	#pragma shader_feature_local TWISTUV_ON
	#pragma shader_feature_local ROTATEUV_ON
	#pragma shader_feature_local POLARUV_ON
	#pragma shader_feature_local FISHEYE_ON
	#pragma shader_feature_local PINCH_ON
	#pragma shader_feature_local SHAKEUV_ON

	#pragma shader_feature_local GLOWTEX_ON
	#pragma shader_feature_local OUTTEX_ON
	#pragma shader_feature_local OUTDIST_ON
	#pragma shader_feature_local OUTBASE8DIR_ON
	#pragma shader_feature_local OUTBASEPIXELPERF_ON
	#pragma shader_feature_local COLORRAMPOUTLINE_ON
	#pragma shader_feature_local GREYSCALEOUTLINE_ON
	#pragma shader_feature_local POSTERIZEOUTLINE_ON
	#pragma shader_feature_local BLURISHD_ON
	#pragma shader_feature_local MANUALWIND_ON
	#pragma shader_feature_local ATLAS_ON
	#pragma shader_feature_local PREMULTIPLYALPHA_ON

	#pragma shader_feature BILBOARD_ON
	#pragma shader_feature BILBOARDY_ON

	#pragma shader_feature NORMALMAP_ON


   #define _URP 1
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1

            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Version.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"


                  #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)
      
      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)

      #define _WorldSpaceLightPos0 _MainLightPosition
      
      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(name) TEXTURE2D_ARRAY(name);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)
     
      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      

      // data across stages, stripped like the above.
      struct VertexToPixel
      {
         float4 pos : SV_POSITION;
         float3 worldPos : TEXCOORD0;
         float3 worldNormal : TEXCOORD1;
         float4 worldTangent : TEXCOORD2;
          float4 texcoord0 : TEXCOORD3;
          float4 texcoord1 : TEXCOORD4;
          float4 texcoord2 : TEXCOORD5;

         // #if %TEXCOORD3REQUIREKEY%
          float4 texcoord3 : TEXCOORD6;
         // #endif

         // #if %SCREENPOSREQUIREKEY%
         // float4 screenPos : TEXCOORD7;
         // #endif

         // #if %VERTEXCOLORREQUIREKEY%
          half4 vertexColor : COLOR;
         // #endif

         #if defined(LIGHTMAP_ON)
            float2 lightmapUV : TEXCOORD8;
         #endif
         #if defined(DYNAMICLIGHTMAP_ON)
            float2 dynamicLightmapUV : TEXCOORD9;
         #endif
         #if !defined(LIGHTMAP_ON)
            float3 sh : TEXCOORD10;
         #endif

         #if defined(VARYINGS_NEED_FOG_AND_VERTEX_LIGHT)
            float4 fogFactorAndVertexLight : TEXCOORD11;
         #endif

         #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
           float4 shadowCoord : TEXCOORD12;
         #endif

         // #if %EXTRAV2F0REQUIREKEY%
         // float4 extraV2F0 : TEXCOORD13;
         // #endif

         // #if %EXTRAV2F1REQUIREKEY%
         // float4 extraV2F1 : TEXCOORD14;
         // #endif

         // #if %EXTRAV2F2REQUIREKEY%
         // float4 extraV2F2 : TEXCOORD15;
         // #endif

         // #if %EXTRAV2F3REQUIREKEY%
         // float4 extraV2F3 : TEXCOORD16;
         // #endif

         // #if %EXTRAV2F4REQUIREKEY%
         // float4 extraV2F4 : TEXCOORD17;
         // #endif

         // #if %EXTRAV2F5REQUIREKEY%
         // float4 extraV2F5 : TEXCOORD18;
         // #endif

         // #if %EXTRAV2F6REQUIREKEY%
         // float4 extraV2F6 : TEXCOORD19;
         // #endif

         // #if %EXTRAV2F7REQUIREKEY%
         // float4 extraV2F7 : TEXCOORD20;
         // #endif

         #if UNITY_ANY_INSTANCING_ENABLED
         uint instanceID : CUSTOM_INSTANCE_ID;
         #endif
         #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
         uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
         #endif
         #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
         uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
         #endif
         #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
         FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
         #endif


      };

         
            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
            CBUFFER_START(UnityPerMaterial)

               
	half4 _Color;
	half4 _MainTex_ST, _MainTex_TexelSize;
	half _Alpha, _AlphaCutoffValue;

	#if ATLAS_ON
		half _MinXUV, _MaxXUV, _MinYUV, _MaxYUV;
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
	#endif
	 
	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if FADE_ON
		half4 _FadeBurnColor, _FadeTex_ST, _FadeBurnTex_ST;
		half _FadeAmount, _FadeBurnWidth, _FadeBurnTransition,_FadeBurnGlow;
	#endif

	#if OUTBASE_ON
		half4 _OutlineColor;
		half _OutlineAlpha, _OutlineGlow, _OutlineWidth;
		int _OutlinePixelWidth;
	#endif

	#if OUTTEX_ON
		half4 _OutlineTex_ST;
		half _OutlineTexXSpeed, _OutlineTexYSpeed;
	#endif

	#if OUTDIST_ON
		half4 _OutlineDistortTex_ST;
		half _OutlineDistortTexXSpeed, _OutlineDistortTexYSpeed, _OutlineDistortAmount;
	#endif

	#if ALPHAOUTLINE_ON
		half _AlphaOutlineGlow, _AlphaOutlinePower, _AlphaOutlineMinAlpha, _AlphaOutlineBlend;
		half4 _AlphaOutlineColor;
	#endif

	#if INNEROUTLINE_ON
		half _InnerOutlineThickness, _InnerOutlineAlpha, _InnerOutlineGlow;
		half4 _InnerOutlineColor;
	#endif

	#if GRADIENT_ON
		half _GradBlend, _GradBoostX, _GradBoostY;
		half4 _GradTopRightCol, _GradTopLeftCol, _GradBotRightCol, _GradBotLeftCol;
	#endif

	#if COLORSWAP_ON
		half4 _ColorSwapRed, _ColorSwapGreen, _ColorSwapBlue;
		half _ColorSwapRedLuminosity, _ColorSwapGreenLuminosity, _ColorSwapBlueLuminosity, _ColorSwapBlend;
	#endif

	#if CHANGECOLOR_ON
		half4 _ColorChangeNewCol, _ColorChangeTarget;
		half _ColorChangeTolerance, _ColorChangeLuminosity;
	#endif
	#if CHANGECOLOR2_ON
		half4 _ColorChangeNewCol2, _ColorChangeTarget2;
		half _ColorChangeTolerance2;
	#endif
	#if CHANGECOLOR3_ON
		half4 _ColorChangeNewCol3, _ColorChangeTarget3;
		half _ColorChangeTolerance3;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if HITEFFECT_ON
		half4 _HitEffectColor;
		half _HitEffectGlow, _HitEffectBlend;
	#endif

	#if NEGATIVE_ON
		half _NegativeAmount;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if GREYSCALE_ON
		half _GreyscaleLuminosity, _GreyscaleBlend;
		half4 _GreyscaleTintColor;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors, _PosterizeGamma;
	#endif

	#if BLUR_ON
		half _BlurIntensity;
	#endif

	#if MOTIONBLUR_ON
		half _MotionBlurAngle, _MotionBlurDist;
	#endif

	#if GHOST_ON
		half _GhostColorBoost, _GhostTransparency, _GhostBlend;
	#endif

	#if HOLOGRAM_ON
		half _HologramStripesAmount, _HologramMinAlpha, _HologramUnmodAmount, _HologramStripesSpeed, _HologramMaxAlpha, _HologramBlend;
		half4 _HologramStripeColor;
	#endif

	#if CHROMABERR_ON
		half _ChromAberrAmount, _ChromAberrAlpha;
	#endif

	#if GLITCH_ON
		half _GlitchAmount, _GlitchSize;
	#endif

	#if FLICKER_ON
		half _FlickerFreq, _FlickerPercent, _FlickerAlpha;
	#endif

	#if SHADOW_ON
		half _ShadowX, _ShadowY, _ShadowAlpha;
		half4 _ShadowColor;
	#endif

	#if SHINE_ON
		half4 _ShineColor;
		half _ShineLocation, _ShineRotate, _ShineWidth, _ShineGlow;
	#endif

	#if CONTRAST_ON
		half _Contrast, _Brightness;
	#endif

	#if OVERLAY_ON
		half4 _OverlayTex_ST, _OverlayColor;
		half _OverlayGlow, _OverlayBlend, _OverlayTextureScrollXSpeed, _OverlayTextureScrollYSpeed;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if WIND_ON
		half _GrassSpeed, _GrassWind, _GrassManualAnim, _GrassRadialBend;
	#endif

	#if WAVEUV_ON
		float _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if RECTSIZE_ON
		half _RectSize;
	#endif

	#if OFFSETUV_ON
		half _OffsetUvX, _OffsetUvY;
	#endif

	#if CLIPPING_ON
		half _ClipUvLeft, _ClipUvRight, _ClipUvUp, _ClipUvDown;
	#endif

	#if RADIALCLIPPING_ON
		half _RadialStartAngle, _RadialClip, _RadialClip2;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if ZOOMUV_ON
		half _ZoomUvAmount;
	#endif

	#if WARP_ON
		half _WarpStrength, _WarpSpeed, _WarpScale;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if ROTATEUV_ON
		half _RotateUvAmount;
	#endif

	#if FISHEYE_ON
		half _FishEyeUvAmount;
	#endif

	#if PINCH_ON
		half _PinchUvAmount;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif

	float _RandomSeed;




            CBUFFER_END

            

            

            
	
	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if GLOW_ON
		TEXTURE2D(_GlowTex);
		SAMPLER(sampler_GlowTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);

		TEXTURE2D(_FadeBurnTex);
		SAMPLER(sampler_FadeBurnTex);
	#endif

	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);	
	#endif

	#if OUTTEX_ON
		TEXTURE2D(_OutlineTex);
		SAMPLER(sampler_OutlineTex);
	#endif

	#if OUTDIST_ON
		TEXTURE2D(_OutlineDistortTex);
		SAMPLER(sampler_OutlineDistortTex);
	#endif

	#if COLORSWAP_ON
		TEXTURE2D(_ColorSwapTex);
		SAMPLER(sampler_ColorSwapTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTex);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif

	#if SHINE_ON
		TEXTURE2D(_ShineMask);
		SAMPLER(sampler_ShineMask);
	#endif

	#if OVERLAY_ON
		TEXTURE2D(_OverlayTex);
		SAMPLER(sampler_OverlayTex);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif


	half3 GetPixel(in int offsetX, in int offsetY, in half2 uv, in Texture2D _tex, in SamplerState _sampler)
	{
		half2 _uv = uv + half2(offsetX * _MainTex_TexelSize.x, offsetY * _MainTex_TexelSize.y);
		half4 col = SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
		return col.rgb;
	}


	//BLURS-------------------------------------------------------------------------
	half4 Blur(half2 uv, Texture2D source, SamplerState sampler_source, half Intensity)
	{
		const half2 texelSize = 1.0 / _ScreenParams.xy;
		const half4 color = SAMPLE_TEXTURE2D(source, sampler_source, uv);
		const half2 offset = Intensity * texelSize;

		half4 accumulatedColor = color;
		half accumulatedWeight = 1.0;
		for (int x = -1; x <= 1; x++)
		{
			for (int y = -1; y <= 1; y++)
			{
				const half2 sampleUV = uv + half2(x, y) * offset;
				const half4 sampleColor = SAMPLE_TEXTURE2D(source, sampler_source, sampleUV);

				accumulatedColor += sampleColor;
				accumulatedWeight += 1.0;
			}
		}

		half4 blurredColor = accumulatedColor / accumulatedWeight;
		return blurredColor;
	}

	half BlurHD_G(half bhqp, half x)
	{
		return exp(-(x * x) / (2.0 * bhqp * bhqp));
	}
	half4 BlurHD(half2 uv, Texture2D source, SamplerState sampler_source, half BlurAmount, half xScale, half yScale)
	{
		int iterations = 16;
		int halfIterations = iterations / 2;
		half sigmaX = 0.1 + BlurAmount * 0.5;
		half sigmaY = sigmaX;
		half total = 0.0;
		half4 ret = half4(0, 0, 0, 0);
		for (int iy = 0; iy < iterations; ++iy)
		{
			half fy = BlurHD_G(sigmaY, half(iy) -half(halfIterations));
			half offsetY = half(iy - halfIterations) * 0.00390625 * xScale;
			for (int ix = 0; ix < iterations; ++ix)
			{
				half fx = BlurHD_G(sigmaX, half(ix) - half(halfIterations));
				half offsetX = half(ix - halfIterations) * 0.00390625 * yScale;
				total += fx * fy;
				ret += SAMPLE_TEXTURE2D(source, sampler_source, uv + half2(offsetX, offsetY)) * fx * fy;
			}
		}
		return ret / total;
	}
	//-----------------------------------------------------------------------


	//-------------------------------------------
	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax){
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}
	//-------------------------------------------

	//-----------------------------------------------------------------------
	half rand(half2 seed, half offset) {
		return (frac(sin(dot(seed, half2(12.9898, 78.233))) * 43758.5453) + offset) % 1.0;
	}

	half rand2(half2 seed, half offset) {
		return (frac(sin(dot(seed * floor(50 + (_Time.x % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}

	half rand2CustomTime(half2 seed, half offset, half customTime) {
		return (frac(sin(dot(seed * floor(50 + (customTime % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}
	//-----------------------------------------------------------------------


	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//BILBOARD_ON
		#if BILBOARD_ON
			half3 camRight = mul((half3x3)unity_CameraToWorld, half3(1,0,0));
			half3 camUp = half3(0,1,0);
			#if BILBOARDY_ON
				camUp = mul((half3x3)unity_CameraToWorld, half3(0,1,0));
			#endif
			half3 localPos = v.vertex.x * camRight + v.vertex.y * camUp;
			v.vertex = half4(localPos, 1);
		#endif
        //-----------------------------------------------------------

        v.texcoord0.xy = TRANSFORM_TEX(v.texcoord0.xy, _MainTex);
		half2 center = half2(0.5, 0.5);
        #if ATLAS_ON
		    center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
		#endif
		
		//POLARUV_ON
		#if POLARUV_ON
			v.texcoord0.xy = v.texcoord0.xy - center;
		#endif

		//----------------------------------------

		//ROTATEUV_ON
		#if ROTATEUV_ON
			half2 uvC = v.texcoord0.xy;
			half cosAngle = cos(_RotateUvAmount);
			half sinAngle = sin(_RotateUvAmount);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvC -= center;
			v.texcoord0.xy = mul(rot, uvC);
			v.texcoord0.xy += center;
		#endif
		//--------------------

		#if RECTSIZE_ON
			v.vertex.xyz += (v.vertex.xyz * (_RectSize - 1.0));
		#endif

		#if OUTTEX_ON
			v.texcoord1.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineTex);
		#endif

		#if OUTDIST_ON
			v.texcoord2.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineDistortTex);
		#endif

		#if DISTORT_ON
			v.texcoord3.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		half randomSeed = _RandomSeed;

		float2 uvRect = d.texcoord0;
		half2 center = half2(0.5, 0.5);
		#if ATLAS_ON
			center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
			uvRect = half2((d.texcoord0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord0.y - _MinYUV) / (_MaxYUV - _MinYUV));
		#endif
		half2 centerTiled = half2(center.x *  _MainTex_ST.x, center.y *  _MainTex_ST.y);

		//CLIPPING_ON
		#if CLIPPING_ON
			half2 tiledUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv = half2((tiledUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			clip((1 - _ClipUvUp) - tiledUv.y);
			clip(tiledUv.y - _ClipUvDown);
			clip((1 - _ClipUvRight) - tiledUv.x);
			clip(tiledUv.x - _ClipUvLeft);
		#endif
		//----------------------------------

		//RADIALCLIPPING_ON
		#if RADIALCLIPPING_ON
			half2 tiledUv2 = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv2 = half2((tiledUv2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half startAngle = _RadialStartAngle - _RadialClip;
			half endAngle = _RadialStartAngle + _RadialClip2;
			half offset0 = clamp(0, 360, startAngle + 360);
			half offset360 = clamp(0, 360, endAngle - 360);
			half2 atan2Coord = half2(lerp(-1, 1, tiledUv2.x), lerp(-1, 1, tiledUv2.y));
			half atanAngle = atan2(atan2Coord.y, atan2Coord.x) * 57.3; // angle in degrees
			if(atanAngle < 0) atanAngle = 360 + atanAngle;
			if(atanAngle >= startAngle && atanAngle <= endAngle) discard;
			if(atanAngle <= offset360) discard;
			if(atanAngle >= offset0) discard;
		#endif

		//-----------------------------

		//TEXTURESCROLL_ON && ATLAS_ON
		#if TEXTURESCROLL_ON && ATLAS_ON
			d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs(((_Time.y + randomSeed) * _TextureScrollXSpeed) + uvRect.x) % 1)),
			_MinYUV + ((_MaxYUV - _MinYUV) * (abs(((_Time.y + randomSeed) * _TextureScrollYSpeed) + uvRect.y) % 1)));
		#endif
		//----------------------------

		//OFFSETUV_ON
		#if OFFSETUV_ON
			#if ATLAS_ON
				d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs((_OffsetUvX + uvRect.x) % 1))),
				_MinYUV + ((_MaxYUV - _MinYUV) * (abs(_OffsetUvY + uvRect.y) % 1)));
			#else
				d.texcoord0.xy += half2(_OffsetUvX, _OffsetUvY);
			#endif
		#endif

		//----------------------

		//POLARUV_ON
		#if POLARUV_ON
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (2.0f * 3.141592653589f), length(d.texcoord0.xy));
			d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		//--------------------------------------

		//TWISTUV_ON
		#if TWISTUV_ON
			#if ATLAS_ON
				_TwistUvPosX = ((_MaxXUV - _MinXUV) * _TwistUvPosX) + _MinXUV;
				_TwistUvPosY = ((_MaxYUV - _MinYUV) * _TwistUvPosY) + _MinYUV;
			#endif
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		//--------------------------------------------

		//FISHEYE_ON
		#if FISHEYE_ON
			half bind = length(centerTiled);
			half2 dF = d.texcoord0.xy - centerTiled;
			half dFlen = length(dF);
			half fishInt = (3.14159265359 / bind) * (_FishEyeUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + (dF / (max(0.0001, dFlen))) * tan(dFlen * fishInt) * bind / tan(bind * fishInt);
		#endif
		//---------------------------------------------

		//PINCH_ON
		#if PINCH_ON
			half2 dP = d.texcoord0.xy - centerTiled;
			half pinchInt = (3.141592 / length(centerTiled)) * (-_PinchUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + normalize(dP) * atan(length(dP) * -pinchInt * 10.0) * 0.5 / atan(-pinchInt * 5);
		#endif

		//---------------------------------------------

		//ZOOMUV_ON
		#if ZOOMUV_ON
			d.texcoord0.xy -= centerTiled;
			d.texcoord0.xy = d.texcoord0.xy * _ZoomUvAmount;
			d.texcoord0.xy += centerTiled;
		#endif

		//-----------------------------------------------

		//DOODLE_ON
		#if DOODLE_ON
			half2 uvCopy = uvRect;
			_HandDrawnSpeed = (floor((_Time.x + randomSeed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		//--------------------------

		//SHAKEUV_ON
		#if SHAKEUV_ON
			half xShake = sin((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		//-------------------------------------------

		//RECTSIZE_ON
		#if RECTSIZE_ON
			d.texcoord0.xy = d.texcoord0.xy * (_RectSize).xx + (((-_RectSize * 0.5) + 0.5)).xx;
		#endif

		//-------------------------------------------

		//DISTORT_ON
		#if DISTORT_ON
			#if ATLAS_ON
				d.texcoord3.x = d.texcoord3.x * (1 / (_MaxXUV - _MinXUV));
				d.texcoord3.y = d.texcoord3.y * (1 / (_MaxYUV - _MinYUV)); 
			#endif

			d.texcoord3.x += ((_Time.x + _RandomSeed) * _DistortTexXSpeed) % 1;
			d.texcoord3.y += ((_Time.x + _RandomSeed) * _DistortTexYSpeed) % 1;
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, d.texcoord3.xy).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif
		//-------------------------------------------------------

		//WARP_ON
		#if WARP_ON
            half2 warpUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				warpUv = half2((warpUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (warpUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			const float tau = 6.283185307179586;
            float xWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.x * tau / _WarpScale;
            float yWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.y * tau / _WarpScale;
            float2 warp = float2(sin(xWarp), sin(yWarp)) * _WarpStrength;
            d.texcoord0.xy += warp;
		#endif

		//-------------------------------------------------------

		//WAVEUV_ON
		#if WAVEUV_ON
			float2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
            uvWave %= 1;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
            float waveTime = _Time.y + randomSeed;
			float angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((waveTime *  _WaveSpeed));
			d.texcoord0.xy = d.texcoord0.xy + uvWave * sin(angWave) * (_WaveStrength / 1000.0);
		#endif
		//----------------------------------------------------

		//ROUNDWAVEUV_ON
		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - uvRect.x);
			half yWave = ((0.5 * _MainTex_ST.y) - uvRect.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
			d.texcoord0.xy += (sin((ripple + (_Time.y + randomSeed) * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif
		//----------------------------------------------------


		//WIND_ON
		#if WIND_ON
			half windOffset = sin((_Time.x + randomSeed) * _GrassSpeed * 10);
			half2 windCenter = half2(0.5, 0.1);
			#if ATLAS_ON
				windCenter.x = ((_MaxXUV - _MinXUV) * windCenter.x) + _MinXUV;
				windCenter.y = ((_MaxYUV - _MinYUV) * windCenter.y) + _MinYUV;
			#endif
			#if !MANUALWIND_ON
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * windOffset), uvRect.y)), 1);
			#else
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * _GrassManualAnim), uvRect.y)), 1);
				windOffset = _GrassManualAnim;
			#endif
			half2 delta = d.texcoord0.xy - windCenter;
			half delta2 = dot(delta.xy, delta.xy);
			half2 delta_offset = delta2 * windOffset;
			d.texcoord0.xy = d.texcoord0.xy + half2(delta.y, -delta.x) * delta_offset * _GrassRadialBend;
		#endif

		//--------------------------------------------------------

		//TEXTURESCROLL_ON && !ATLAS_ON
		#if TEXTURESCROLL_ON && !ATLAS_ON
			d.texcoord0.x += ((_Time.y + randomSeed) * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += ((_Time.y + randomSeed) * _TextureScrollYSpeed) % 1;
		#endif
		//------------------------------

		//PIXELATE_ON
		#if PIXELATE_ON
            half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif
		//--------------

		half4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy);
		half originalAlpha = col.a;
		col *= d.vertexColor;

		//NORMAL MAP
		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif
        float normalSign = sign(dot(d.worldSpaceViewDir, d.worldSpaceNormal));
        o.Normal *= normalSign;


		//GLITCH_ON
		#if GLITCH_ON
			half2 uvGlitch = uvRect;
			uvGlitch.y -= 0.5;
			half lineNoise = pow(rand2(floor(uvGlitch * half2(24., 19.) * _GlitchSize) * 4.0, randomSeed), 3.0) * _GlitchAmount
				* pow(rand2(floor(uvGlitch * half2(38., 14.) * _GlitchSize) * 4.0, randomSeed), 3.0);
			col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(lineNoise * 0.02 * rand2(half2(2.0, 1), randomSeed), 0)) * d.vertexColor;
		#endif
		//--------------------------------------

		//CHROMABERR_ON
		#if CHROMABERR_ON
			half4 r = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ChromAberrAmount/10, 0))	* d.vertexColor;
			half4 b = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-_ChromAberrAmount/10, 0)) * d.vertexColor;
			col = half4(r.r * r.a, col.g, b.b * b.a, max(max(r.a, b.a) * _ChromAberrAlpha, col.a));
		#endif

		//--------------------------------

		//BLUR_ON
		#if BLUR_ON
			#if ATLAS_ON
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, (_MaxXUV - _MinXUV), (_MaxYUV - _MinYUV)) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity * (_MaxXUV - _MinXUV)) * d.vertexColor;
				#endif
			#else
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, 1, 1) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity) * d.vertexColor;
				#endif
			#endif
        #endif

		//--------------------

		//MOTIONBLUR_ON
		#if MOTIONBLUR_ON
			_MotionBlurAngle = _MotionBlurAngle * 3.1415926;
			#define rot(n) mul(n, half2x2(cos(_MotionBlurAngle), -sin(_MotionBlurAngle), sin(_MotionBlurAngle), cos(_MotionBlurAngle)))
			_MotionBlurDist = _MotionBlurDist * 0.005;
			#if ATLAS_ON
				_MotionBlurDist *= (_MaxXUV - _MinXUV);
			#endif
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist, -_MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 2, -_MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 3, -_MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 4, -_MotionBlurDist * 4)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist, _MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 2, _MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 3, _MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 4, _MotionBlurDist * 4)));
			col.rgb = col.rgb / 9;
        #endif
		//------------------------------------

		//NEGATIVE_ON
		#if NEGATIVE_ON
			col.rgb = lerp(col.rgb, 1 - col.rgb, _NegativeAmount);
		#endif

		//--------------
		half luminance = 0;

		//GREYSCALE_ON && !GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && !GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif
		//------------------------------------

		//GHOST_ON
		#if GHOST_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 ghostResult;
			ghostResult.a = saturate(luminance - _GhostTransparency) * col.a;
			ghostResult.rgb = col.rgb * (luminance + _GhostColorBoost);
			col = lerp(col, ghostResult, _GhostBlend);
		#endif
		//------------------------------------

		//INNEROUTLINE_ON
		#if INNEROUTLINE_ON
			half3 innerT = abs(GetPixel(0, _InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(0, -_InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex));
			innerT += abs(GetPixel(_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(-_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex));
			#if !ONLYINNEROUTLINE_ON
				innerT = (innerT / 2.0) * col.a * _InnerOutlineAlpha;
				col.rgb += length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
			#else
				innerT *= col.a * _InnerOutlineAlpha;
				col.rgb = length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
				col.a = step(0.3, col.r+col.g+col.b);
			#endif
		#endif
		//-------------------------------------------------------

		//HITEFFECT_ON
		#if HITEFFECT_ON
			col.rgb = lerp(col.rgb, _HitEffectColor.rgb * _HitEffectGlow, _HitEffectBlend);
		#endif
		//--------------------

		//GRADIENT_ON
		#if GRADIENT_ON
			half2 tiledUvGrad = half2(uvRect.x / _MainTex_ST.x, uvRect.y / _MainTex_ST.y);
			#if GRADIENT2COL_ON
				_GradTopRightCol = _GradTopLeftCol;
				_GradBotRightCol = _GradBotLeftCol;
			#endif
			#if RADIALGRADIENT_ON
				half radialDist = 1 - length(tiledUvGrad - half2(0.5, 0.5));
				radialDist *= (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
				radialDist = saturate(_GradBoostX * radialDist);
				half4 gradientResult = lerp(_GradTopLeftCol, _GradBotLeftCol, radialDist);
			#else
				half gradXLerpFactor = saturate(pow(tiledUvGrad.x, _GradBoostX));
				half4 gradientResult = lerp(lerp(_GradBotLeftCol, _GradBotRightCol, gradXLerpFactor),
				lerp(_GradTopLeftCol, _GradTopRightCol, gradXLerpFactor), saturate(pow(tiledUvGrad.y, _GradBoostY)));
			#endif
			gradientResult = lerp(col, gradientResult, _GradBlend);
			col.rgb = gradientResult.rgb * col.a;
			col.a *= gradientResult.a;
		#endif
		//--------------------------------------------------------------------

		//CONTRAST_ON
		#if CONTRAST_ON
			col.rgb = (col.rgb - float3(0.5, 0.5, 0.5)) * _Contrast + float3(0.5, 0.5, 0.5);
			col.rgb += _Brightness;
		#endif

		//-------------------------------------------------------------------

		//COLORSWAP_ON
		#if COLORSWAP_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 swapMask = SAMPLE_TEXTURE2D(_ColorSwapTex, sampler_ColorSwapTex, d.texcoord0.xy);
			swapMask.rgb *= swapMask.a;
			half3 redSwap = _ColorSwapRed * swapMask.r * saturate(luminance + _ColorSwapRedLuminosity);
			half3 greenSwap = _ColorSwapGreen * swapMask.g * saturate(luminance + _ColorSwapGreenLuminosity);
			half3 blueSwap = _ColorSwapBlue * swapMask.b * saturate(luminance + _ColorSwapBlueLuminosity);
			swapMask.rgb = col.rgb * saturate(1 - swapMask.r - swapMask.g - swapMask.b);
			col.rgb = lerp(col.rgb, swapMask.rgb + redSwap + greenSwap + blueSwap, _ColorSwapBlend);
		#endif
		//--------------------------------------------------------------------

		//COLORRAMP_ON && !COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && !COLORRAMPOUTLINE_ON 
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//--------------------------------------------------------------------

		//CHANGECOLOR_ON
		#if CHANGECOLOR_ON
			float3 currChangeColor = saturate(col.rgb);
			luminance = 0.3 * currChangeColor.r + 0.59 * currChangeColor.g + 0.11 * currChangeColor.b;
			luminance = saturate(luminance + _ColorChangeLuminosity);
			half3 dif = abs(currChangeColor - _ColorChangeTarget.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance), 0.0));
			#if CHANGECOLOR2_ON
			dif = abs(currChangeColor - _ColorChangeTarget2.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol2.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance2), 0.0));
			#endif
			#if CHANGECOLOR3_ON
			dif = abs(currChangeColor - _ColorChangeTarget3.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol3.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance3), 0.0));
			#endif
		#endif
		//-------------------------------------------------------

		//POSTERIZE_ON && !POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif
		//------------------------------------

		//HSV_ON
		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
			+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
			+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
			+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
			+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif
		//-------------------------------------------------------

		//OVERLAY_ON
		#if OVERLAY_ON
			half2 overlayUvs = d.texcoord0.xy;
			overlayUvs.x += ((_Time.y + randomSeed) * _OverlayTextureScrollXSpeed) % 1;
			overlayUvs.y += ((_Time.y + randomSeed) * _OverlayTextureScrollYSpeed) % 1;
			half4 overlayCol = SAMPLE_TEXTURE2D(_OverlayTex, sampler_OverlayTex, TRANSFORM_TEX(overlayUvs, _OverlayTex));
			overlayCol.rgb *= _OverlayColor.rgb * _OverlayGlow;
			#if !OVERLAYMULT_ON
				overlayCol.rgb *= overlayCol.a * _OverlayColor.rgb * _OverlayColor.a * _OverlayBlend;
				col.rgb += overlayCol.rgb;
			#else
				overlayCol.a *= _OverlayColor.a;
				col = lerp(col, col * overlayCol, _OverlayBlend);
			#endif
		#endif

		//---------------------------------

		//OUTBASE_ON
		#if OUTBASE_ON
			#if OUTBASEPIXELPERF_ON
				half2 destUv = half2(_OutlinePixelWidth * _MainTex_TexelSize.x, _OutlinePixelWidth * _MainTex_TexelSize.y);
			#else
				half2 destUv = half2(_OutlineWidth * _MainTex_TexelSize.x * 200, _OutlineWidth * _MainTex_TexelSize.y * 200);
			#endif

			#if OUTDIST_ON
				d.texcoord3.x += ((_Time.x + _RandomSeed) * _OutlineDistortTexXSpeed) % 1;
				d.texcoord3.y += ((_Time.x + _RandomSeed) * _OutlineDistortTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord3 = half2((d.texcoord3.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord3.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half outDistortAmnt = (SAMPLE_TEXTURE2D(_OutlineDistortTex, sampler_OutlineDistortTex, d.texcoord3).r - 0.5) * 0.2 * _OutlineDistortAmount;
				destUv.x += outDistortAmnt;
				destUv.y += outDistortAmnt;
			#endif

			half spriteLeft		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, 0)).a;
			half spriteRight	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(destUv.x, 0)).a;
			half spriteBottom	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(0, destUv.y)).a;
			half spriteTop		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(0, destUv.y)).a;
			half result = spriteLeft + spriteRight + spriteBottom + spriteTop;

			#if OUTBASE8DIR_ON
				half spriteTopLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, destUv.y)).a;
				half spriteTopRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, destUv.y)).a;
				half spriteBotLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, -destUv.y)).a;
				half spriteBotRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, -destUv.y)).a;
				result = result + spriteTopLeft + spriteTopRight + spriteBotLeft + spriteBotRight;
			#endif
					
			result = step(0.05, saturate(result));

			#if OUTTEX_ON
				d.texcoord1.x += ((_Time.x + _RandomSeed) * _OutlineTexXSpeed) % 1;
				d.texcoord1.y += ((_Time.x + _RandomSeed) * _OutlineTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord1 = half2((d.texcoord1.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half4 tempOutColor = SAMPLE_TEXTURE2D(_OutlineTex, sampler_OutlineTex, d.texcoord1);
				tempOutColor *= _OutlineColor;
				_OutlineColor = tempOutColor;
			#endif

			result *= (1 - originalAlpha) * _OutlineAlpha;

			half4 outline = _OutlineColor * d.vertexColor.a;
			outline.rgb *= _OutlineGlow;
			outline.a = result;
			#if ONLYOUTLINE_ON
			col = outline;
			#else
			col = lerp(col, outline, result);
			#endif
		#endif
		//-------------------------------------------------------

		//FADE_ON
		#if FADE_ON
			half2 tiledUvFade1	= TRANSFORM_TEX(d.texcoord0, _FadeTex);
			half2 tiledUvFade2	= TRANSFORM_TEX(d.texcoord0, _FadeBurnTex);
			#if ATLAS_ON
				tiledUvFade1 = half2((tiledUvFade1.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				tiledUvFade2 = half2((tiledUvFade2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half fadeTemp = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
			half fade = smoothstep(_FadeAmount, _FadeAmount + _FadeBurnTransition, fadeTemp);
			half fadeBurn = saturate(smoothstep(_FadeAmount - _FadeBurnWidth, _FadeAmount - _FadeBurnWidth + 0.1, fadeTemp) * _FadeAmount);
			col.a *= fade;
			_FadeBurnColor.rgb *= _FadeBurnGlow;
			col += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2) * _FadeBurnColor * originalAlpha * (1 - col.a);
		#endif
		//-------------------------------------------------------

		//SHADOW_ON
		#if SHADOW_ON
			half shadowA = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ShadowX, _ShadowY)).a;
			half preMultShadowMask = 1 - (saturate(shadowA - col.a) * (1 - col.a));
			col.rgb *= 1 - ((shadowA - col.a) * (1 - col.a));
			col.rgb += (_ShadowColor * shadowA) * (1 - col.a);
			col.a = max(shadowA * _ShadowAlpha * d.vertexColor.a, col.a);
		#endif

		//-------------------------------------------------------

		//GLOW_ON
		#if GLOW_ON
			half4 emission;
			#if GLOWTEX_ON
				emission = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, d.texcoord0);
			#else
				emission = col;
			#endif

			col.rgb *= _GlowGlobal;
			emission.rgb *= emission.a * col.a * _Glow * _GlowColor;
			col.rgb += emission.rgb;
		#endif
		//-------------------------------------------------------

		//COLORRAMP_ON && COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && COLORRAMPOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//---------------

		//GREYSCALE_ON && GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif

		//-----------------------------------

		//POSTERIZE_ON && POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif

		//-----------------------------------

		//SHINE_ON
		#if SHINE_ON
			half2 uvShine = uvRect;
			half cosAngle = cos(_ShineRotate);
			half sinAngle = sin(_ShineRotate);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvShine -= half2(0.5, 0.5);
			uvShine = mul(rot, uvShine);
			uvShine += half2(0.5, 0.5);
			half shineMask = SAMPLE_TEXTURE2D(_ShineMask, sampler_ShineMask, d.texcoord0.xy).a;
			half currentDistanceProjection = (uvShine.x + uvShine.y) / 2;
			half whitePower = 1 - (abs(currentDistanceProjection - _ShineLocation) / _ShineWidth);
			col.rgb +=  col.a * whitePower * _ShineGlow * max(sign(currentDistanceProjection - (_ShineLocation - _ShineWidth)), 0.0)
			* max(sign((_ShineLocation + _ShineWidth) - currentDistanceProjection), 0.0) * _ShineColor * shineMask;
		#endif

		//-----------------------------------

		//HOLOGRAM_ON
		#if HOLOGRAM_ON
			half totalHologram = _HologramStripesAmount + _HologramUnmodAmount;
			half hologramYCoord = ((uvRect.y + (((_Time.x + randomSeed) % 1) * _HologramStripesSpeed)) % totalHologram) / totalHologram;
			hologramYCoord = abs(hologramYCoord);
			half alpha = RemapFloat(saturate(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0, 1.0, _HologramMinAlpha, saturate(_HologramMaxAlpha));
			half hologramMask = max(sign((_HologramUnmodAmount/totalHologram) - hologramYCoord), 0.0);
			half4 hologramResult = col;
			hologramResult.a *= lerp(alpha, 1, hologramMask);
			hologramResult.rgb *= max(1, _HologramMaxAlpha * max(sign(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0));
			hologramMask = 1 - step(0.01,hologramMask);
			hologramResult.rgb += hologramMask * _HologramStripeColor * col.a;
			col = lerp(col, hologramResult, _HologramBlend);
		#endif

		//-----------------------------------

		//FLICKER_ON
		#if FLICKER_ON
			col.a *= saturate(col.a * step(frac(0.05 + (_Time.w + randomSeed) * _FlickerFreq), 1 - _FlickerPercent) + _FlickerAlpha);
		#endif
		//-----------------------------------

		//ALPHACUTOFF_ON

		//ALPHAROUND_ON

		//ALPHAOUTLINE_ON
		#if ALPHAOUTLINE_ON
			half alphaOutlineRes = pow(1 - col.a, max(_AlphaOutlinePower, 0.0001)) * step(_AlphaOutlineMinAlpha, col.a) * _AlphaOutlineBlend;
			col.rgb = lerp(col.rgb, _AlphaOutlineColor.rgb * _AlphaOutlineGlow, alphaOutlineRes);
			col.a = lerp(col.a, 1, alphaOutlineRes > 1);
		#endif
		//-------------------------------------------------------

		//FOG_ON

		//------------------

        col *= _Color;
		o.Albedo = col;
		col.a *= _Alpha;
        clip(col.a - _AlphaCutoffValue - 0.01);
		o.Alpha = col.a;
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


            


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
             d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenPos = i.screenPos;
            // d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

            
         #if defined(_PASSSHADOW)
            float3 _LightDirection;
            float3 _LightPosition;
         #endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           
           VertexToPixel o = (VertexToPixel)0;

           UNITY_SETUP_INSTANCE_ID(v);
           UNITY_TRANSFER_INSTANCE_ID(v, o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

            o.texcoord0 = v.texcoord0;
            o.texcoord1 = v.texcoord1;
            o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
            o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif
           
           VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);
           o.worldPos = TransformObjectToWorld(v.vertex.xyz);
           o.worldNormal = TransformObjectToWorldNormal(v.normal);
           o.worldTangent = float4(TransformObjectToWorldDir(v.tangent.xyz), v.tangent.w);

          // For some very odd reason, in 2021.2, we can't use Unity's defines, but have to use our own..
          #if _PASSSHADOW
              #if _CASTING_PUNCTUAL_LIGHT_SHADOW
                 float3 lightDirectionWS = normalize(_LightPosition - o.worldPos);
              #else
                 float3 lightDirectionWS = _LightDirection;
              #endif
              // Define shadow pass specific clip position for Universal
              o.pos = TransformWorldToHClip(ApplyShadowBias(o.worldPos, o.worldNormal, lightDirectionWS));
              #if UNITY_REVERSED_Z
                  o.pos.z = min(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #else
                  o.pos.z = max(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #endif
          #elif _PASSMETA
              o.pos = MetaVertexPosition(float4(v.vertex.xyz, 0), v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
          #else
              o.pos = TransformWorldToHClip(o.worldPos);
          #endif

          // #if %SCREENPOSREQUIREKEY%
          // o.screenPos = ComputeScreenPos(o.pos, _ProjectionParams.x);
          // #endif

          #if _PASSFORWARD || _PASSGBUFFER
              float2 uv1 = v.texcoord1.xy;
              OUTPUT_LIGHTMAP_UV(uv1, unity_LightmapST, o.lightmapUV);
               o.texcoord1.xy = uv1;
              OUTPUT_SH(o.worldNormal, o.sh);
              #if defined(DYNAMICLIGHTMAP_ON)
                   o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
              #endif
          #endif

          #ifdef VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
              half fogFactor = 0;
              #if defined(_FOG_FRAGMENT)
                fogFactor = ComputeFogFactor(o.pos.z);
              #endif
              #if _BAKEDLIT
                 o.fogFactorAndVertexLight = half4(fogFactor, 0, 0, 0);
              #else
                 half3 vertexLight = VertexLighting(o.worldPos, o.worldNormal);
                 o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
              #endif
          #endif

          #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
             o.shadowCoord = GetShadowCoord(vertexInput);
          #endif

           return o;
         }


            

            // fragment shader
            half4 Frag (VertexToPixel IN
            #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
            #endif
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
            ) : SV_Target
            {
               UNITY_SETUP_INSTANCE_ID(IN);
               UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

                #if defined(LOD_FADE_CROSSFADE) && USE_UNITY_CROSSFADE
                    LODFadeCrossFade(IN.pos);
                #endif

               ShaderData d = CreateShaderData(IN
                  #if NEED_FACING
                     , facing
                  #endif
               );
               Surface l = (Surface)0;

               #ifdef _DEPTHOFFSET_ON
                  l.outputDepth = outputDepth;
               #endif

               l.Albedo = half3(0.5, 0.5, 0.5);
               l.Normal = float3(0,0,1);
               l.Occlusion = 1;
               l.Alpha = 1;

               ChainSurfaceFunction(l, d);

               #ifdef _DEPTHOFFSET_ON
                  outputDepth = l.outputDepth;
               #endif

               return 0;

            }

         ENDHLSL

      }


      
        Pass
        {
            Name "Meta"
            Tags 
            { 
                "LightMode" = "Meta"
            }

            Cull Off
            

            	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" "PreviewType" = "Plane" }
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	Blend SrcAlpha OneMinusSrcAlpha


            HLSLPROGRAM

               #pragma vertex Vert
   #pragma fragment Frag

            #pragma target 3.0

            #pragma prefer_hlslcc gles
            #pragma exclude_renderers d3d11_9x
        
            #define SHADERPASS SHADERPASS_META
            #define _PASSMETA 1


            
	#pragma shader_feature_local GLOW_ON
	#pragma shader_feature_local FADE_ON
	#pragma shader_feature_local OUTBASE_ON
	#pragma shader_feature_local ONLYOUTLINE_ON
	#pragma shader_feature_local GRADIENT_ON
	#pragma shader_feature_local GRADIENT2COL_ON
	#pragma shader_feature_local RADIALGRADIENT_ON
	#pragma shader_feature_local COLORSWAP_ON
	#pragma shader_feature_local HSV_ON
	#pragma shader_feature_local CHANGECOLOR_ON
	#pragma shader_feature_local CHANGECOLOR2_ON
	#pragma shader_feature_local CHANGECOLOR3_ON
	#pragma shader_feature_local COLORRAMP_ON
	#pragma shader_feature_local GRADIENTCOLORRAMP_ON
	#pragma shader_feature_local HITEFFECT_ON
	#pragma shader_feature_local NEGATIVE_ON
	#pragma shader_feature_local PIXELATE_ON
	#pragma shader_feature_local GREYSCALE_ON
	#pragma shader_feature_local POSTERIZE_ON
	#pragma shader_feature_local BLUR_ON
	#pragma shader_feature_local MOTIONBLUR_ON
	#pragma shader_feature_local GHOST_ON
	#pragma shader_feature_local ALPHAOUTLINE_ON
	#pragma shader_feature_local INNEROUTLINE_ON
	#pragma shader_feature_local ONLYINNEROUTLINE_ON
	#pragma shader_feature_local HOLOGRAM_ON
	#pragma shader_feature_local CHROMABERR_ON
	#pragma shader_feature_local GLITCH_ON
	#pragma shader_feature_local FLICKER_ON
	#pragma shader_feature_local SHADOW_ON
	#pragma shader_feature_local SHINE_ON
	#pragma shader_feature_local CONTRAST_ON
	#pragma shader_feature_local OVERLAY_ON
	#pragma shader_feature_local OVERLAYMULT_ON
	#pragma shader_feature_local DOODLE_ON
	#pragma shader_feature_local WIND_ON
	#pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
	#pragma shader_feature_local RECTSIZE_ON
	#pragma shader_feature_local OFFSETUV_ON
	#pragma shader_feature_local CLIPPING_ON
	#pragma shader_feature_local RADIALCLIPPING_ON
	#pragma shader_feature_local TEXTURESCROLL_ON
	#pragma shader_feature_local ZOOMUV_ON
	#pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local WARP_ON
	#pragma shader_feature_local TWISTUV_ON
	#pragma shader_feature_local ROTATEUV_ON
	#pragma shader_feature_local POLARUV_ON
	#pragma shader_feature_local FISHEYE_ON
	#pragma shader_feature_local PINCH_ON
	#pragma shader_feature_local SHAKEUV_ON

	#pragma shader_feature_local GLOWTEX_ON
	#pragma shader_feature_local OUTTEX_ON
	#pragma shader_feature_local OUTDIST_ON
	#pragma shader_feature_local OUTBASE8DIR_ON
	#pragma shader_feature_local OUTBASEPIXELPERF_ON
	#pragma shader_feature_local COLORRAMPOUTLINE_ON
	#pragma shader_feature_local GREYSCALEOUTLINE_ON
	#pragma shader_feature_local POSTERIZEOUTLINE_ON
	#pragma shader_feature_local BLURISHD_ON
	#pragma shader_feature_local MANUALWIND_ON
	#pragma shader_feature_local ATLAS_ON
	#pragma shader_feature_local PREMULTIPLYALPHA_ON

	#pragma shader_feature BILBOARD_ON
	#pragma shader_feature BILBOARDY_ON

	#pragma shader_feature NORMALMAP_ON


   #define _URP 1
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1



            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Version.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

                  #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)
      
      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)

      #define _WorldSpaceLightPos0 _MainLightPosition
      
      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(name) TEXTURE2D_ARRAY(name);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)
     
      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      

      // data across stages, stripped like the above.
      struct VertexToPixel
      {
         float4 pos : SV_POSITION;
         float3 worldPos : TEXCOORD0;
         float3 worldNormal : TEXCOORD1;
         float4 worldTangent : TEXCOORD2;
          float4 texcoord0 : TEXCOORD3;
          float4 texcoord1 : TEXCOORD4;
          float4 texcoord2 : TEXCOORD5;

         // #if %TEXCOORD3REQUIREKEY%
          float4 texcoord3 : TEXCOORD6;
         // #endif

         // #if %SCREENPOSREQUIREKEY%
         // float4 screenPos : TEXCOORD7;
         // #endif

         // #if %VERTEXCOLORREQUIREKEY%
          half4 vertexColor : COLOR;
         // #endif

         #if defined(LIGHTMAP_ON)
            float2 lightmapUV : TEXCOORD8;
         #endif
         #if defined(DYNAMICLIGHTMAP_ON)
            float2 dynamicLightmapUV : TEXCOORD9;
         #endif
         #if !defined(LIGHTMAP_ON)
            float3 sh : TEXCOORD10;
         #endif

         #if defined(VARYINGS_NEED_FOG_AND_VERTEX_LIGHT)
            float4 fogFactorAndVertexLight : TEXCOORD11;
         #endif

         #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
           float4 shadowCoord : TEXCOORD12;
         #endif

         // #if %EXTRAV2F0REQUIREKEY%
         // float4 extraV2F0 : TEXCOORD13;
         // #endif

         // #if %EXTRAV2F1REQUIREKEY%
         // float4 extraV2F1 : TEXCOORD14;
         // #endif

         // #if %EXTRAV2F2REQUIREKEY%
         // float4 extraV2F2 : TEXCOORD15;
         // #endif

         // #if %EXTRAV2F3REQUIREKEY%
         // float4 extraV2F3 : TEXCOORD16;
         // #endif

         // #if %EXTRAV2F4REQUIREKEY%
         // float4 extraV2F4 : TEXCOORD17;
         // #endif

         // #if %EXTRAV2F5REQUIREKEY%
         // float4 extraV2F5 : TEXCOORD18;
         // #endif

         // #if %EXTRAV2F6REQUIREKEY%
         // float4 extraV2F6 : TEXCOORD19;
         // #endif

         // #if %EXTRAV2F7REQUIREKEY%
         // float4 extraV2F7 : TEXCOORD20;
         // #endif

         #if UNITY_ANY_INSTANCING_ENABLED
         uint instanceID : CUSTOM_INSTANCE_ID;
         #endif
         #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
         uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
         #endif
         #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
         uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
         #endif
         #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
         FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
         #endif


      };


            
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
            CBUFFER_START(UnityPerMaterial)

               
	half4 _Color;
	half4 _MainTex_ST, _MainTex_TexelSize;
	half _Alpha, _AlphaCutoffValue;

	#if ATLAS_ON
		half _MinXUV, _MaxXUV, _MinYUV, _MaxYUV;
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
	#endif
	 
	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if FADE_ON
		half4 _FadeBurnColor, _FadeTex_ST, _FadeBurnTex_ST;
		half _FadeAmount, _FadeBurnWidth, _FadeBurnTransition,_FadeBurnGlow;
	#endif

	#if OUTBASE_ON
		half4 _OutlineColor;
		half _OutlineAlpha, _OutlineGlow, _OutlineWidth;
		int _OutlinePixelWidth;
	#endif

	#if OUTTEX_ON
		half4 _OutlineTex_ST;
		half _OutlineTexXSpeed, _OutlineTexYSpeed;
	#endif

	#if OUTDIST_ON
		half4 _OutlineDistortTex_ST;
		half _OutlineDistortTexXSpeed, _OutlineDistortTexYSpeed, _OutlineDistortAmount;
	#endif

	#if ALPHAOUTLINE_ON
		half _AlphaOutlineGlow, _AlphaOutlinePower, _AlphaOutlineMinAlpha, _AlphaOutlineBlend;
		half4 _AlphaOutlineColor;
	#endif

	#if INNEROUTLINE_ON
		half _InnerOutlineThickness, _InnerOutlineAlpha, _InnerOutlineGlow;
		half4 _InnerOutlineColor;
	#endif

	#if GRADIENT_ON
		half _GradBlend, _GradBoostX, _GradBoostY;
		half4 _GradTopRightCol, _GradTopLeftCol, _GradBotRightCol, _GradBotLeftCol;
	#endif

	#if COLORSWAP_ON
		half4 _ColorSwapRed, _ColorSwapGreen, _ColorSwapBlue;
		half _ColorSwapRedLuminosity, _ColorSwapGreenLuminosity, _ColorSwapBlueLuminosity, _ColorSwapBlend;
	#endif

	#if CHANGECOLOR_ON
		half4 _ColorChangeNewCol, _ColorChangeTarget;
		half _ColorChangeTolerance, _ColorChangeLuminosity;
	#endif
	#if CHANGECOLOR2_ON
		half4 _ColorChangeNewCol2, _ColorChangeTarget2;
		half _ColorChangeTolerance2;
	#endif
	#if CHANGECOLOR3_ON
		half4 _ColorChangeNewCol3, _ColorChangeTarget3;
		half _ColorChangeTolerance3;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if HITEFFECT_ON
		half4 _HitEffectColor;
		half _HitEffectGlow, _HitEffectBlend;
	#endif

	#if NEGATIVE_ON
		half _NegativeAmount;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if GREYSCALE_ON
		half _GreyscaleLuminosity, _GreyscaleBlend;
		half4 _GreyscaleTintColor;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors, _PosterizeGamma;
	#endif

	#if BLUR_ON
		half _BlurIntensity;
	#endif

	#if MOTIONBLUR_ON
		half _MotionBlurAngle, _MotionBlurDist;
	#endif

	#if GHOST_ON
		half _GhostColorBoost, _GhostTransparency, _GhostBlend;
	#endif

	#if HOLOGRAM_ON
		half _HologramStripesAmount, _HologramMinAlpha, _HologramUnmodAmount, _HologramStripesSpeed, _HologramMaxAlpha, _HologramBlend;
		half4 _HologramStripeColor;
	#endif

	#if CHROMABERR_ON
		half _ChromAberrAmount, _ChromAberrAlpha;
	#endif

	#if GLITCH_ON
		half _GlitchAmount, _GlitchSize;
	#endif

	#if FLICKER_ON
		half _FlickerFreq, _FlickerPercent, _FlickerAlpha;
	#endif

	#if SHADOW_ON
		half _ShadowX, _ShadowY, _ShadowAlpha;
		half4 _ShadowColor;
	#endif

	#if SHINE_ON
		half4 _ShineColor;
		half _ShineLocation, _ShineRotate, _ShineWidth, _ShineGlow;
	#endif

	#if CONTRAST_ON
		half _Contrast, _Brightness;
	#endif

	#if OVERLAY_ON
		half4 _OverlayTex_ST, _OverlayColor;
		half _OverlayGlow, _OverlayBlend, _OverlayTextureScrollXSpeed, _OverlayTextureScrollYSpeed;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if WIND_ON
		half _GrassSpeed, _GrassWind, _GrassManualAnim, _GrassRadialBend;
	#endif

	#if WAVEUV_ON
		float _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if RECTSIZE_ON
		half _RectSize;
	#endif

	#if OFFSETUV_ON
		half _OffsetUvX, _OffsetUvY;
	#endif

	#if CLIPPING_ON
		half _ClipUvLeft, _ClipUvRight, _ClipUvUp, _ClipUvDown;
	#endif

	#if RADIALCLIPPING_ON
		half _RadialStartAngle, _RadialClip, _RadialClip2;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if ZOOMUV_ON
		half _ZoomUvAmount;
	#endif

	#if WARP_ON
		half _WarpStrength, _WarpSpeed, _WarpScale;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if ROTATEUV_ON
		half _RotateUvAmount;
	#endif

	#if FISHEYE_ON
		half _FishEyeUvAmount;
	#endif

	#if PINCH_ON
		half _PinchUvAmount;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif

	float _RandomSeed;




            CBUFFER_END

            

            

            
	
	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if GLOW_ON
		TEXTURE2D(_GlowTex);
		SAMPLER(sampler_GlowTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);

		TEXTURE2D(_FadeBurnTex);
		SAMPLER(sampler_FadeBurnTex);
	#endif

	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);	
	#endif

	#if OUTTEX_ON
		TEXTURE2D(_OutlineTex);
		SAMPLER(sampler_OutlineTex);
	#endif

	#if OUTDIST_ON
		TEXTURE2D(_OutlineDistortTex);
		SAMPLER(sampler_OutlineDistortTex);
	#endif

	#if COLORSWAP_ON
		TEXTURE2D(_ColorSwapTex);
		SAMPLER(sampler_ColorSwapTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTex);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif

	#if SHINE_ON
		TEXTURE2D(_ShineMask);
		SAMPLER(sampler_ShineMask);
	#endif

	#if OVERLAY_ON
		TEXTURE2D(_OverlayTex);
		SAMPLER(sampler_OverlayTex);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif


	half3 GetPixel(in int offsetX, in int offsetY, in half2 uv, in Texture2D _tex, in SamplerState _sampler)
	{
		half2 _uv = uv + half2(offsetX * _MainTex_TexelSize.x, offsetY * _MainTex_TexelSize.y);
		half4 col = SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
		return col.rgb;
	}


	//BLURS-------------------------------------------------------------------------
	half4 Blur(half2 uv, Texture2D source, SamplerState sampler_source, half Intensity)
	{
		const half2 texelSize = 1.0 / _ScreenParams.xy;
		const half4 color = SAMPLE_TEXTURE2D(source, sampler_source, uv);
		const half2 offset = Intensity * texelSize;

		half4 accumulatedColor = color;
		half accumulatedWeight = 1.0;
		for (int x = -1; x <= 1; x++)
		{
			for (int y = -1; y <= 1; y++)
			{
				const half2 sampleUV = uv + half2(x, y) * offset;
				const half4 sampleColor = SAMPLE_TEXTURE2D(source, sampler_source, sampleUV);

				accumulatedColor += sampleColor;
				accumulatedWeight += 1.0;
			}
		}

		half4 blurredColor = accumulatedColor / accumulatedWeight;
		return blurredColor;
	}

	half BlurHD_G(half bhqp, half x)
	{
		return exp(-(x * x) / (2.0 * bhqp * bhqp));
	}
	half4 BlurHD(half2 uv, Texture2D source, SamplerState sampler_source, half BlurAmount, half xScale, half yScale)
	{
		int iterations = 16;
		int halfIterations = iterations / 2;
		half sigmaX = 0.1 + BlurAmount * 0.5;
		half sigmaY = sigmaX;
		half total = 0.0;
		half4 ret = half4(0, 0, 0, 0);
		for (int iy = 0; iy < iterations; ++iy)
		{
			half fy = BlurHD_G(sigmaY, half(iy) -half(halfIterations));
			half offsetY = half(iy - halfIterations) * 0.00390625 * xScale;
			for (int ix = 0; ix < iterations; ++ix)
			{
				half fx = BlurHD_G(sigmaX, half(ix) - half(halfIterations));
				half offsetX = half(ix - halfIterations) * 0.00390625 * yScale;
				total += fx * fy;
				ret += SAMPLE_TEXTURE2D(source, sampler_source, uv + half2(offsetX, offsetY)) * fx * fy;
			}
		}
		return ret / total;
	}
	//-----------------------------------------------------------------------


	//-------------------------------------------
	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax){
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}
	//-------------------------------------------

	//-----------------------------------------------------------------------
	half rand(half2 seed, half offset) {
		return (frac(sin(dot(seed, half2(12.9898, 78.233))) * 43758.5453) + offset) % 1.0;
	}

	half rand2(half2 seed, half offset) {
		return (frac(sin(dot(seed * floor(50 + (_Time.x % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}

	half rand2CustomTime(half2 seed, half offset, half customTime) {
		return (frac(sin(dot(seed * floor(50 + (customTime % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}
	//-----------------------------------------------------------------------


	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//BILBOARD_ON
		#if BILBOARD_ON
			half3 camRight = mul((half3x3)unity_CameraToWorld, half3(1,0,0));
			half3 camUp = half3(0,1,0);
			#if BILBOARDY_ON
				camUp = mul((half3x3)unity_CameraToWorld, half3(0,1,0));
			#endif
			half3 localPos = v.vertex.x * camRight + v.vertex.y * camUp;
			v.vertex = half4(localPos, 1);
		#endif
        //-----------------------------------------------------------

        v.texcoord0.xy = TRANSFORM_TEX(v.texcoord0.xy, _MainTex);
		half2 center = half2(0.5, 0.5);
        #if ATLAS_ON
		    center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
		#endif
		
		//POLARUV_ON
		#if POLARUV_ON
			v.texcoord0.xy = v.texcoord0.xy - center;
		#endif

		//----------------------------------------

		//ROTATEUV_ON
		#if ROTATEUV_ON
			half2 uvC = v.texcoord0.xy;
			half cosAngle = cos(_RotateUvAmount);
			half sinAngle = sin(_RotateUvAmount);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvC -= center;
			v.texcoord0.xy = mul(rot, uvC);
			v.texcoord0.xy += center;
		#endif
		//--------------------

		#if RECTSIZE_ON
			v.vertex.xyz += (v.vertex.xyz * (_RectSize - 1.0));
		#endif

		#if OUTTEX_ON
			v.texcoord1.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineTex);
		#endif

		#if OUTDIST_ON
			v.texcoord2.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineDistortTex);
		#endif

		#if DISTORT_ON
			v.texcoord3.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		half randomSeed = _RandomSeed;

		float2 uvRect = d.texcoord0;
		half2 center = half2(0.5, 0.5);
		#if ATLAS_ON
			center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
			uvRect = half2((d.texcoord0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord0.y - _MinYUV) / (_MaxYUV - _MinYUV));
		#endif
		half2 centerTiled = half2(center.x *  _MainTex_ST.x, center.y *  _MainTex_ST.y);

		//CLIPPING_ON
		#if CLIPPING_ON
			half2 tiledUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv = half2((tiledUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			clip((1 - _ClipUvUp) - tiledUv.y);
			clip(tiledUv.y - _ClipUvDown);
			clip((1 - _ClipUvRight) - tiledUv.x);
			clip(tiledUv.x - _ClipUvLeft);
		#endif
		//----------------------------------

		//RADIALCLIPPING_ON
		#if RADIALCLIPPING_ON
			half2 tiledUv2 = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv2 = half2((tiledUv2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half startAngle = _RadialStartAngle - _RadialClip;
			half endAngle = _RadialStartAngle + _RadialClip2;
			half offset0 = clamp(0, 360, startAngle + 360);
			half offset360 = clamp(0, 360, endAngle - 360);
			half2 atan2Coord = half2(lerp(-1, 1, tiledUv2.x), lerp(-1, 1, tiledUv2.y));
			half atanAngle = atan2(atan2Coord.y, atan2Coord.x) * 57.3; // angle in degrees
			if(atanAngle < 0) atanAngle = 360 + atanAngle;
			if(atanAngle >= startAngle && atanAngle <= endAngle) discard;
			if(atanAngle <= offset360) discard;
			if(atanAngle >= offset0) discard;
		#endif

		//-----------------------------

		//TEXTURESCROLL_ON && ATLAS_ON
		#if TEXTURESCROLL_ON && ATLAS_ON
			d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs(((_Time.y + randomSeed) * _TextureScrollXSpeed) + uvRect.x) % 1)),
			_MinYUV + ((_MaxYUV - _MinYUV) * (abs(((_Time.y + randomSeed) * _TextureScrollYSpeed) + uvRect.y) % 1)));
		#endif
		//----------------------------

		//OFFSETUV_ON
		#if OFFSETUV_ON
			#if ATLAS_ON
				d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs((_OffsetUvX + uvRect.x) % 1))),
				_MinYUV + ((_MaxYUV - _MinYUV) * (abs(_OffsetUvY + uvRect.y) % 1)));
			#else
				d.texcoord0.xy += half2(_OffsetUvX, _OffsetUvY);
			#endif
		#endif

		//----------------------

		//POLARUV_ON
		#if POLARUV_ON
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (2.0f * 3.141592653589f), length(d.texcoord0.xy));
			d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		//--------------------------------------

		//TWISTUV_ON
		#if TWISTUV_ON
			#if ATLAS_ON
				_TwistUvPosX = ((_MaxXUV - _MinXUV) * _TwistUvPosX) + _MinXUV;
				_TwistUvPosY = ((_MaxYUV - _MinYUV) * _TwistUvPosY) + _MinYUV;
			#endif
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		//--------------------------------------------

		//FISHEYE_ON
		#if FISHEYE_ON
			half bind = length(centerTiled);
			half2 dF = d.texcoord0.xy - centerTiled;
			half dFlen = length(dF);
			half fishInt = (3.14159265359 / bind) * (_FishEyeUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + (dF / (max(0.0001, dFlen))) * tan(dFlen * fishInt) * bind / tan(bind * fishInt);
		#endif
		//---------------------------------------------

		//PINCH_ON
		#if PINCH_ON
			half2 dP = d.texcoord0.xy - centerTiled;
			half pinchInt = (3.141592 / length(centerTiled)) * (-_PinchUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + normalize(dP) * atan(length(dP) * -pinchInt * 10.0) * 0.5 / atan(-pinchInt * 5);
		#endif

		//---------------------------------------------

		//ZOOMUV_ON
		#if ZOOMUV_ON
			d.texcoord0.xy -= centerTiled;
			d.texcoord0.xy = d.texcoord0.xy * _ZoomUvAmount;
			d.texcoord0.xy += centerTiled;
		#endif

		//-----------------------------------------------

		//DOODLE_ON
		#if DOODLE_ON
			half2 uvCopy = uvRect;
			_HandDrawnSpeed = (floor((_Time.x + randomSeed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		//--------------------------

		//SHAKEUV_ON
		#if SHAKEUV_ON
			half xShake = sin((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		//-------------------------------------------

		//RECTSIZE_ON
		#if RECTSIZE_ON
			d.texcoord0.xy = d.texcoord0.xy * (_RectSize).xx + (((-_RectSize * 0.5) + 0.5)).xx;
		#endif

		//-------------------------------------------

		//DISTORT_ON
		#if DISTORT_ON
			#if ATLAS_ON
				d.texcoord3.x = d.texcoord3.x * (1 / (_MaxXUV - _MinXUV));
				d.texcoord3.y = d.texcoord3.y * (1 / (_MaxYUV - _MinYUV)); 
			#endif

			d.texcoord3.x += ((_Time.x + _RandomSeed) * _DistortTexXSpeed) % 1;
			d.texcoord3.y += ((_Time.x + _RandomSeed) * _DistortTexYSpeed) % 1;
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, d.texcoord3.xy).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif
		//-------------------------------------------------------

		//WARP_ON
		#if WARP_ON
            half2 warpUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				warpUv = half2((warpUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (warpUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			const float tau = 6.283185307179586;
            float xWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.x * tau / _WarpScale;
            float yWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.y * tau / _WarpScale;
            float2 warp = float2(sin(xWarp), sin(yWarp)) * _WarpStrength;
            d.texcoord0.xy += warp;
		#endif

		//-------------------------------------------------------

		//WAVEUV_ON
		#if WAVEUV_ON
			float2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
            uvWave %= 1;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
            float waveTime = _Time.y + randomSeed;
			float angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((waveTime *  _WaveSpeed));
			d.texcoord0.xy = d.texcoord0.xy + uvWave * sin(angWave) * (_WaveStrength / 1000.0);
		#endif
		//----------------------------------------------------

		//ROUNDWAVEUV_ON
		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - uvRect.x);
			half yWave = ((0.5 * _MainTex_ST.y) - uvRect.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
			d.texcoord0.xy += (sin((ripple + (_Time.y + randomSeed) * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif
		//----------------------------------------------------


		//WIND_ON
		#if WIND_ON
			half windOffset = sin((_Time.x + randomSeed) * _GrassSpeed * 10);
			half2 windCenter = half2(0.5, 0.1);
			#if ATLAS_ON
				windCenter.x = ((_MaxXUV - _MinXUV) * windCenter.x) + _MinXUV;
				windCenter.y = ((_MaxYUV - _MinYUV) * windCenter.y) + _MinYUV;
			#endif
			#if !MANUALWIND_ON
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * windOffset), uvRect.y)), 1);
			#else
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * _GrassManualAnim), uvRect.y)), 1);
				windOffset = _GrassManualAnim;
			#endif
			half2 delta = d.texcoord0.xy - windCenter;
			half delta2 = dot(delta.xy, delta.xy);
			half2 delta_offset = delta2 * windOffset;
			d.texcoord0.xy = d.texcoord0.xy + half2(delta.y, -delta.x) * delta_offset * _GrassRadialBend;
		#endif

		//--------------------------------------------------------

		//TEXTURESCROLL_ON && !ATLAS_ON
		#if TEXTURESCROLL_ON && !ATLAS_ON
			d.texcoord0.x += ((_Time.y + randomSeed) * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += ((_Time.y + randomSeed) * _TextureScrollYSpeed) % 1;
		#endif
		//------------------------------

		//PIXELATE_ON
		#if PIXELATE_ON
            half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif
		//--------------

		half4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy);
		half originalAlpha = col.a;
		col *= d.vertexColor;

		//NORMAL MAP
		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif
        float normalSign = sign(dot(d.worldSpaceViewDir, d.worldSpaceNormal));
        o.Normal *= normalSign;


		//GLITCH_ON
		#if GLITCH_ON
			half2 uvGlitch = uvRect;
			uvGlitch.y -= 0.5;
			half lineNoise = pow(rand2(floor(uvGlitch * half2(24., 19.) * _GlitchSize) * 4.0, randomSeed), 3.0) * _GlitchAmount
				* pow(rand2(floor(uvGlitch * half2(38., 14.) * _GlitchSize) * 4.0, randomSeed), 3.0);
			col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(lineNoise * 0.02 * rand2(half2(2.0, 1), randomSeed), 0)) * d.vertexColor;
		#endif
		//--------------------------------------

		//CHROMABERR_ON
		#if CHROMABERR_ON
			half4 r = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ChromAberrAmount/10, 0))	* d.vertexColor;
			half4 b = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-_ChromAberrAmount/10, 0)) * d.vertexColor;
			col = half4(r.r * r.a, col.g, b.b * b.a, max(max(r.a, b.a) * _ChromAberrAlpha, col.a));
		#endif

		//--------------------------------

		//BLUR_ON
		#if BLUR_ON
			#if ATLAS_ON
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, (_MaxXUV - _MinXUV), (_MaxYUV - _MinYUV)) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity * (_MaxXUV - _MinXUV)) * d.vertexColor;
				#endif
			#else
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, 1, 1) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity) * d.vertexColor;
				#endif
			#endif
        #endif

		//--------------------

		//MOTIONBLUR_ON
		#if MOTIONBLUR_ON
			_MotionBlurAngle = _MotionBlurAngle * 3.1415926;
			#define rot(n) mul(n, half2x2(cos(_MotionBlurAngle), -sin(_MotionBlurAngle), sin(_MotionBlurAngle), cos(_MotionBlurAngle)))
			_MotionBlurDist = _MotionBlurDist * 0.005;
			#if ATLAS_ON
				_MotionBlurDist *= (_MaxXUV - _MinXUV);
			#endif
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist, -_MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 2, -_MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 3, -_MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 4, -_MotionBlurDist * 4)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist, _MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 2, _MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 3, _MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 4, _MotionBlurDist * 4)));
			col.rgb = col.rgb / 9;
        #endif
		//------------------------------------

		//NEGATIVE_ON
		#if NEGATIVE_ON
			col.rgb = lerp(col.rgb, 1 - col.rgb, _NegativeAmount);
		#endif

		//--------------
		half luminance = 0;

		//GREYSCALE_ON && !GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && !GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif
		//------------------------------------

		//GHOST_ON
		#if GHOST_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 ghostResult;
			ghostResult.a = saturate(luminance - _GhostTransparency) * col.a;
			ghostResult.rgb = col.rgb * (luminance + _GhostColorBoost);
			col = lerp(col, ghostResult, _GhostBlend);
		#endif
		//------------------------------------

		//INNEROUTLINE_ON
		#if INNEROUTLINE_ON
			half3 innerT = abs(GetPixel(0, _InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(0, -_InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex));
			innerT += abs(GetPixel(_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(-_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex));
			#if !ONLYINNEROUTLINE_ON
				innerT = (innerT / 2.0) * col.a * _InnerOutlineAlpha;
				col.rgb += length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
			#else
				innerT *= col.a * _InnerOutlineAlpha;
				col.rgb = length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
				col.a = step(0.3, col.r+col.g+col.b);
			#endif
		#endif
		//-------------------------------------------------------

		//HITEFFECT_ON
		#if HITEFFECT_ON
			col.rgb = lerp(col.rgb, _HitEffectColor.rgb * _HitEffectGlow, _HitEffectBlend);
		#endif
		//--------------------

		//GRADIENT_ON
		#if GRADIENT_ON
			half2 tiledUvGrad = half2(uvRect.x / _MainTex_ST.x, uvRect.y / _MainTex_ST.y);
			#if GRADIENT2COL_ON
				_GradTopRightCol = _GradTopLeftCol;
				_GradBotRightCol = _GradBotLeftCol;
			#endif
			#if RADIALGRADIENT_ON
				half radialDist = 1 - length(tiledUvGrad - half2(0.5, 0.5));
				radialDist *= (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
				radialDist = saturate(_GradBoostX * radialDist);
				half4 gradientResult = lerp(_GradTopLeftCol, _GradBotLeftCol, radialDist);
			#else
				half gradXLerpFactor = saturate(pow(tiledUvGrad.x, _GradBoostX));
				half4 gradientResult = lerp(lerp(_GradBotLeftCol, _GradBotRightCol, gradXLerpFactor),
				lerp(_GradTopLeftCol, _GradTopRightCol, gradXLerpFactor), saturate(pow(tiledUvGrad.y, _GradBoostY)));
			#endif
			gradientResult = lerp(col, gradientResult, _GradBlend);
			col.rgb = gradientResult.rgb * col.a;
			col.a *= gradientResult.a;
		#endif
		//--------------------------------------------------------------------

		//CONTRAST_ON
		#if CONTRAST_ON
			col.rgb = (col.rgb - float3(0.5, 0.5, 0.5)) * _Contrast + float3(0.5, 0.5, 0.5);
			col.rgb += _Brightness;
		#endif

		//-------------------------------------------------------------------

		//COLORSWAP_ON
		#if COLORSWAP_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 swapMask = SAMPLE_TEXTURE2D(_ColorSwapTex, sampler_ColorSwapTex, d.texcoord0.xy);
			swapMask.rgb *= swapMask.a;
			half3 redSwap = _ColorSwapRed * swapMask.r * saturate(luminance + _ColorSwapRedLuminosity);
			half3 greenSwap = _ColorSwapGreen * swapMask.g * saturate(luminance + _ColorSwapGreenLuminosity);
			half3 blueSwap = _ColorSwapBlue * swapMask.b * saturate(luminance + _ColorSwapBlueLuminosity);
			swapMask.rgb = col.rgb * saturate(1 - swapMask.r - swapMask.g - swapMask.b);
			col.rgb = lerp(col.rgb, swapMask.rgb + redSwap + greenSwap + blueSwap, _ColorSwapBlend);
		#endif
		//--------------------------------------------------------------------

		//COLORRAMP_ON && !COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && !COLORRAMPOUTLINE_ON 
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//--------------------------------------------------------------------

		//CHANGECOLOR_ON
		#if CHANGECOLOR_ON
			float3 currChangeColor = saturate(col.rgb);
			luminance = 0.3 * currChangeColor.r + 0.59 * currChangeColor.g + 0.11 * currChangeColor.b;
			luminance = saturate(luminance + _ColorChangeLuminosity);
			half3 dif = abs(currChangeColor - _ColorChangeTarget.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance), 0.0));
			#if CHANGECOLOR2_ON
			dif = abs(currChangeColor - _ColorChangeTarget2.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol2.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance2), 0.0));
			#endif
			#if CHANGECOLOR3_ON
			dif = abs(currChangeColor - _ColorChangeTarget3.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol3.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance3), 0.0));
			#endif
		#endif
		//-------------------------------------------------------

		//POSTERIZE_ON && !POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif
		//------------------------------------

		//HSV_ON
		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
			+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
			+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
			+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
			+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif
		//-------------------------------------------------------

		//OVERLAY_ON
		#if OVERLAY_ON
			half2 overlayUvs = d.texcoord0.xy;
			overlayUvs.x += ((_Time.y + randomSeed) * _OverlayTextureScrollXSpeed) % 1;
			overlayUvs.y += ((_Time.y + randomSeed) * _OverlayTextureScrollYSpeed) % 1;
			half4 overlayCol = SAMPLE_TEXTURE2D(_OverlayTex, sampler_OverlayTex, TRANSFORM_TEX(overlayUvs, _OverlayTex));
			overlayCol.rgb *= _OverlayColor.rgb * _OverlayGlow;
			#if !OVERLAYMULT_ON
				overlayCol.rgb *= overlayCol.a * _OverlayColor.rgb * _OverlayColor.a * _OverlayBlend;
				col.rgb += overlayCol.rgb;
			#else
				overlayCol.a *= _OverlayColor.a;
				col = lerp(col, col * overlayCol, _OverlayBlend);
			#endif
		#endif

		//---------------------------------

		//OUTBASE_ON
		#if OUTBASE_ON
			#if OUTBASEPIXELPERF_ON
				half2 destUv = half2(_OutlinePixelWidth * _MainTex_TexelSize.x, _OutlinePixelWidth * _MainTex_TexelSize.y);
			#else
				half2 destUv = half2(_OutlineWidth * _MainTex_TexelSize.x * 200, _OutlineWidth * _MainTex_TexelSize.y * 200);
			#endif

			#if OUTDIST_ON
				d.texcoord3.x += ((_Time.x + _RandomSeed) * _OutlineDistortTexXSpeed) % 1;
				d.texcoord3.y += ((_Time.x + _RandomSeed) * _OutlineDistortTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord3 = half2((d.texcoord3.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord3.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half outDistortAmnt = (SAMPLE_TEXTURE2D(_OutlineDistortTex, sampler_OutlineDistortTex, d.texcoord3).r - 0.5) * 0.2 * _OutlineDistortAmount;
				destUv.x += outDistortAmnt;
				destUv.y += outDistortAmnt;
			#endif

			half spriteLeft		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, 0)).a;
			half spriteRight	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(destUv.x, 0)).a;
			half spriteBottom	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(0, destUv.y)).a;
			half spriteTop		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(0, destUv.y)).a;
			half result = spriteLeft + spriteRight + spriteBottom + spriteTop;

			#if OUTBASE8DIR_ON
				half spriteTopLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, destUv.y)).a;
				half spriteTopRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, destUv.y)).a;
				half spriteBotLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, -destUv.y)).a;
				half spriteBotRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, -destUv.y)).a;
				result = result + spriteTopLeft + spriteTopRight + spriteBotLeft + spriteBotRight;
			#endif
					
			result = step(0.05, saturate(result));

			#if OUTTEX_ON
				d.texcoord1.x += ((_Time.x + _RandomSeed) * _OutlineTexXSpeed) % 1;
				d.texcoord1.y += ((_Time.x + _RandomSeed) * _OutlineTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord1 = half2((d.texcoord1.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half4 tempOutColor = SAMPLE_TEXTURE2D(_OutlineTex, sampler_OutlineTex, d.texcoord1);
				tempOutColor *= _OutlineColor;
				_OutlineColor = tempOutColor;
			#endif

			result *= (1 - originalAlpha) * _OutlineAlpha;

			half4 outline = _OutlineColor * d.vertexColor.a;
			outline.rgb *= _OutlineGlow;
			outline.a = result;
			#if ONLYOUTLINE_ON
			col = outline;
			#else
			col = lerp(col, outline, result);
			#endif
		#endif
		//-------------------------------------------------------

		//FADE_ON
		#if FADE_ON
			half2 tiledUvFade1	= TRANSFORM_TEX(d.texcoord0, _FadeTex);
			half2 tiledUvFade2	= TRANSFORM_TEX(d.texcoord0, _FadeBurnTex);
			#if ATLAS_ON
				tiledUvFade1 = half2((tiledUvFade1.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				tiledUvFade2 = half2((tiledUvFade2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half fadeTemp = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
			half fade = smoothstep(_FadeAmount, _FadeAmount + _FadeBurnTransition, fadeTemp);
			half fadeBurn = saturate(smoothstep(_FadeAmount - _FadeBurnWidth, _FadeAmount - _FadeBurnWidth + 0.1, fadeTemp) * _FadeAmount);
			col.a *= fade;
			_FadeBurnColor.rgb *= _FadeBurnGlow;
			col += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2) * _FadeBurnColor * originalAlpha * (1 - col.a);
		#endif
		//-------------------------------------------------------

		//SHADOW_ON
		#if SHADOW_ON
			half shadowA = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ShadowX, _ShadowY)).a;
			half preMultShadowMask = 1 - (saturate(shadowA - col.a) * (1 - col.a));
			col.rgb *= 1 - ((shadowA - col.a) * (1 - col.a));
			col.rgb += (_ShadowColor * shadowA) * (1 - col.a);
			col.a = max(shadowA * _ShadowAlpha * d.vertexColor.a, col.a);
		#endif

		//-------------------------------------------------------

		//GLOW_ON
		#if GLOW_ON
			half4 emission;
			#if GLOWTEX_ON
				emission = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, d.texcoord0);
			#else
				emission = col;
			#endif

			col.rgb *= _GlowGlobal;
			emission.rgb *= emission.a * col.a * _Glow * _GlowColor;
			col.rgb += emission.rgb;
		#endif
		//-------------------------------------------------------

		//COLORRAMP_ON && COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && COLORRAMPOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//---------------

		//GREYSCALE_ON && GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif

		//-----------------------------------

		//POSTERIZE_ON && POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif

		//-----------------------------------

		//SHINE_ON
		#if SHINE_ON
			half2 uvShine = uvRect;
			half cosAngle = cos(_ShineRotate);
			half sinAngle = sin(_ShineRotate);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvShine -= half2(0.5, 0.5);
			uvShine = mul(rot, uvShine);
			uvShine += half2(0.5, 0.5);
			half shineMask = SAMPLE_TEXTURE2D(_ShineMask, sampler_ShineMask, d.texcoord0.xy).a;
			half currentDistanceProjection = (uvShine.x + uvShine.y) / 2;
			half whitePower = 1 - (abs(currentDistanceProjection - _ShineLocation) / _ShineWidth);
			col.rgb +=  col.a * whitePower * _ShineGlow * max(sign(currentDistanceProjection - (_ShineLocation - _ShineWidth)), 0.0)
			* max(sign((_ShineLocation + _ShineWidth) - currentDistanceProjection), 0.0) * _ShineColor * shineMask;
		#endif

		//-----------------------------------

		//HOLOGRAM_ON
		#if HOLOGRAM_ON
			half totalHologram = _HologramStripesAmount + _HologramUnmodAmount;
			half hologramYCoord = ((uvRect.y + (((_Time.x + randomSeed) % 1) * _HologramStripesSpeed)) % totalHologram) / totalHologram;
			hologramYCoord = abs(hologramYCoord);
			half alpha = RemapFloat(saturate(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0, 1.0, _HologramMinAlpha, saturate(_HologramMaxAlpha));
			half hologramMask = max(sign((_HologramUnmodAmount/totalHologram) - hologramYCoord), 0.0);
			half4 hologramResult = col;
			hologramResult.a *= lerp(alpha, 1, hologramMask);
			hologramResult.rgb *= max(1, _HologramMaxAlpha * max(sign(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0));
			hologramMask = 1 - step(0.01,hologramMask);
			hologramResult.rgb += hologramMask * _HologramStripeColor * col.a;
			col = lerp(col, hologramResult, _HologramBlend);
		#endif

		//-----------------------------------

		//FLICKER_ON
		#if FLICKER_ON
			col.a *= saturate(col.a * step(frac(0.05 + (_Time.w + randomSeed) * _FlickerFreq), 1 - _FlickerPercent) + _FlickerAlpha);
		#endif
		//-----------------------------------

		//ALPHACUTOFF_ON

		//ALPHAROUND_ON

		//ALPHAOUTLINE_ON
		#if ALPHAOUTLINE_ON
			half alphaOutlineRes = pow(1 - col.a, max(_AlphaOutlinePower, 0.0001)) * step(_AlphaOutlineMinAlpha, col.a) * _AlphaOutlineBlend;
			col.rgb = lerp(col.rgb, _AlphaOutlineColor.rgb * _AlphaOutlineGlow, alphaOutlineRes);
			col.a = lerp(col.a, 1, alphaOutlineRes > 1);
		#endif
		//-------------------------------------------------------

		//FOG_ON

		//------------------

        col *= _Color;
		o.Albedo = col;
		col.a *= _Alpha;
        clip(col.a - _AlphaCutoffValue - 0.01);
		o.Alpha = col.a;
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


            


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
             d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenPos = i.screenPos;
            // d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

            
         #if defined(_PASSSHADOW)
            float3 _LightDirection;
            float3 _LightPosition;
         #endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           
           VertexToPixel o = (VertexToPixel)0;

           UNITY_SETUP_INSTANCE_ID(v);
           UNITY_TRANSFER_INSTANCE_ID(v, o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

            o.texcoord0 = v.texcoord0;
            o.texcoord1 = v.texcoord1;
            o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
            o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif
           
           VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);
           o.worldPos = TransformObjectToWorld(v.vertex.xyz);
           o.worldNormal = TransformObjectToWorldNormal(v.normal);
           o.worldTangent = float4(TransformObjectToWorldDir(v.tangent.xyz), v.tangent.w);

          // For some very odd reason, in 2021.2, we can't use Unity's defines, but have to use our own..
          #if _PASSSHADOW
              #if _CASTING_PUNCTUAL_LIGHT_SHADOW
                 float3 lightDirectionWS = normalize(_LightPosition - o.worldPos);
              #else
                 float3 lightDirectionWS = _LightDirection;
              #endif
              // Define shadow pass specific clip position for Universal
              o.pos = TransformWorldToHClip(ApplyShadowBias(o.worldPos, o.worldNormal, lightDirectionWS));
              #if UNITY_REVERSED_Z
                  o.pos.z = min(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #else
                  o.pos.z = max(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #endif
          #elif _PASSMETA
              o.pos = MetaVertexPosition(float4(v.vertex.xyz, 0), v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
          #else
              o.pos = TransformWorldToHClip(o.worldPos);
          #endif

          // #if %SCREENPOSREQUIREKEY%
          // o.screenPos = ComputeScreenPos(o.pos, _ProjectionParams.x);
          // #endif

          #if _PASSFORWARD || _PASSGBUFFER
              float2 uv1 = v.texcoord1.xy;
              OUTPUT_LIGHTMAP_UV(uv1, unity_LightmapST, o.lightmapUV);
               o.texcoord1.xy = uv1;
              OUTPUT_SH(o.worldNormal, o.sh);
              #if defined(DYNAMICLIGHTMAP_ON)
                   o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
              #endif
          #endif

          #ifdef VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
              half fogFactor = 0;
              #if defined(_FOG_FRAGMENT)
                fogFactor = ComputeFogFactor(o.pos.z);
              #endif
              #if _BAKEDLIT
                 o.fogFactorAndVertexLight = half4(fogFactor, 0, 0, 0);
              #else
                 half3 vertexLight = VertexLighting(o.worldPos, o.worldNormal);
                 o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
              #endif
          #endif

          #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
             o.shadowCoord = GetShadowCoord(vertexInput);
          #endif

           return o;
         }


            

            // fragment shader
            half4 Frag (VertexToPixel IN
               #if NEED_FACING
                  , bool facing : SV_IsFrontFace
               #endif
            ) : SV_Target
            {
               UNITY_SETUP_INSTANCE_ID(IN);

               ShaderData d = CreateShaderData(IN
                  #if NEED_FACING
                     , facing
                  #endif
               );

               Surface l = (Surface)0;

               l.Albedo = half3(0.5, 0.5, 0.5);
               l.Normal = float3(0,0,1);
               l.Occlusion = 1;
               l.Alpha = 1;

               ChainSurfaceFunction(l, d);

               MetaInput metaInput = (MetaInput)0;
               metaInput.Albedo = l.Albedo;
               metaInput.Emission = l.Emission;

               return MetaFragment(metaInput);

            }

         ENDHLSL

      }


      
        Pass
        {
            Name "DepthNormals"
            Tags
            {
               "LightMode" = "DepthNormals"
            }
    
            // Render State
             Cull Back
                ZTest LEqual
                ZWrite On

            	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" "PreviewType" = "Plane" }
	Cull [_CullingOption]
	ZWrite [_ZWrite]
	ZTest [_ZTestMode]
	Blend SrcAlpha OneMinusSrcAlpha


            HLSLPROGRAM

               #pragma vertex Vert
   #pragma fragment Frag

            #pragma target 3.0

            #pragma prefer_hlslcc gles
            #pragma exclude_renderers d3d11_9x
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON
            #pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
            #pragma multi_compile_fragment _ _WRITE_RENDERING_LAYERS
        

            #define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
            #define _PASSDEPTH 1
            #define _PASSDEPTHNORMALS 1


            
	#pragma shader_feature_local GLOW_ON
	#pragma shader_feature_local FADE_ON
	#pragma shader_feature_local OUTBASE_ON
	#pragma shader_feature_local ONLYOUTLINE_ON
	#pragma shader_feature_local GRADIENT_ON
	#pragma shader_feature_local GRADIENT2COL_ON
	#pragma shader_feature_local RADIALGRADIENT_ON
	#pragma shader_feature_local COLORSWAP_ON
	#pragma shader_feature_local HSV_ON
	#pragma shader_feature_local CHANGECOLOR_ON
	#pragma shader_feature_local CHANGECOLOR2_ON
	#pragma shader_feature_local CHANGECOLOR3_ON
	#pragma shader_feature_local COLORRAMP_ON
	#pragma shader_feature_local GRADIENTCOLORRAMP_ON
	#pragma shader_feature_local HITEFFECT_ON
	#pragma shader_feature_local NEGATIVE_ON
	#pragma shader_feature_local PIXELATE_ON
	#pragma shader_feature_local GREYSCALE_ON
	#pragma shader_feature_local POSTERIZE_ON
	#pragma shader_feature_local BLUR_ON
	#pragma shader_feature_local MOTIONBLUR_ON
	#pragma shader_feature_local GHOST_ON
	#pragma shader_feature_local ALPHAOUTLINE_ON
	#pragma shader_feature_local INNEROUTLINE_ON
	#pragma shader_feature_local ONLYINNEROUTLINE_ON
	#pragma shader_feature_local HOLOGRAM_ON
	#pragma shader_feature_local CHROMABERR_ON
	#pragma shader_feature_local GLITCH_ON
	#pragma shader_feature_local FLICKER_ON
	#pragma shader_feature_local SHADOW_ON
	#pragma shader_feature_local SHINE_ON
	#pragma shader_feature_local CONTRAST_ON
	#pragma shader_feature_local OVERLAY_ON
	#pragma shader_feature_local OVERLAYMULT_ON
	#pragma shader_feature_local DOODLE_ON
	#pragma shader_feature_local WIND_ON
	#pragma shader_feature_local WAVEUV_ON
	#pragma shader_feature_local ROUNDWAVEUV_ON
	#pragma shader_feature_local RECTSIZE_ON
	#pragma shader_feature_local OFFSETUV_ON
	#pragma shader_feature_local CLIPPING_ON
	#pragma shader_feature_local RADIALCLIPPING_ON
	#pragma shader_feature_local TEXTURESCROLL_ON
	#pragma shader_feature_local ZOOMUV_ON
	#pragma shader_feature_local DISTORT_ON
	#pragma shader_feature_local WARP_ON
	#pragma shader_feature_local TWISTUV_ON
	#pragma shader_feature_local ROTATEUV_ON
	#pragma shader_feature_local POLARUV_ON
	#pragma shader_feature_local FISHEYE_ON
	#pragma shader_feature_local PINCH_ON
	#pragma shader_feature_local SHAKEUV_ON

	#pragma shader_feature_local GLOWTEX_ON
	#pragma shader_feature_local OUTTEX_ON
	#pragma shader_feature_local OUTDIST_ON
	#pragma shader_feature_local OUTBASE8DIR_ON
	#pragma shader_feature_local OUTBASEPIXELPERF_ON
	#pragma shader_feature_local COLORRAMPOUTLINE_ON
	#pragma shader_feature_local GREYSCALEOUTLINE_ON
	#pragma shader_feature_local POSTERIZEOUTLINE_ON
	#pragma shader_feature_local BLURISHD_ON
	#pragma shader_feature_local MANUALWIND_ON
	#pragma shader_feature_local ATLAS_ON
	#pragma shader_feature_local PREMULTIPLYALPHA_ON

	#pragma shader_feature BILBOARD_ON
	#pragma shader_feature BILBOARDY_ON

	#pragma shader_feature NORMALMAP_ON


   #define _URP 1
#define _USINGTEXCOORD1 1
#define _USINGTEXCOORD2 1


            // this has to be here or specular color will be ignored. Not in SG code
            #if _SIMPLELIT
               #define _SPECULAR_COLOR
            #endif


            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Version.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/ShaderVariablesFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            

        

               #undef WorldNormalVector
      #define WorldNormalVector(data, normal) mul(normal, data.TBNMatrix)
      
      #define UnityObjectToWorldNormal(normal) mul(GetObjectToWorldMatrix(), normal)

      #define _WorldSpaceLightPos0 _MainLightPosition
      
      #define UNITY_DECLARE_TEX2D(name) TEXTURE2D(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2D_NOSAMPLER(name) TEXTURE2D(name);
      #define UNITY_DECLARE_TEX2DARRAY(name) TEXTURE2D_ARRAY(name); SAMPLER(sampler##name);
      #define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(name) TEXTURE2D_ARRAY(name);

      #define UNITY_SAMPLE_TEX2DARRAY(tex,coord)            SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
      #define UNITY_SAMPLE_TEX2DARRAY_LOD(tex,coord,lod)    SAMPLE_TEXTURE2D_ARRAY_LOD(tex, sampler##tex, coord.xy, coord.z, lod)
      #define UNITY_SAMPLE_TEX2D(tex, coord)                SAMPLE_TEXTURE2D(tex, sampler##tex, coord)
      #define UNITY_SAMPLE_TEX2D_SAMPLER(tex, samp, coord)  SAMPLE_TEXTURE2D(tex, sampler##samp, coord)

      #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod)   SAMPLE_TEXTURE2D_LOD(tex, sampler_##tex, coord, lod)
      #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) SAMPLE_TEXTURE2D_LOD (tex, sampler##samplertex,coord, lod)
     
      #if defined(UNITY_COMPILER_HLSL)
         #define UNITY_INITIALIZE_OUTPUT(type,name) name = (type)0;
      #else
         #define UNITY_INITIALIZE_OUTPUT(type,name)
      #endif

      #define sampler2D_float sampler2D
      #define sampler2D_half sampler2D

      

      // data across stages, stripped like the above.
      struct VertexToPixel
      {
         float4 pos : SV_POSITION;
         float3 worldPos : TEXCOORD0;
         float3 worldNormal : TEXCOORD1;
         float4 worldTangent : TEXCOORD2;
          float4 texcoord0 : TEXCOORD3;
          float4 texcoord1 : TEXCOORD4;
          float4 texcoord2 : TEXCOORD5;

         // #if %TEXCOORD3REQUIREKEY%
          float4 texcoord3 : TEXCOORD6;
         // #endif

         // #if %SCREENPOSREQUIREKEY%
         // float4 screenPos : TEXCOORD7;
         // #endif

         // #if %VERTEXCOLORREQUIREKEY%
          half4 vertexColor : COLOR;
         // #endif

         #if defined(LIGHTMAP_ON)
            float2 lightmapUV : TEXCOORD8;
         #endif
         #if defined(DYNAMICLIGHTMAP_ON)
            float2 dynamicLightmapUV : TEXCOORD9;
         #endif
         #if !defined(LIGHTMAP_ON)
            float3 sh : TEXCOORD10;
         #endif

         #if defined(VARYINGS_NEED_FOG_AND_VERTEX_LIGHT)
            float4 fogFactorAndVertexLight : TEXCOORD11;
         #endif

         #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
           float4 shadowCoord : TEXCOORD12;
         #endif

         // #if %EXTRAV2F0REQUIREKEY%
         // float4 extraV2F0 : TEXCOORD13;
         // #endif

         // #if %EXTRAV2F1REQUIREKEY%
         // float4 extraV2F1 : TEXCOORD14;
         // #endif

         // #if %EXTRAV2F2REQUIREKEY%
         // float4 extraV2F2 : TEXCOORD15;
         // #endif

         // #if %EXTRAV2F3REQUIREKEY%
         // float4 extraV2F3 : TEXCOORD16;
         // #endif

         // #if %EXTRAV2F4REQUIREKEY%
         // float4 extraV2F4 : TEXCOORD17;
         // #endif

         // #if %EXTRAV2F5REQUIREKEY%
         // float4 extraV2F5 : TEXCOORD18;
         // #endif

         // #if %EXTRAV2F6REQUIREKEY%
         // float4 extraV2F6 : TEXCOORD19;
         // #endif

         // #if %EXTRAV2F7REQUIREKEY%
         // float4 extraV2F7 : TEXCOORD20;
         // #endif

         #if UNITY_ANY_INSTANCING_ENABLED
         uint instanceID : CUSTOM_INSTANCE_ID;
         #endif
         #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
         uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
         #endif
         #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
         uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
         #endif
         #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
         FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
         #endif


      };


         
            
            // data describing the user output of a pixel
            struct Surface
            {
               half3 Albedo;
               half Height;
               half3 Normal;
               half Smoothness;
               half3 Emission;
               half Metallic;
               half3 Specular;
               half Occlusion;
               half SpecularPower; // for simple lighting
               half Alpha;
               float outputDepth; // if written, SV_Depth semantic is used. ShaderData.clipPos.z is unused value
               // HDRP Only
               half SpecularOcclusion;
               half SubsurfaceMask;
               half Thickness;
               half CoatMask;
               half CoatSmoothness;
               half Anisotropy;
               half IridescenceMask;
               half IridescenceThickness;
               int DiffusionProfileHash;
               float SpecularAAThreshold;
               float SpecularAAScreenSpaceVariance;
               // requires _OVERRIDE_BAKEDGI to be defined, but is mapped in all pipelines
               float3 DiffuseGI;
               float3 BackDiffuseGI;
               float3 SpecularGI;
               float ior;
               float3 transmittanceColor;
               float atDistance;
               float transmittanceMask;
               // requires _OVERRIDE_SHADOWMASK to be defines
               float4 ShadowMask;

               // for decals
               float NormalAlpha;
               float MAOSAlpha;


            };

            // Data the user declares in blackboard blocks
            struct Blackboard
            {
                
                float blackboardDummyData;
            };

            // data the user might need, this will grow to be big. But easy to strip
            struct ShaderData
            {
               float4 clipPos; // SV_POSITION
               float3 localSpacePosition;
               float3 localSpaceNormal;
               float3 localSpaceTangent;
        
               float3 worldSpacePosition;
               float3 worldSpaceNormal;
               float3 worldSpaceTangent;
               float tangentSign;

               float3 worldSpaceViewDir;
               float3 tangentSpaceViewDir;

               float4 texcoord0;
               float4 texcoord1;
               float4 texcoord2;
               float4 texcoord3;

               float2 screenUV;
               float4 screenPos;

               float4 vertexColor;
               bool isFrontFace;

               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;

               float3x3 TBNMatrix;
               Blackboard blackboard;
            };

            struct VertexData
            {
               #if SHADER_TARGET > 30
               // uint vertexID : SV_VertexID;
               #endif
               float4 vertex : POSITION;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;

               // optimize out mesh coords when not in use by user or lighting system
               #if _URP && (_USINGTEXCOORD1 || _PASSMETA || _PASSFORWARD || _PASSGBUFFER)
                  float4 texcoord1 : TEXCOORD1;
               #endif

               #if _URP && (_USINGTEXCOORD2 || _PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && defined(DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif

               #if _STANDARD && (_USINGTEXCOORD1 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER || _PASSFORWARDADD) && LIGHTMAP_ON)))
                  float4 texcoord1 : TEXCOORD1;
               #endif
               #if _STANDARD && (_USINGTEXCOORD2 || (_PASSMETA || ((_PASSFORWARD || _PASSGBUFFER) && DYNAMICLIGHTMAP_ON)))
                  float4 texcoord2 : TEXCOORD2;
               #endif


               #if _HDRP
                  float4 texcoord1 : TEXCOORD1;
                  float4 texcoord2 : TEXCOORD2;
               #endif

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD4; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity    : TEXCOORD5; // Add Precomputed Velocity (Alembic computes velocities on runtime side).
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct TessVertex 
            {
               float4 vertex : INTERNALTESSPOS;
               float3 normal : NORMAL;
               float4 tangent : TANGENT;
               float4 texcoord0 : TEXCOORD0;
               float4 texcoord1 : TEXCOORD1;
               float4 texcoord2 : TEXCOORD2;

               // #if %TEXCOORD3REQUIREKEY%
                float4 texcoord3 : TEXCOORD3;
               // #endif

               // #if %VERTEXCOLORREQUIREKEY%
                float4 vertexColor : COLOR;
               // #endif

               // #if %EXTRAV2F0REQUIREKEY%
               // float4 extraV2F0 : TEXCOORD5;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // float4 extraV2F1 : TEXCOORD6;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // float4 extraV2F2 : TEXCOORD7;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // float4 extraV2F3 : TEXCOORD8;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // float4 extraV2F4 : TEXCOORD9;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // float4 extraV2F5 : TEXCOORD10;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // float4 extraV2F6 : TEXCOORD11;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // float4 extraV2F7 : TEXCOORD12;
               // #endif

               #if _PASSMOTIONVECTOR || ((_PASSFORWARD || _PASSUNLIT) && defined(_WRITE_TRANSPARENT_MOTION_VECTOR))
                  float3 previousPositionOS : TEXCOORD13; // Contain previous transform position (in case of skinning for example)
                  #if defined (_ADD_PRECOMPUTED_VELOCITY)
                     float3 precomputedVelocity : TEXCOORD14;
                  #endif
               #endif

               UNITY_VERTEX_INPUT_INSTANCE_ID
               UNITY_VERTEX_OUTPUT_STEREO
            };

            struct ExtraV2F
            {
               float4 extraV2F0;
               float4 extraV2F1;
               float4 extraV2F2;
               float4 extraV2F3;
               float4 extraV2F4;
               float4 extraV2F5;
               float4 extraV2F6;
               float4 extraV2F7;
               Blackboard blackboard;
               float4 time;
            };


            float3 WorldToTangentSpace(ShaderData d, float3 normal)
            {
               return mul(d.TBNMatrix, normal);
            }

            float3 TangentToWorldSpace(ShaderData d, float3 normal)
            {
               return mul(normal, d.TBNMatrix);
            }

            // in this case, make standard more like SRPs, because we can't fix
            // unity_WorldToObject in HDRP, since it already does macro-fu there

            #if _STANDARD
               float3 TransformWorldToObject(float3 p) { return mul(unity_WorldToObject, float4(p, 1)); };
               float3 TransformObjectToWorld(float3 p) { return mul(unity_ObjectToWorld, float4(p, 1)); };
               float4 TransformWorldToObject(float4 p) { return mul(unity_WorldToObject, p); };
               float4 TransformObjectToWorld(float4 p) { return mul(unity_ObjectToWorld, p); };
               float4x4 GetWorldToObjectMatrix() { return unity_WorldToObject; }
               float4x4 GetObjectToWorldMatrix() { return unity_ObjectToWorld; }
               #if (defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (SHADER_TARGET_SURFACE_ANALYSIS && !SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord, lod) tex.SampleLevel (sampler##tex,coord, lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord, lod) tex.SampleLevel (sampler##samplertex,coord, lod)
              #else
                 #define UNITY_SAMPLE_TEX2D_LOD(tex,coord,lod) tex2D (tex,coord,0,lod)
                 #define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex,samplertex,coord,lod) tex2D (tex,coord,0,lod)
              #endif

               #undef GetWorldToObjectMatrix()

               #define GetWorldToObjectMatrix()   unity_WorldToObject


            #endif

            float3 GetCameraWorldPosition()
            {
               #if _HDRP
                  return GetCameraRelativePositionWS(_WorldSpaceCameraPos);
               #else
                  return _WorldSpaceCameraPos;
               #endif
            }

            #if _GRABPASSUSED
               #if _STANDARD
                  TEXTURE2D(%GRABTEXTURE%);
                  SAMPLER(sampler_%GRABTEXTURE%);
               #endif

               half3 GetSceneColor(float2 uv)
               {
                  #if _STANDARD
                     return SAMPLE_TEXTURE2D(%GRABTEXTURE%, sampler_%GRABTEXTURE%, uv).rgb;
                  #else
                     return SHADERGRAPH_SAMPLE_SCENE_COLOR(uv);
                  #endif
               }
            #endif


      
            #if _STANDARD
               UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
               float GetSceneDepth(float2 uv) { return SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv)); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv)); } 
            #else
               float GetSceneDepth(float2 uv) { return SHADERGRAPH_SAMPLE_SCENE_DEPTH(uv); }
               float GetLinear01Depth(float2 uv) { return Linear01Depth(GetSceneDepth(uv), _ZBufferParams); }
               float GetLinearEyeDepth(float2 uv) { return LinearEyeDepth(GetSceneDepth(uv), _ZBufferParams); } 
            #endif

            float3 GetWorldPositionFromDepthBuffer(float2 uv, float3 worldSpaceViewDir)
            {
               float eye = GetLinearEyeDepth(uv);
               float3 camView = mul((float3x3)GetObjectToWorldMatrix(), transpose(mul(GetWorldToObjectMatrix(), UNITY_MATRIX_I_V)) [2].xyz);

               float dt = dot(worldSpaceViewDir, camView);
               float3 div = worldSpaceViewDir/dt;
               float3 wpos = (eye * div) + GetCameraWorldPosition();
               return wpos;
            }

            #if _HDRP
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return GetAbsolutePositionWS(TransformObjectToWorld(pos));
            }
            #else
            float3 ObjectToWorldSpacePosition(float3 pos)
            {
               return TransformObjectToWorld(pos);
            }
            #endif

            #if _STANDARD
               UNITY_DECLARE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture);
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  float4 depthNorms = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_CameraDepthNormalsTexture, uv);
                  float3 norms = DecodeViewNormalStereo(depthNorms);
                  norms = mul((float3x3)GetWorldToViewMatrix(), norms) * 0.5 + 0.5;
                  return norms;
               }
            #elif _HDRP && !_DECALSHADER
               
               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  NormalData nd;
                  DecodeFromNormalBuffer(_ScreenSize.xy * uv, nd);
                  return nd.normalWS;
               }
            #elif _URP
               #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                  #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareNormalsTexture.hlsl"
               #endif

               float3 GetSceneNormal(float2 uv, float3 worldSpaceViewDir)
               {
                  #if (SHADER_LIBRARY_VERSION_MAJOR >= 10)
                     return SampleSceneNormals(uv);
                  #else
                     float3 wpos = GetWorldPositionFromDepthBuffer(uv, worldSpaceViewDir);
                     return normalize(-cross(ddx(wpos), ddy(wpos))) * 0.5 + 0.5;
                  #endif

                }
             #endif

             #if _HDRP

               half3 UnpackNormalmapRGorAG(half4 packednormal)
               {
                     // This do the trick
                  packednormal.x *= packednormal.w;

                  half3 normal;
                  normal.xy = packednormal.xy * 2 - 1;
                  normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                  return normal;
               }
               half3 UnpackNormal(half4 packednormal)
               {
                  #if defined(UNITY_NO_DXT5nm)
                     return packednormal.xyz * 2 - 1;
                  #else
                     return UnpackNormalmapRGorAG(packednormal);
                  #endif
               }
            #endif
            #if _HDRP || _URP

               half3 UnpackScaleNormal(half4 packednormal, half scale)
               {
                 #ifndef UNITY_NO_DXT5nm
                   // Unpack normal as DXT5nm (1, y, 1, x) or BC5 (x, y, 0, 1)
                   // Note neutral texture like "bump" is (0, 0, 1, 1) to work with both plain RGB normal and DXT5nm/BC5
                   packednormal.x *= packednormal.w;
                 #endif
                   half3 normal;
                   normal.xy = (packednormal.xy * 2 - 1) * scale;
                   normal.z = sqrt(1 - saturate(dot(normal.xy, normal.xy)));
                   return normal;
               }	

             #endif


            void GetSun(out float3 lightDir, out float3 color)
            {
               lightDir = float3(0.5, 0.5, 0);
               color = 1;
               #if _HDRP
                  if (_DirectionalLightCount > 0)
                  {
                     DirectionalLightData light = _DirectionalLightDatas[0];
                     lightDir = -light.forward.xyz;
                     color = light.color;
                  }
               #elif _STANDARD
			         lightDir = normalize(_WorldSpaceLightPos0.xyz);
                  color = _LightColor0.rgb;
               #elif _URP
	               Light light = GetMainLight();
	               lightDir = light.direction;
	               color = light.color;
               #endif
            }


            
         CBUFFER_START(UnityPerMaterial)

            
	half4 _Color;
	half4 _MainTex_ST, _MainTex_TexelSize;
	half _Alpha, _AlphaCutoffValue;

	#if ATLAS_ON
		half _MinXUV, _MaxXUV, _MinYUV, _MaxYUV;
	#endif

	#if GLOW_ON
		half4 _GlowColor;
		half _Glow, _GlowGlobal;
	#endif
	 
	#if HSV_ON
		half _HsvShift, _HsvSaturation, _HsvBright;
	#endif

	#if DISTORT_ON
		half4 _DistortTex_ST;
		half _DistortTexXSpeed, _DistortTexYSpeed, _DistortAmount;
	#endif

	#if FADE_ON
		half4 _FadeBurnColor, _FadeTex_ST, _FadeBurnTex_ST;
		half _FadeAmount, _FadeBurnWidth, _FadeBurnTransition,_FadeBurnGlow;
	#endif

	#if OUTBASE_ON
		half4 _OutlineColor;
		half _OutlineAlpha, _OutlineGlow, _OutlineWidth;
		int _OutlinePixelWidth;
	#endif

	#if OUTTEX_ON
		half4 _OutlineTex_ST;
		half _OutlineTexXSpeed, _OutlineTexYSpeed;
	#endif

	#if OUTDIST_ON
		half4 _OutlineDistortTex_ST;
		half _OutlineDistortTexXSpeed, _OutlineDistortTexYSpeed, _OutlineDistortAmount;
	#endif

	#if ALPHAOUTLINE_ON
		half _AlphaOutlineGlow, _AlphaOutlinePower, _AlphaOutlineMinAlpha, _AlphaOutlineBlend;
		half4 _AlphaOutlineColor;
	#endif

	#if INNEROUTLINE_ON
		half _InnerOutlineThickness, _InnerOutlineAlpha, _InnerOutlineGlow;
		half4 _InnerOutlineColor;
	#endif

	#if GRADIENT_ON
		half _GradBlend, _GradBoostX, _GradBoostY;
		half4 _GradTopRightCol, _GradTopLeftCol, _GradBotRightCol, _GradBotLeftCol;
	#endif

	#if COLORSWAP_ON
		half4 _ColorSwapRed, _ColorSwapGreen, _ColorSwapBlue;
		half _ColorSwapRedLuminosity, _ColorSwapGreenLuminosity, _ColorSwapBlueLuminosity, _ColorSwapBlend;
	#endif

	#if CHANGECOLOR_ON
		half4 _ColorChangeNewCol, _ColorChangeTarget;
		half _ColorChangeTolerance, _ColorChangeLuminosity;
	#endif
	#if CHANGECOLOR2_ON
		half4 _ColorChangeNewCol2, _ColorChangeTarget2;
		half _ColorChangeTolerance2;
	#endif
	#if CHANGECOLOR3_ON
		half4 _ColorChangeNewCol3, _ColorChangeTarget3;
		half _ColorChangeTolerance3;
	#endif

	#if COLORRAMP_ON
		half _ColorRampLuminosity, _ColorRampBlend;
	#endif

	#if HITEFFECT_ON
		half4 _HitEffectColor;
		half _HitEffectGlow, _HitEffectBlend;
	#endif

	#if NEGATIVE_ON
		half _NegativeAmount;
	#endif

	#if PIXELATE_ON
		half _PixelateSize;
	#endif

	#if GREYSCALE_ON
		half _GreyscaleLuminosity, _GreyscaleBlend;
		half4 _GreyscaleTintColor;
	#endif

	#if POSTERIZE_ON
		half _PosterizeNumColors, _PosterizeGamma;
	#endif

	#if BLUR_ON
		half _BlurIntensity;
	#endif

	#if MOTIONBLUR_ON
		half _MotionBlurAngle, _MotionBlurDist;
	#endif

	#if GHOST_ON
		half _GhostColorBoost, _GhostTransparency, _GhostBlend;
	#endif

	#if HOLOGRAM_ON
		half _HologramStripesAmount, _HologramMinAlpha, _HologramUnmodAmount, _HologramStripesSpeed, _HologramMaxAlpha, _HologramBlend;
		half4 _HologramStripeColor;
	#endif

	#if CHROMABERR_ON
		half _ChromAberrAmount, _ChromAberrAlpha;
	#endif

	#if GLITCH_ON
		half _GlitchAmount, _GlitchSize;
	#endif

	#if FLICKER_ON
		half _FlickerFreq, _FlickerPercent, _FlickerAlpha;
	#endif

	#if SHADOW_ON
		half _ShadowX, _ShadowY, _ShadowAlpha;
		half4 _ShadowColor;
	#endif

	#if SHINE_ON
		half4 _ShineColor;
		half _ShineLocation, _ShineRotate, _ShineWidth, _ShineGlow;
	#endif

	#if CONTRAST_ON
		half _Contrast, _Brightness;
	#endif

	#if OVERLAY_ON
		half4 _OverlayTex_ST, _OverlayColor;
		half _OverlayGlow, _OverlayBlend, _OverlayTextureScrollXSpeed, _OverlayTextureScrollYSpeed;
	#endif

	#if DOODLE_ON
		half _HandDrawnAmount, _HandDrawnSpeed;
	#endif

	#if WIND_ON
		half _GrassSpeed, _GrassWind, _GrassManualAnim, _GrassRadialBend;
	#endif

	#if WAVEUV_ON
		float _WaveAmount, _WaveSpeed, _WaveStrength, _WaveX, _WaveY;
	#endif

	#if ROUNDWAVEUV_ON
		half _RoundWaveStrength, _RoundWaveSpeed;
	#endif

	#if RECTSIZE_ON
		half _RectSize;
	#endif

	#if OFFSETUV_ON
		half _OffsetUvX, _OffsetUvY;
	#endif

	#if CLIPPING_ON
		half _ClipUvLeft, _ClipUvRight, _ClipUvUp, _ClipUvDown;
	#endif

	#if RADIALCLIPPING_ON
		half _RadialStartAngle, _RadialClip, _RadialClip2;
	#endif

	#if TEXTURESCROLL_ON
		half _TextureScrollXSpeed, _TextureScrollYSpeed;
	#endif

	#if ZOOMUV_ON
		half _ZoomUvAmount;
	#endif

	#if WARP_ON
		half _WarpStrength, _WarpSpeed, _WarpScale;
	#endif

	#if TWISTUV_ON
		half _TwistUvAmount, _TwistUvPosX, _TwistUvPosY, _TwistUvRadius;
	#endif

	#if ROTATEUV_ON
		half _RotateUvAmount;
	#endif

	#if FISHEYE_ON
		half _FishEyeUvAmount;
	#endif

	#if PINCH_ON
		half _PinchUvAmount;
	#endif

	#if SHAKEUV_ON
		half _ShakeUvSpeed, _ShakeUvX, _ShakeUvY;
	#endif

	#if NORMALMAP_ON
		half _NormalStrength;
	#endif

	float _RandomSeed;




         CBUFFER_END

         

         

         
	
	TEXTURE2D(_MainTex);
	SAMPLER(sampler_MainTex);

	#if GLOW_ON
		TEXTURE2D(_GlowTex);
		SAMPLER(sampler_GlowTex);
	#endif

	#if FADE_ON
		TEXTURE2D(_FadeTex);
		SAMPLER(sampler_FadeTex);

		TEXTURE2D(_FadeBurnTex);
		SAMPLER(sampler_FadeBurnTex);
	#endif

	#if DISTORT_ON
		TEXTURE2D(_DistortTex);
		SAMPLER(sampler_DistortTex);	
	#endif

	#if OUTTEX_ON
		TEXTURE2D(_OutlineTex);
		SAMPLER(sampler_OutlineTex);
	#endif

	#if OUTDIST_ON
		TEXTURE2D(_OutlineDistortTex);
		SAMPLER(sampler_OutlineDistortTex);
	#endif

	#if COLORSWAP_ON
		TEXTURE2D(_ColorSwapTex);
		SAMPLER(sampler_ColorSwapTex);
	#endif

	#if COLORRAMP_ON
		TEXTURE2D(_ColorRampTex);
		TEXTURE2D(_ColorRampTexGradient);
		SAMPLER(sampler_ColorRampTex);
		SAMPLER(sampler_ColorRampTexGradient);
	#endif

	#if SHINE_ON
		TEXTURE2D(_ShineMask);
		SAMPLER(sampler_ShineMask);
	#endif

	#if OVERLAY_ON
		TEXTURE2D(_OverlayTex);
		SAMPLER(sampler_OverlayTex);
	#endif

	#if NORMALMAP_ON
		TEXTURE2D(_NormalMap);
		SAMPLER(sampler_NormalMap);
	#endif


	half3 GetPixel(in int offsetX, in int offsetY, in half2 uv, in Texture2D _tex, in SamplerState _sampler)
	{
		half2 _uv = uv + half2(offsetX * _MainTex_TexelSize.x, offsetY * _MainTex_TexelSize.y);
		half4 col = SAMPLE_TEXTURE2D(_tex, _sampler, _uv);
		return col.rgb;
	}


	//BLURS-------------------------------------------------------------------------
	half4 Blur(half2 uv, Texture2D source, SamplerState sampler_source, half Intensity)
	{
		const half2 texelSize = 1.0 / _ScreenParams.xy;
		const half4 color = SAMPLE_TEXTURE2D(source, sampler_source, uv);
		const half2 offset = Intensity * texelSize;

		half4 accumulatedColor = color;
		half accumulatedWeight = 1.0;
		for (int x = -1; x <= 1; x++)
		{
			for (int y = -1; y <= 1; y++)
			{
				const half2 sampleUV = uv + half2(x, y) * offset;
				const half4 sampleColor = SAMPLE_TEXTURE2D(source, sampler_source, sampleUV);

				accumulatedColor += sampleColor;
				accumulatedWeight += 1.0;
			}
		}

		half4 blurredColor = accumulatedColor / accumulatedWeight;
		return blurredColor;
	}

	half BlurHD_G(half bhqp, half x)
	{
		return exp(-(x * x) / (2.0 * bhqp * bhqp));
	}
	half4 BlurHD(half2 uv, Texture2D source, SamplerState sampler_source, half BlurAmount, half xScale, half yScale)
	{
		int iterations = 16;
		int halfIterations = iterations / 2;
		half sigmaX = 0.1 + BlurAmount * 0.5;
		half sigmaY = sigmaX;
		half total = 0.0;
		half4 ret = half4(0, 0, 0, 0);
		for (int iy = 0; iy < iterations; ++iy)
		{
			half fy = BlurHD_G(sigmaY, half(iy) -half(halfIterations));
			half offsetY = half(iy - halfIterations) * 0.00390625 * xScale;
			for (int ix = 0; ix < iterations; ++ix)
			{
				half fx = BlurHD_G(sigmaX, half(ix) - half(halfIterations));
				half offsetX = half(ix - halfIterations) * 0.00390625 * yScale;
				total += fx * fy;
				ret += SAMPLE_TEXTURE2D(source, sampler_source, uv + half2(offsetX, offsetY)) * fx * fy;
			}
		}
		return ret / total;
	}
	//-----------------------------------------------------------------------


	//-------------------------------------------
	half RemapFloat(half inValue, half inMin, half inMax, half outMin, half outMax){
		return outMin + (inValue - inMin) * (outMax - outMin) / (inMax - inMin);
	}
	//-------------------------------------------

	//-----------------------------------------------------------------------
	half rand(half2 seed, half offset) {
		return (frac(sin(dot(seed, half2(12.9898, 78.233))) * 43758.5453) + offset) % 1.0;
	}

	half rand2(half2 seed, half offset) {
		return (frac(sin(dot(seed * floor(50 + (_Time.x % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}

	half rand2CustomTime(half2 seed, half offset, half customTime) {
		return (frac(sin(dot(seed * floor(50 + (customTime % 1.0) * 12.), half2(127.1, 311.7))) * 43758.5453123) + offset) % 1.0;
	}
	//-----------------------------------------------------------------------


	void Ext_ModifyVertex0 (inout VertexData v, inout ExtraV2F d)
	{
		//BILBOARD_ON
		#if BILBOARD_ON
			half3 camRight = mul((half3x3)unity_CameraToWorld, half3(1,0,0));
			half3 camUp = half3(0,1,0);
			#if BILBOARDY_ON
				camUp = mul((half3x3)unity_CameraToWorld, half3(0,1,0));
			#endif
			half3 localPos = v.vertex.x * camRight + v.vertex.y * camUp;
			v.vertex = half4(localPos, 1);
		#endif
        //-----------------------------------------------------------

        v.texcoord0.xy = TRANSFORM_TEX(v.texcoord0.xy, _MainTex);
		half2 center = half2(0.5, 0.5);
        #if ATLAS_ON
		    center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
		#endif
		
		//POLARUV_ON
		#if POLARUV_ON
			v.texcoord0.xy = v.texcoord0.xy - center;
		#endif

		//----------------------------------------

		//ROTATEUV_ON
		#if ROTATEUV_ON
			half2 uvC = v.texcoord0.xy;
			half cosAngle = cos(_RotateUvAmount);
			half sinAngle = sin(_RotateUvAmount);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvC -= center;
			v.texcoord0.xy = mul(rot, uvC);
			v.texcoord0.xy += center;
		#endif
		//--------------------

		#if RECTSIZE_ON
			v.vertex.xyz += (v.vertex.xyz * (_RectSize - 1.0));
		#endif

		#if OUTTEX_ON
			v.texcoord1.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineTex);
		#endif

		#if OUTDIST_ON
			v.texcoord2.xy = TRANSFORM_TEX(v.texcoord0.xy, _OutlineDistortTex);
		#endif

		#if DISTORT_ON
			v.texcoord3.xy = TRANSFORM_TEX(v.texcoord0.xy, _DistortTex);
		#endif
	}

	void Ext_SurfaceFunction0 (inout Surface o, ShaderData d)
	{
		half randomSeed = _RandomSeed;

		float2 uvRect = d.texcoord0;
		half2 center = half2(0.5, 0.5);
		#if ATLAS_ON
			center = half2((_MaxXUV + _MinXUV) / 2.0, (_MaxYUV + _MinYUV) / 2.0);
			uvRect = half2((d.texcoord0.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord0.y - _MinYUV) / (_MaxYUV - _MinYUV));
		#endif
		half2 centerTiled = half2(center.x *  _MainTex_ST.x, center.y *  _MainTex_ST.y);

		//CLIPPING_ON
		#if CLIPPING_ON
			half2 tiledUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv = half2((tiledUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			clip((1 - _ClipUvUp) - tiledUv.y);
			clip(tiledUv.y - _ClipUvDown);
			clip((1 - _ClipUvRight) - tiledUv.x);
			clip(tiledUv.x - _ClipUvLeft);
		#endif
		//----------------------------------

		//RADIALCLIPPING_ON
		#if RADIALCLIPPING_ON
			half2 tiledUv2 = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				tiledUv2 = half2((tiledUv2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUv2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half startAngle = _RadialStartAngle - _RadialClip;
			half endAngle = _RadialStartAngle + _RadialClip2;
			half offset0 = clamp(0, 360, startAngle + 360);
			half offset360 = clamp(0, 360, endAngle - 360);
			half2 atan2Coord = half2(lerp(-1, 1, tiledUv2.x), lerp(-1, 1, tiledUv2.y));
			half atanAngle = atan2(atan2Coord.y, atan2Coord.x) * 57.3; // angle in degrees
			if(atanAngle < 0) atanAngle = 360 + atanAngle;
			if(atanAngle >= startAngle && atanAngle <= endAngle) discard;
			if(atanAngle <= offset360) discard;
			if(atanAngle >= offset0) discard;
		#endif

		//-----------------------------

		//TEXTURESCROLL_ON && ATLAS_ON
		#if TEXTURESCROLL_ON && ATLAS_ON
			d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs(((_Time.y + randomSeed) * _TextureScrollXSpeed) + uvRect.x) % 1)),
			_MinYUV + ((_MaxYUV - _MinYUV) * (abs(((_Time.y + randomSeed) * _TextureScrollYSpeed) + uvRect.y) % 1)));
		#endif
		//----------------------------

		//OFFSETUV_ON
		#if OFFSETUV_ON
			#if ATLAS_ON
				d.texcoord0.xy = half2(_MinXUV + ((_MaxXUV - _MinXUV) * (abs((_OffsetUvX + uvRect.x) % 1))),
				_MinYUV + ((_MaxYUV - _MinYUV) * (abs(_OffsetUvY + uvRect.y) % 1)));
			#else
				d.texcoord0.xy += half2(_OffsetUvX, _OffsetUvY);
			#endif
		#endif

		//----------------------

		//POLARUV_ON
		#if POLARUV_ON
			d.texcoord0.xy = half2(atan2(d.texcoord0.y, d.texcoord0.x) / (2.0f * 3.141592653589f), length(d.texcoord0.xy));
			d.texcoord0.xy *= _MainTex_ST.xy;
		#endif

		//--------------------------------------

		//TWISTUV_ON
		#if TWISTUV_ON
			#if ATLAS_ON
				_TwistUvPosX = ((_MaxXUV - _MinXUV) * _TwistUvPosX) + _MinXUV;
				_TwistUvPosY = ((_MaxYUV - _MinYUV) * _TwistUvPosY) + _MinYUV;
			#endif
			half2 tempUv = d.texcoord0.xy - half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			_TwistUvRadius *= (_MainTex_ST.x + _MainTex_ST.y) / 2;
			half percent = (_TwistUvRadius - length(tempUv)) / _TwistUvRadius;
			half theta = percent * percent * (2.0 * sin(_TwistUvAmount)) * 8.0;
			half s = sin(theta);
			half c = cos(theta);
			half beta = max(sign(_TwistUvRadius - length(tempUv)), 0.0);
			tempUv = half2(dot(tempUv, half2(c, -s)), dot(tempUv, half2(s, c))) * beta +	tempUv * (1 - beta);
			tempUv += half2(_TwistUvPosX *  _MainTex_ST.x, _TwistUvPosY *  _MainTex_ST.y);
			d.texcoord0.xy = tempUv;
		#endif

		//--------------------------------------------

		//FISHEYE_ON
		#if FISHEYE_ON
			half bind = length(centerTiled);
			half2 dF = d.texcoord0.xy - centerTiled;
			half dFlen = length(dF);
			half fishInt = (3.14159265359 / bind) * (_FishEyeUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + (dF / (max(0.0001, dFlen))) * tan(dFlen * fishInt) * bind / tan(bind * fishInt);
		#endif
		//---------------------------------------------

		//PINCH_ON
		#if PINCH_ON
			half2 dP = d.texcoord0.xy - centerTiled;
			half pinchInt = (3.141592 / length(centerTiled)) * (-_PinchUvAmount + 0.001);
			d.texcoord0.xy = centerTiled + normalize(dP) * atan(length(dP) * -pinchInt * 10.0) * 0.5 / atan(-pinchInt * 5);
		#endif

		//---------------------------------------------

		//ZOOMUV_ON
		#if ZOOMUV_ON
			d.texcoord0.xy -= centerTiled;
			d.texcoord0.xy = d.texcoord0.xy * _ZoomUvAmount;
			d.texcoord0.xy += centerTiled;
		#endif

		//-----------------------------------------------

		//DOODLE_ON
		#if DOODLE_ON
			half2 uvCopy = uvRect;
			_HandDrawnSpeed = (floor((_Time.x + randomSeed) * 20 * _HandDrawnSpeed) / _HandDrawnSpeed) * _HandDrawnSpeed;
			uvCopy.x = sin((uvCopy.x * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			uvCopy.y = cos((uvCopy.y * _HandDrawnAmount + _HandDrawnSpeed) * 4);
			d.texcoord0.xy = lerp(d.texcoord0.xy, d.texcoord0.xy + uvCopy, 0.0005 * _HandDrawnAmount);
		#endif

		//--------------------------

		//SHAKEUV_ON
		#if SHAKEUV_ON
			half xShake = sin((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvX;
			half yShake = cos((_Time.x + randomSeed) * _ShakeUvSpeed * 50) * _ShakeUvY;
			d.texcoord0.xy += half2(xShake * 0.012, yShake * 0.01);
		#endif

		//-------------------------------------------

		//RECTSIZE_ON
		#if RECTSIZE_ON
			d.texcoord0.xy = d.texcoord0.xy * (_RectSize).xx + (((-_RectSize * 0.5) + 0.5)).xx;
		#endif

		//-------------------------------------------

		//DISTORT_ON
		#if DISTORT_ON
			#if ATLAS_ON
				d.texcoord3.x = d.texcoord3.x * (1 / (_MaxXUV - _MinXUV));
				d.texcoord3.y = d.texcoord3.y * (1 / (_MaxYUV - _MinYUV)); 
			#endif

			d.texcoord3.x += ((_Time.x + _RandomSeed) * _DistortTexXSpeed) % 1;
			d.texcoord3.y += ((_Time.x + _RandomSeed) * _DistortTexYSpeed) % 1;
			half distortAmnt = (SAMPLE_TEXTURE2D(_DistortTex, sampler_DistortTex, d.texcoord3.xy).r - 0.5) * 0.2 * _DistortAmount;
			d.texcoord0.x += distortAmnt;
			d.texcoord0.y += distortAmnt;
		#endif
		//-------------------------------------------------------

		//WARP_ON
		#if WARP_ON
            half2 warpUv = half2(d.texcoord0.x / _MainTex_ST.x, d.texcoord0.y / _MainTex_ST.y);
			#if ATLAS_ON
				warpUv = half2((warpUv.x - _MinXUV) / (_MaxXUV - _MinXUV), (warpUv.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			const float tau = 6.283185307179586;
            float xWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.x * tau / _WarpScale;
            float yWarp = (_Time.y + randomSeed) * _WarpSpeed + warpUv.y * tau / _WarpScale;
            float2 warp = float2(sin(xWarp), sin(yWarp)) * _WarpStrength;
            d.texcoord0.xy += warp;
		#endif

		//-------------------------------------------------------

		//WAVEUV_ON
		#if WAVEUV_ON
			float2 uvWave = half2(_WaveX * _MainTex_ST.x, _WaveY * _MainTex_ST.y) - d.texcoord0.xy;
            uvWave %= 1;
			#if ATLAS_ON
				uvWave = half2(_WaveX, _WaveY) - uvRect;
			#endif
			uvWave.x *= _ScreenParams.x / _ScreenParams.y;
            float waveTime = _Time.y + randomSeed;
			float angWave = (sqrt(dot(uvWave, uvWave)) * _WaveAmount) - ((waveTime *  _WaveSpeed));
			d.texcoord0.xy = d.texcoord0.xy + uvWave * sin(angWave) * (_WaveStrength / 1000.0);
		#endif
		//----------------------------------------------------

		//ROUNDWAVEUV_ON
		#if ROUNDWAVEUV_ON
			half xWave = ((0.5 * _MainTex_ST.x) - uvRect.x);
			half yWave = ((0.5 * _MainTex_ST.y) - uvRect.y) * (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
			half ripple = -sqrt(xWave*xWave + yWave* yWave);
			d.texcoord0.xy += (sin((ripple + (_Time.y + randomSeed) * (_RoundWaveSpeed/10.0)) / 0.015) * (_RoundWaveStrength/10.0)) % 1;
		#endif
		//----------------------------------------------------


		//WIND_ON
		#if WIND_ON
			half windOffset = sin((_Time.x + randomSeed) * _GrassSpeed * 10);
			half2 windCenter = half2(0.5, 0.1);
			#if ATLAS_ON
				windCenter.x = ((_MaxXUV - _MinXUV) * windCenter.x) + _MinXUV;
				windCenter.y = ((_MaxYUV - _MinYUV) * windCenter.y) + _MinYUV;
			#endif
			#if !MANUALWIND_ON
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * windOffset), uvRect.y)), 1);
			#else
				d.texcoord0.x = fmod(abs(lerp(d.texcoord0.x, d.texcoord0.x + (_GrassWind * 0.01 * _GrassManualAnim), uvRect.y)), 1);
				windOffset = _GrassManualAnim;
			#endif
			half2 delta = d.texcoord0.xy - windCenter;
			half delta2 = dot(delta.xy, delta.xy);
			half2 delta_offset = delta2 * windOffset;
			d.texcoord0.xy = d.texcoord0.xy + half2(delta.y, -delta.x) * delta_offset * _GrassRadialBend;
		#endif

		//--------------------------------------------------------

		//TEXTURESCROLL_ON && !ATLAS_ON
		#if TEXTURESCROLL_ON && !ATLAS_ON
			d.texcoord0.x += ((_Time.y + randomSeed) * _TextureScrollXSpeed) % 1;
			d.texcoord0.y += ((_Time.y + randomSeed) * _TextureScrollYSpeed) % 1;
		#endif
		//------------------------------

		//PIXELATE_ON
		#if PIXELATE_ON
            half aspectRatio = _MainTex_TexelSize.x / _MainTex_TexelSize.y;
			half2 pixelSize = float2(_PixelateSize, _PixelateSize * aspectRatio);
			d.texcoord0.xy = floor(d.texcoord0.xy * pixelSize) / pixelSize;
		#endif
		//--------------

		half4 col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy);
		half originalAlpha = col.a;
		col *= d.vertexColor;

		//NORMAL MAP
		#if NORMALMAP_ON
			half4 normalSample = SAMPLE_TEXTURE2D(_NormalMap, sampler_NormalMap, d.texcoord0.xy);
			half3 normalTS = UnpackNormal(normalSample);
			normalTS.xy *= _NormalStrength;
			o.Normal = normalTS;
		#endif
        float normalSign = sign(dot(d.worldSpaceViewDir, d.worldSpaceNormal));
        o.Normal *= normalSign;


		//GLITCH_ON
		#if GLITCH_ON
			half2 uvGlitch = uvRect;
			uvGlitch.y -= 0.5;
			half lineNoise = pow(rand2(floor(uvGlitch * half2(24., 19.) * _GlitchSize) * 4.0, randomSeed), 3.0) * _GlitchAmount
				* pow(rand2(floor(uvGlitch * half2(38., 14.) * _GlitchSize) * 4.0, randomSeed), 3.0);
			col = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(lineNoise * 0.02 * rand2(half2(2.0, 1), randomSeed), 0)) * d.vertexColor;
		#endif
		//--------------------------------------

		//CHROMABERR_ON
		#if CHROMABERR_ON
			half4 r = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ChromAberrAmount/10, 0))	* d.vertexColor;
			half4 b = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-_ChromAberrAmount/10, 0)) * d.vertexColor;
			col = half4(r.r * r.a, col.g, b.b * b.a, max(max(r.a, b.a) * _ChromAberrAlpha, col.a));
		#endif

		//--------------------------------

		//BLUR_ON
		#if BLUR_ON
			#if ATLAS_ON
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, (_MaxXUV - _MinXUV), (_MaxYUV - _MinYUV)) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity * (_MaxXUV - _MinXUV)) * d.vertexColor;
				#endif
			#else
				#if !BLURISHD_ON
					col = BlurHD(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity, 1, 1) * d.vertexColor;
				#else
					col = Blur(d.texcoord0.xy, _MainTex, sampler_MainTex, _BlurIntensity) * d.vertexColor;
				#endif
			#endif
        #endif

		//--------------------

		//MOTIONBLUR_ON
		#if MOTIONBLUR_ON
			_MotionBlurAngle = _MotionBlurAngle * 3.1415926;
			#define rot(n) mul(n, half2x2(cos(_MotionBlurAngle), -sin(_MotionBlurAngle), sin(_MotionBlurAngle), cos(_MotionBlurAngle)))
			_MotionBlurDist = _MotionBlurDist * 0.005;
			#if ATLAS_ON
				_MotionBlurDist *= (_MaxXUV - _MinXUV);
			#endif
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist, -_MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 2, -_MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 3, -_MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(-_MotionBlurDist * 4, -_MotionBlurDist * 4)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist, _MotionBlurDist)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 2, _MotionBlurDist * 2)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 3, _MotionBlurDist * 3)));
			col.rgb += SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + rot(half2(_MotionBlurDist * 4, _MotionBlurDist * 4)));
			col.rgb = col.rgb / 9;
        #endif
		//------------------------------------

		//NEGATIVE_ON
		#if NEGATIVE_ON
			col.rgb = lerp(col.rgb, 1 - col.rgb, _NegativeAmount);
		#endif

		//--------------
		half luminance = 0;

		//GREYSCALE_ON && !GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && !GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif
		//------------------------------------

		//GHOST_ON
		#if GHOST_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 ghostResult;
			ghostResult.a = saturate(luminance - _GhostTransparency) * col.a;
			ghostResult.rgb = col.rgb * (luminance + _GhostColorBoost);
			col = lerp(col, ghostResult, _GhostBlend);
		#endif
		//------------------------------------

		//INNEROUTLINE_ON
		#if INNEROUTLINE_ON
			half3 innerT = abs(GetPixel(0, _InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(0, -_InnerOutlineThickness, d.texcoord0.xy, _MainTex, sampler_MainTex));
			innerT += abs(GetPixel(_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex) - GetPixel(-_InnerOutlineThickness, 0, d.texcoord0.xy, _MainTex, sampler_MainTex));
			#if !ONLYINNEROUTLINE_ON
				innerT = (innerT / 2.0) * col.a * _InnerOutlineAlpha;
				col.rgb += length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
			#else
				innerT *= col.a * _InnerOutlineAlpha;
				col.rgb = length(innerT) * _InnerOutlineColor.rgb * _InnerOutlineGlow;
				col.a = step(0.3, col.r+col.g+col.b);
			#endif
		#endif
		//-------------------------------------------------------

		//HITEFFECT_ON
		#if HITEFFECT_ON
			col.rgb = lerp(col.rgb, _HitEffectColor.rgb * _HitEffectGlow, _HitEffectBlend);
		#endif
		//--------------------

		//GRADIENT_ON
		#if GRADIENT_ON
			half2 tiledUvGrad = half2(uvRect.x / _MainTex_ST.x, uvRect.y / _MainTex_ST.y);
			#if GRADIENT2COL_ON
				_GradTopRightCol = _GradTopLeftCol;
				_GradBotRightCol = _GradBotLeftCol;
			#endif
			#if RADIALGRADIENT_ON
				half radialDist = 1 - length(tiledUvGrad - half2(0.5, 0.5));
				radialDist *= (_MainTex_TexelSize.w / _MainTex_TexelSize.z);
				radialDist = saturate(_GradBoostX * radialDist);
				half4 gradientResult = lerp(_GradTopLeftCol, _GradBotLeftCol, radialDist);
			#else
				half gradXLerpFactor = saturate(pow(tiledUvGrad.x, _GradBoostX));
				half4 gradientResult = lerp(lerp(_GradBotLeftCol, _GradBotRightCol, gradXLerpFactor),
				lerp(_GradTopLeftCol, _GradTopRightCol, gradXLerpFactor), saturate(pow(tiledUvGrad.y, _GradBoostY)));
			#endif
			gradientResult = lerp(col, gradientResult, _GradBlend);
			col.rgb = gradientResult.rgb * col.a;
			col.a *= gradientResult.a;
		#endif
		//--------------------------------------------------------------------

		//CONTRAST_ON
		#if CONTRAST_ON
			col.rgb = (col.rgb - float3(0.5, 0.5, 0.5)) * _Contrast + float3(0.5, 0.5, 0.5);
			col.rgb += _Brightness;
		#endif

		//-------------------------------------------------------------------

		//COLORSWAP_ON
		#if COLORSWAP_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			half4 swapMask = SAMPLE_TEXTURE2D(_ColorSwapTex, sampler_ColorSwapTex, d.texcoord0.xy);
			swapMask.rgb *= swapMask.a;
			half3 redSwap = _ColorSwapRed * swapMask.r * saturate(luminance + _ColorSwapRedLuminosity);
			half3 greenSwap = _ColorSwapGreen * swapMask.g * saturate(luminance + _ColorSwapGreenLuminosity);
			half3 blueSwap = _ColorSwapBlue * swapMask.b * saturate(luminance + _ColorSwapBlueLuminosity);
			swapMask.rgb = col.rgb * saturate(1 - swapMask.r - swapMask.g - swapMask.b);
			col.rgb = lerp(col.rgb, swapMask.rgb + redSwap + greenSwap + blueSwap, _ColorSwapBlend);
		#endif
		//--------------------------------------------------------------------

		//COLORRAMP_ON && !COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && !COLORRAMPOUTLINE_ON 
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//--------------------------------------------------------------------

		//CHANGECOLOR_ON
		#if CHANGECOLOR_ON
			float3 currChangeColor = saturate(col.rgb);
			luminance = 0.3 * currChangeColor.r + 0.59 * currChangeColor.g + 0.11 * currChangeColor.b;
			luminance = saturate(luminance + _ColorChangeLuminosity);
			half3 dif = abs(currChangeColor - _ColorChangeTarget.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance), 0.0));
			#if CHANGECOLOR2_ON
			dif = abs(currChangeColor - _ColorChangeTarget2.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol2.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance2), 0.0));
			#endif
			#if CHANGECOLOR3_ON
			dif = abs(currChangeColor - _ColorChangeTarget3.rgb);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _ColorChangeNewCol3.rgb,
				max(sign(1 - saturate(dif.x + dif.y + dif.z) - _ColorChangeTolerance3), 0.0));
			#endif
		#endif
		//-------------------------------------------------------

		//POSTERIZE_ON && !POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && !POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif
		//------------------------------------

		//HSV_ON
		#if HSV_ON
			half3 resultHsv = half3(col.rgb);
			half cosHsv = _HsvBright * _HsvSaturation * cos(_HsvShift * 3.14159265 / 180);
			half sinHsv = _HsvBright * _HsvSaturation * sin(_HsvShift * 3.14159265 / 180);
			resultHsv.x = (.299 * _HsvBright + .701 * cosHsv + .168 * sinHsv) * col.x
			+ (.587 * _HsvBright - .587 * cosHsv + .330 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv - .497 * sinHsv) * col.z;
			resultHsv.y = (.299 * _HsvBright - .299 * cosHsv - .328 * sinHsv) *col.x
			+ (.587 * _HsvBright + .413 * cosHsv + .035 * sinHsv) * col.y
			+ (.114 * _HsvBright - .114 * cosHsv + .292 * sinHsv) * col.z;
			resultHsv.z = (.299 * _HsvBright - .3 * cosHsv + 1.25 * sinHsv) * col.x
			+ (.587 * _HsvBright - .588 * cosHsv - 1.05 * sinHsv) * col.y
			+ (.114 * _HsvBright + .886 * cosHsv - .203 * sinHsv) * col.z;
			col.rgb = resultHsv;
		#endif
		//-------------------------------------------------------

		//OVERLAY_ON
		#if OVERLAY_ON
			half2 overlayUvs = d.texcoord0.xy;
			overlayUvs.x += ((_Time.y + randomSeed) * _OverlayTextureScrollXSpeed) % 1;
			overlayUvs.y += ((_Time.y + randomSeed) * _OverlayTextureScrollYSpeed) % 1;
			half4 overlayCol = SAMPLE_TEXTURE2D(_OverlayTex, sampler_OverlayTex, TRANSFORM_TEX(overlayUvs, _OverlayTex));
			overlayCol.rgb *= _OverlayColor.rgb * _OverlayGlow;
			#if !OVERLAYMULT_ON
				overlayCol.rgb *= overlayCol.a * _OverlayColor.rgb * _OverlayColor.a * _OverlayBlend;
				col.rgb += overlayCol.rgb;
			#else
				overlayCol.a *= _OverlayColor.a;
				col = lerp(col, col * overlayCol, _OverlayBlend);
			#endif
		#endif

		//---------------------------------

		//OUTBASE_ON
		#if OUTBASE_ON
			#if OUTBASEPIXELPERF_ON
				half2 destUv = half2(_OutlinePixelWidth * _MainTex_TexelSize.x, _OutlinePixelWidth * _MainTex_TexelSize.y);
			#else
				half2 destUv = half2(_OutlineWidth * _MainTex_TexelSize.x * 200, _OutlineWidth * _MainTex_TexelSize.y * 200);
			#endif

			#if OUTDIST_ON
				d.texcoord3.x += ((_Time.x + _RandomSeed) * _OutlineDistortTexXSpeed) % 1;
				d.texcoord3.y += ((_Time.x + _RandomSeed) * _OutlineDistortTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord3 = half2((d.texcoord3.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord3.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half outDistortAmnt = (SAMPLE_TEXTURE2D(_OutlineDistortTex, sampler_OutlineDistortTex, d.texcoord3).r - 0.5) * 0.2 * _OutlineDistortAmount;
				destUv.x += outDistortAmnt;
				destUv.y += outDistortAmnt;
			#endif

			half spriteLeft		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, 0)).a;
			half spriteRight	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(destUv.x, 0)).a;
			half spriteBottom	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(0, destUv.y)).a;
			half spriteTop		= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy - half2(0, destUv.y)).a;
			half result = spriteLeft + spriteRight + spriteBottom + spriteTop;

			#if OUTBASE8DIR_ON
				half spriteTopLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, destUv.y)).a;
				half spriteTopRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, destUv.y)).a;
				half spriteBotLeft	= SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(destUv.x, -destUv.y)).a;
				half spriteBotRight = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(-destUv.x, -destUv.y)).a;
				result = result + spriteTopLeft + spriteTopRight + spriteBotLeft + spriteBotRight;
			#endif
					
			result = step(0.05, saturate(result));

			#if OUTTEX_ON
				d.texcoord1.x += ((_Time.x + _RandomSeed) * _OutlineTexXSpeed) % 1;
				d.texcoord1.y += ((_Time.x + _RandomSeed) * _OutlineTexYSpeed) % 1;
				#if ATLAS_ON
					d.texcoord1 = half2((d.texcoord1.x - _MinXUV) / (_MaxXUV - _MinXUV), (d.texcoord1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				#endif
				half4 tempOutColor = SAMPLE_TEXTURE2D(_OutlineTex, sampler_OutlineTex, d.texcoord1);
				tempOutColor *= _OutlineColor;
				_OutlineColor = tempOutColor;
			#endif

			result *= (1 - originalAlpha) * _OutlineAlpha;

			half4 outline = _OutlineColor * d.vertexColor.a;
			outline.rgb *= _OutlineGlow;
			outline.a = result;
			#if ONLYOUTLINE_ON
			col = outline;
			#else
			col = lerp(col, outline, result);
			#endif
		#endif
		//-------------------------------------------------------

		//FADE_ON
		#if FADE_ON
			half2 tiledUvFade1	= TRANSFORM_TEX(d.texcoord0, _FadeTex);
			half2 tiledUvFade2	= TRANSFORM_TEX(d.texcoord0, _FadeBurnTex);
			#if ATLAS_ON
				tiledUvFade1 = half2((tiledUvFade1.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade1.y - _MinYUV) / (_MaxYUV - _MinYUV));
				tiledUvFade2 = half2((tiledUvFade2.x - _MinXUV) / (_MaxXUV - _MinXUV), (tiledUvFade2.y - _MinYUV) / (_MaxYUV - _MinYUV));
			#endif
			half fadeTemp = SAMPLE_TEXTURE2D(_FadeTex, sampler_FadeTex, tiledUvFade1).r;
			half fade = smoothstep(_FadeAmount, _FadeAmount + _FadeBurnTransition, fadeTemp);
			half fadeBurn = saturate(smoothstep(_FadeAmount - _FadeBurnWidth, _FadeAmount - _FadeBurnWidth + 0.1, fadeTemp) * _FadeAmount);
			col.a *= fade;
			_FadeBurnColor.rgb *= _FadeBurnGlow;
			col += fadeBurn * SAMPLE_TEXTURE2D(_FadeBurnTex, sampler_FadeBurnTex, tiledUvFade2) * _FadeBurnColor * originalAlpha * (1 - col.a);
		#endif
		//-------------------------------------------------------

		//SHADOW_ON
		#if SHADOW_ON
			half shadowA = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, d.texcoord0.xy + half2(_ShadowX, _ShadowY)).a;
			half preMultShadowMask = 1 - (saturate(shadowA - col.a) * (1 - col.a));
			col.rgb *= 1 - ((shadowA - col.a) * (1 - col.a));
			col.rgb += (_ShadowColor * shadowA) * (1 - col.a);
			col.a = max(shadowA * _ShadowAlpha * d.vertexColor.a, col.a);
		#endif

		//-------------------------------------------------------

		//GLOW_ON
		#if GLOW_ON
			half4 emission;
			#if GLOWTEX_ON
				emission = SAMPLE_TEXTURE2D(_GlowTex, sampler_GlowTex, d.texcoord0);
			#else
				emission = col;
			#endif

			col.rgb *= _GlowGlobal;
			emission.rgb *= emission.a * col.a * _Glow * _GlowColor;
			col.rgb += emission.rgb;
		#endif
		//-------------------------------------------------------

		//COLORRAMP_ON && COLORRAMPOUTLINE_ON
		#if COLORRAMP_ON && COLORRAMPOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _ColorRampLuminosity);
			#if GRADIENTCOLORRAMP_ON
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTexGradient, sampler_ColorRampTexGradient, half2(luminance, 0)).rgb, _ColorRampBlend);
			#else
				col.rgb = lerp(col.rgb, SAMPLE_TEXTURE2D(_ColorRampTex, sampler_ColorRampTex, half2(luminance, 0)).rgb, _ColorRampBlend);
			#endif
		#endif
		//---------------

		//GREYSCALE_ON && GREYSCALEOUTLINE_ON
		#if GREYSCALE_ON && GREYSCALEOUTLINE_ON
			luminance = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
			luminance = saturate(luminance + _GreyscaleLuminosity);
			col.rgb = lerp(col.rgb, half3(luminance, luminance, luminance) * _GreyscaleTintColor, _GreyscaleBlend);
		#endif

		//-----------------------------------

		//POSTERIZE_ON && POSTERIZEOUTLINE_ON
		#if POSTERIZE_ON && POSTERIZEOUTLINE_ON
			col.rgb = pow(col.rgb, _PosterizeGamma) * _PosterizeNumColors;
			col.rgb = floor(col.rgb) / _PosterizeNumColors;
			col.rgb = pow(col.rgb, 1.0 / _PosterizeGamma);
		#endif

		//-----------------------------------

		//SHINE_ON
		#if SHINE_ON
			half2 uvShine = uvRect;
			half cosAngle = cos(_ShineRotate);
			half sinAngle = sin(_ShineRotate);
			half2x2 rot = half2x2(cosAngle, -sinAngle, sinAngle, cosAngle);
			uvShine -= half2(0.5, 0.5);
			uvShine = mul(rot, uvShine);
			uvShine += half2(0.5, 0.5);
			half shineMask = SAMPLE_TEXTURE2D(_ShineMask, sampler_ShineMask, d.texcoord0.xy).a;
			half currentDistanceProjection = (uvShine.x + uvShine.y) / 2;
			half whitePower = 1 - (abs(currentDistanceProjection - _ShineLocation) / _ShineWidth);
			col.rgb +=  col.a * whitePower * _ShineGlow * max(sign(currentDistanceProjection - (_ShineLocation - _ShineWidth)), 0.0)
			* max(sign((_ShineLocation + _ShineWidth) - currentDistanceProjection), 0.0) * _ShineColor * shineMask;
		#endif

		//-----------------------------------

		//HOLOGRAM_ON
		#if HOLOGRAM_ON
			half totalHologram = _HologramStripesAmount + _HologramUnmodAmount;
			half hologramYCoord = ((uvRect.y + (((_Time.x + randomSeed) % 1) * _HologramStripesSpeed)) % totalHologram) / totalHologram;
			hologramYCoord = abs(hologramYCoord);
			half alpha = RemapFloat(saturate(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0, 1.0, _HologramMinAlpha, saturate(_HologramMaxAlpha));
			half hologramMask = max(sign((_HologramUnmodAmount/totalHologram) - hologramYCoord), 0.0);
			half4 hologramResult = col;
			hologramResult.a *= lerp(alpha, 1, hologramMask);
			hologramResult.rgb *= max(1, _HologramMaxAlpha * max(sign(hologramYCoord - (_HologramUnmodAmount/totalHologram)), 0.0));
			hologramMask = 1 - step(0.01,hologramMask);
			hologramResult.rgb += hologramMask * _HologramStripeColor * col.a;
			col = lerp(col, hologramResult, _HologramBlend);
		#endif

		//-----------------------------------

		//FLICKER_ON
		#if FLICKER_ON
			col.a *= saturate(col.a * step(frac(0.05 + (_Time.w + randomSeed) * _FlickerFreq), 1 - _FlickerPercent) + _FlickerAlpha);
		#endif
		//-----------------------------------

		//ALPHACUTOFF_ON

		//ALPHAROUND_ON

		//ALPHAOUTLINE_ON
		#if ALPHAOUTLINE_ON
			half alphaOutlineRes = pow(1 - col.a, max(_AlphaOutlinePower, 0.0001)) * step(_AlphaOutlineMinAlpha, col.a) * _AlphaOutlineBlend;
			col.rgb = lerp(col.rgb, _AlphaOutlineColor.rgb * _AlphaOutlineGlow, alphaOutlineRes);
			col.a = lerp(col.a, 1, alphaOutlineRes > 1);
		#endif
		//-------------------------------------------------------

		//FOG_ON

		//------------------

        col *= _Color;
		o.Albedo = col;
		col.a *= _Alpha;
        clip(col.a - _AlphaCutoffValue - 0.01);
		o.Alpha = col.a;
	}




        
            void ChainSurfaceFunction(inout Surface l, inout ShaderData d)
            {
                  Ext_SurfaceFunction0(l, d);
                 // Ext_SurfaceFunction1(l, d);
                 // Ext_SurfaceFunction2(l, d);
                 // Ext_SurfaceFunction3(l, d);
                 // Ext_SurfaceFunction4(l, d);
                 // Ext_SurfaceFunction5(l, d);
                 // Ext_SurfaceFunction6(l, d);
                 // Ext_SurfaceFunction7(l, d);
                 // Ext_SurfaceFunction8(l, d);
                 // Ext_SurfaceFunction9(l, d);
		           // Ext_SurfaceFunction10(l, d);
                 // Ext_SurfaceFunction11(l, d);
                 // Ext_SurfaceFunction12(l, d);
                 // Ext_SurfaceFunction13(l, d);
                 // Ext_SurfaceFunction14(l, d);
                 // Ext_SurfaceFunction15(l, d);
                 // Ext_SurfaceFunction16(l, d);
                 // Ext_SurfaceFunction17(l, d);
                 // Ext_SurfaceFunction18(l, d);
		           // Ext_SurfaceFunction19(l, d);
                 // Ext_SurfaceFunction20(l, d);
                 // Ext_SurfaceFunction21(l, d);
                 // Ext_SurfaceFunction22(l, d);
                 // Ext_SurfaceFunction23(l, d);
                 // Ext_SurfaceFunction24(l, d);
                 // Ext_SurfaceFunction25(l, d);
                 // Ext_SurfaceFunction26(l, d);
                 // Ext_SurfaceFunction27(l, d);
                 // Ext_SurfaceFunction28(l, d);
		           // Ext_SurfaceFunction29(l, d);
            }

#if !_DECALSHADER

            void ChainModifyVertex(inout VertexData v, inout VertexToPixel v2p, float4 time)
            {
                 ExtraV2F d;
                 
                 ZERO_INITIALIZE(ExtraV2F, d);
                 ZERO_INITIALIZE(Blackboard, d.blackboard);
                 // due to motion vectors in HDRP, we need to use the last
                 // time in certain spots. So if you are going to use _Time to adjust vertices,
                 // you need to use this time or motion vectors will break. 
                 d.time = time;

                   Ext_ModifyVertex0(v, d);
                 // Ext_ModifyVertex1(v, d);
                 // Ext_ModifyVertex2(v, d);
                 // Ext_ModifyVertex3(v, d);
                 // Ext_ModifyVertex4(v, d);
                 // Ext_ModifyVertex5(v, d);
                 // Ext_ModifyVertex6(v, d);
                 // Ext_ModifyVertex7(v, d);
                 // Ext_ModifyVertex8(v, d);
                 // Ext_ModifyVertex9(v, d);
                 // Ext_ModifyVertex10(v, d);
                 // Ext_ModifyVertex11(v, d);
                 // Ext_ModifyVertex12(v, d);
                 // Ext_ModifyVertex13(v, d);
                 // Ext_ModifyVertex14(v, d);
                 // Ext_ModifyVertex15(v, d);
                 // Ext_ModifyVertex16(v, d);
                 // Ext_ModifyVertex17(v, d);
                 // Ext_ModifyVertex18(v, d);
                 // Ext_ModifyVertex19(v, d);
                 // Ext_ModifyVertex20(v, d);
                 // Ext_ModifyVertex21(v, d);
                 // Ext_ModifyVertex22(v, d);
                 // Ext_ModifyVertex23(v, d);
                 // Ext_ModifyVertex24(v, d);
                 // Ext_ModifyVertex25(v, d);
                 // Ext_ModifyVertex26(v, d);
                 // Ext_ModifyVertex27(v, d);
                 // Ext_ModifyVertex28(v, d);
                 // Ext_ModifyVertex29(v, d);


                 // #if %EXTRAV2F0REQUIREKEY%
                 // v2p.extraV2F0 = d.extraV2F0;
                 // #endif

                 // #if %EXTRAV2F1REQUIREKEY%
                 // v2p.extraV2F1 = d.extraV2F1;
                 // #endif

                 // #if %EXTRAV2F2REQUIREKEY%
                 // v2p.extraV2F2 = d.extraV2F2;
                 // #endif

                 // #if %EXTRAV2F3REQUIREKEY%
                 // v2p.extraV2F3 = d.extraV2F3;
                 // #endif

                 // #if %EXTRAV2F4REQUIREKEY%
                 // v2p.extraV2F4 = d.extraV2F4;
                 // #endif

                 // #if %EXTRAV2F5REQUIREKEY%
                 // v2p.extraV2F5 = d.extraV2F5;
                 // #endif

                 // #if %EXTRAV2F6REQUIREKEY%
                 // v2p.extraV2F6 = d.extraV2F6;
                 // #endif

                 // #if %EXTRAV2F7REQUIREKEY%
                 // v2p.extraV2F7 = d.extraV2F7;
                 // #endif
            }

            void ChainModifyTessellatedVertex(inout VertexData v, inout VertexToPixel v2p)
            {
               ExtraV2F d;
               ZERO_INITIALIZE(ExtraV2F, d);
               ZERO_INITIALIZE(Blackboard, d.blackboard);

               // #if %EXTRAV2F0REQUIREKEY%
               // d.extraV2F0 = v2p.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // d.extraV2F1 = v2p.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // d.extraV2F2 = v2p.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // d.extraV2F3 = v2p.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // d.extraV2F4 = v2p.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // d.extraV2F5 = v2p.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // d.extraV2F6 = v2p.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // d.extraV2F7 = v2p.extraV2F7;
               // #endif


               // Ext_ModifyTessellatedVertex0(v, d);
               // Ext_ModifyTessellatedVertex1(v, d);
               // Ext_ModifyTessellatedVertex2(v, d);
               // Ext_ModifyTessellatedVertex3(v, d);
               // Ext_ModifyTessellatedVertex4(v, d);
               // Ext_ModifyTessellatedVertex5(v, d);
               // Ext_ModifyTessellatedVertex6(v, d);
               // Ext_ModifyTessellatedVertex7(v, d);
               // Ext_ModifyTessellatedVertex8(v, d);
               // Ext_ModifyTessellatedVertex9(v, d);
               // Ext_ModifyTessellatedVertex10(v, d);
               // Ext_ModifyTessellatedVertex11(v, d);
               // Ext_ModifyTessellatedVertex12(v, d);
               // Ext_ModifyTessellatedVertex13(v, d);
               // Ext_ModifyTessellatedVertex14(v, d);
               // Ext_ModifyTessellatedVertex15(v, d);
               // Ext_ModifyTessellatedVertex16(v, d);
               // Ext_ModifyTessellatedVertex17(v, d);
               // Ext_ModifyTessellatedVertex18(v, d);
               // Ext_ModifyTessellatedVertex19(v, d);
               // Ext_ModifyTessellatedVertex20(v, d);
               // Ext_ModifyTessellatedVertex21(v, d);
               // Ext_ModifyTessellatedVertex22(v, d);
               // Ext_ModifyTessellatedVertex23(v, d);
               // Ext_ModifyTessellatedVertex24(v, d);
               // Ext_ModifyTessellatedVertex25(v, d);
               // Ext_ModifyTessellatedVertex26(v, d);
               // Ext_ModifyTessellatedVertex27(v, d);
               // Ext_ModifyTessellatedVertex28(v, d);
               // Ext_ModifyTessellatedVertex29(v, d);

               // #if %EXTRAV2F0REQUIREKEY%
               // v2p.extraV2F0 = d.extraV2F0;
               // #endif

               // #if %EXTRAV2F1REQUIREKEY%
               // v2p.extraV2F1 = d.extraV2F1;
               // #endif

               // #if %EXTRAV2F2REQUIREKEY%
               // v2p.extraV2F2 = d.extraV2F2;
               // #endif

               // #if %EXTRAV2F3REQUIREKEY%
               // v2p.extraV2F3 = d.extraV2F3;
               // #endif

               // #if %EXTRAV2F4REQUIREKEY%
               // v2p.extraV2F4 = d.extraV2F4;
               // #endif

               // #if %EXTRAV2F5REQUIREKEY%
               // v2p.extraV2F5 = d.extraV2F5;
               // #endif

               // #if %EXTRAV2F6REQUIREKEY%
               // v2p.extraV2F6 = d.extraV2F6;
               // #endif

               // #if %EXTRAV2F7REQUIREKEY%
               // v2p.extraV2F7 = d.extraV2F7;
               // #endif
            }

            void ChainFinalColorForward(inout Surface l, inout ShaderData d, inout half4 color)
            {
               //   Ext_FinalColorForward0(l, d, color);
               //   Ext_FinalColorForward1(l, d, color);
               //   Ext_FinalColorForward2(l, d, color);
               //   Ext_FinalColorForward3(l, d, color);
               //   Ext_FinalColorForward4(l, d, color);
               //   Ext_FinalColorForward5(l, d, color);
               //   Ext_FinalColorForward6(l, d, color);
               //   Ext_FinalColorForward7(l, d, color);
               //   Ext_FinalColorForward8(l, d, color);
               //   Ext_FinalColorForward9(l, d, color);
               //  Ext_FinalColorForward10(l, d, color);
               //  Ext_FinalColorForward11(l, d, color);
               //  Ext_FinalColorForward12(l, d, color);
               //  Ext_FinalColorForward13(l, d, color);
               //  Ext_FinalColorForward14(l, d, color);
               //  Ext_FinalColorForward15(l, d, color);
               //  Ext_FinalColorForward16(l, d, color);
               //  Ext_FinalColorForward17(l, d, color);
               //  Ext_FinalColorForward18(l, d, color);
               //  Ext_FinalColorForward19(l, d, color);
               //  Ext_FinalColorForward20(l, d, color);
               //  Ext_FinalColorForward21(l, d, color);
               //  Ext_FinalColorForward22(l, d, color);
               //  Ext_FinalColorForward23(l, d, color);
               //  Ext_FinalColorForward24(l, d, color);
               //  Ext_FinalColorForward25(l, d, color);
               //  Ext_FinalColorForward26(l, d, color);
               //  Ext_FinalColorForward27(l, d, color);
               //  Ext_FinalColorForward28(l, d, color);
               //  Ext_FinalColorForward29(l, d, color);
            }

            void ChainFinalGBufferStandard(inout Surface s, inout ShaderData d, inout half4 GBuffer0, inout half4 GBuffer1, inout half4 GBuffer2, inout half4 outEmission, inout half4 outShadowMask)
            {
               //   Ext_FinalGBufferStandard0(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard1(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard2(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard3(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard4(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard5(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard6(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard7(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard8(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //   Ext_FinalGBufferStandard9(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard10(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard11(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard12(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard13(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard14(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard15(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard16(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard17(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard18(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard19(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard20(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard21(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard22(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard23(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard24(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard25(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard26(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard27(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard28(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
               //  Ext_FinalGBufferStandard29(s, d, GBuffer0, GBuffer1, GBuffer2, outEmission, outShadowMask);
            }
#endif


         


#if _DECALSHADER

        ShaderData CreateShaderData(SurfaceDescriptionInputs IN)
        {
            ShaderData d = (ShaderData)0;
            d.TBNMatrix = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
            d.worldSpaceNormal = IN.WorldSpaceNormal;
            d.worldSpaceTangent = IN.WorldSpaceTangent;

            d.worldSpacePosition = IN.WorldSpacePosition;
            d.texcoord0 = IN.uv0.xyxy;
            d.screenPos = IN.ScreenPosition;

            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - d.worldSpacePosition);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(d.worldSpacePosition), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(d.worldSpacePosition, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), d.worldSpaceTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenUV = (IN.ScreenPosition.xy / max(0.01, IN.ScreenPosition.w));
            // #endif

            return d;
        }
#else

         ShaderData CreateShaderData(VertexToPixel i
                  #if NEED_FACING
                     , bool facing
                  #endif
         )
         {
            ShaderData d = (ShaderData)0;
            d.clipPos = i.pos;
            d.worldSpacePosition = i.worldPos;

            d.worldSpaceNormal = normalize(i.worldNormal);
            d.worldSpaceTangent.xyz = normalize(i.worldTangent.xyz);

            d.tangentSign = i.worldTangent.w * unity_WorldTransformParams.w;
            float3 bitangent = cross(d.worldSpaceTangent.xyz, d.worldSpaceNormal) * d.tangentSign;
           
            d.TBNMatrix = float3x3(d.worldSpaceTangent, -bitangent, d.worldSpaceNormal);
            d.worldSpaceViewDir = normalize(_WorldSpaceCameraPos - i.worldPos);

            d.tangentSpaceViewDir = mul(d.TBNMatrix, d.worldSpaceViewDir);
             d.texcoord0 = i.texcoord0;
             d.texcoord1 = i.texcoord1;
             d.texcoord2 = i.texcoord2;

            // #if %TEXCOORD3REQUIREKEY%
             d.texcoord3 = i.texcoord3;
            // #endif

            // d.isFrontFace = facing;
            // #if %VERTEXCOLORREQUIREKEY%
             d.vertexColor = i.vertexColor;
            // #endif

            // these rarely get used, so we back transform them. Usually will be stripped.
            #if _HDRP
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(GetCameraRelativePositionWS(i.worldPos), 1)).xyz;
            #else
                // d.localSpacePosition = mul(GetWorldToObjectMatrix(), float4(i.worldPos, 1)).xyz;
            #endif
            // d.localSpaceNormal = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldNormal));
            // d.localSpaceTangent = normalize(mul((float3x3)GetWorldToObjectMatrix(), i.worldTangent.xyz));

            // #if %SCREENPOSREQUIREKEY%
            // d.screenPos = i.screenPos;
            // d.screenUV = (i.screenPos.xy / i.screenPos.w);
            // #endif


            // #if %EXTRAV2F0REQUIREKEY%
            // d.extraV2F0 = i.extraV2F0;
            // #endif

            // #if %EXTRAV2F1REQUIREKEY%
            // d.extraV2F1 = i.extraV2F1;
            // #endif

            // #if %EXTRAV2F2REQUIREKEY%
            // d.extraV2F2 = i.extraV2F2;
            // #endif

            // #if %EXTRAV2F3REQUIREKEY%
            // d.extraV2F3 = i.extraV2F3;
            // #endif

            // #if %EXTRAV2F4REQUIREKEY%
            // d.extraV2F4 = i.extraV2F4;
            // #endif

            // #if %EXTRAV2F5REQUIREKEY%
            // d.extraV2F5 = i.extraV2F5;
            // #endif

            // #if %EXTRAV2F6REQUIREKEY%
            // d.extraV2F6 = i.extraV2F6;
            // #endif

            // #if %EXTRAV2F7REQUIREKEY%
            // d.extraV2F7 = i.extraV2F7;
            // #endif

            return d;
         }

#endif

         
         #if defined(_PASSSHADOW)
            float3 _LightDirection;
            float3 _LightPosition;
         #endif

         // vertex shader
         VertexToPixel Vert (VertexData v)
         {
           
           VertexToPixel o = (VertexToPixel)0;

           UNITY_SETUP_INSTANCE_ID(v);
           UNITY_TRANSFER_INSTANCE_ID(v, o);
           UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


#if !_TESSELLATION_ON
           ChainModifyVertex(v, o, _Time);
#endif

            o.texcoord0 = v.texcoord0;
            o.texcoord1 = v.texcoord1;
            o.texcoord2 = v.texcoord2;

           // #if %TEXCOORD3REQUIREKEY%
            o.texcoord3 = v.texcoord3;
           // #endif

           // #if %VERTEXCOLORREQUIREKEY%
            o.vertexColor = v.vertexColor;
           // #endif
           
           VertexPositionInputs vertexInput = GetVertexPositionInputs(v.vertex.xyz);
           o.worldPos = TransformObjectToWorld(v.vertex.xyz);
           o.worldNormal = TransformObjectToWorldNormal(v.normal);
           o.worldTangent = float4(TransformObjectToWorldDir(v.tangent.xyz), v.tangent.w);

          // For some very odd reason, in 2021.2, we can't use Unity's defines, but have to use our own..
          #if _PASSSHADOW
              #if _CASTING_PUNCTUAL_LIGHT_SHADOW
                 float3 lightDirectionWS = normalize(_LightPosition - o.worldPos);
              #else
                 float3 lightDirectionWS = _LightDirection;
              #endif
              // Define shadow pass specific clip position for Universal
              o.pos = TransformWorldToHClip(ApplyShadowBias(o.worldPos, o.worldNormal, lightDirectionWS));
              #if UNITY_REVERSED_Z
                  o.pos.z = min(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #else
                  o.pos.z = max(o.pos.z, UNITY_NEAR_CLIP_VALUE);
              #endif
          #elif _PASSMETA
              o.pos = MetaVertexPosition(float4(v.vertex.xyz, 0), v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
          #else
              o.pos = TransformWorldToHClip(o.worldPos);
          #endif

          // #if %SCREENPOSREQUIREKEY%
          // o.screenPos = ComputeScreenPos(o.pos, _ProjectionParams.x);
          // #endif

          #if _PASSFORWARD || _PASSGBUFFER
              float2 uv1 = v.texcoord1.xy;
              OUTPUT_LIGHTMAP_UV(uv1, unity_LightmapST, o.lightmapUV);
               o.texcoord1.xy = uv1;
              OUTPUT_SH(o.worldNormal, o.sh);
              #if defined(DYNAMICLIGHTMAP_ON)
                   o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
              #endif
          #endif

          #ifdef VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
              half fogFactor = 0;
              #if defined(_FOG_FRAGMENT)
                fogFactor = ComputeFogFactor(o.pos.z);
              #endif
              #if _BAKEDLIT
                 o.fogFactorAndVertexLight = half4(fogFactor, 0, 0, 0);
              #else
                 half3 vertexLight = VertexLighting(o.worldPos, o.worldNormal);
                 o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
              #endif
          #endif

          #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
             o.shadowCoord = GetShadowCoord(vertexInput);
          #endif

           return o;
         }


         

         // fragment shader
         void Frag (VertexToPixel IN
            , out half4 outNormalWS : SV_Target0
         #ifdef _WRITE_RENDERING_LAYERS
            , out float4 outRenderingLayers : SV_Target1
         #endif
            #ifdef _DEPTHOFFSET_ON
              , out float outputDepth : SV_Depth
            #endif
            #if NEED_FACING
               , bool facing : SV_IsFrontFace
            #endif
         )
         {
           UNITY_SETUP_INSTANCE_ID(IN);
           UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

           #if defined(LOD_FADE_CROSSFADE)
              LODFadeCrossFade(IN.pos);
           #endif

           ShaderData d = CreateShaderData(IN
                  #if NEED_FACING
                     , facing
                  #endif
               );
           Surface l = (Surface)0;

           #ifdef _DEPTHOFFSET_ON
              l.outputDepth = outputDepth;
           #endif

           l.Albedo = half3(0.5, 0.5, 0.5);
           l.Normal = float3(0,0,1);
           l.Occlusion = 1;
           l.Alpha = 1;

           ChainSurfaceFunction(l, d);

           #ifdef _DEPTHOFFSET_ON
              outputDepth = l.outputDepth;
           #endif

          #if defined(_GBUFFER_NORMALS_OCT)
              float3 normalWS = d.worldSpaceNormal;
              float2 octNormalWS = PackNormalOctQuadEncode(normalWS);           // values between [-1, +1], must use fp32 on some platforms
              float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);   // values between [ 0,  1]
              half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);      // values between [ 0,  1]
              outNormalWS = half4(packedNormalWS, 0.0);
          #else
              float3 wsn = l.Normal;
              #if !_WORLDSPACENORMAL
                wsn = TangentToWorldSpace(d, l.Normal);
              #endif
              outNormalWS = half4(NormalizeNormalPerPixel(wsn), 0.0);
          #endif

          #ifdef _WRITE_RENDERING_LAYERS
            uint renderingLayers = GetMeshRenderingLayer();
            outRenderingLayers = float4(EncodeMeshRenderingLayer(renderingLayers), 0, 0, 0);
          #endif

         
         }

         ENDHLSL

      }


      


      

   }
   
   
   CustomEditor "AllIn1SpriteShaderLitMaterialInspector"
}
